# -*- coding: iso-8859-1 -*-
# Copyright � 2002-2008, The AROS Development Team. All rights reserved.
# $Id$

import os, sys, shutil, glob

import db.credits.parse
import db.credits.format.rest
import db.tasks.parse
import db.tasks.format.html

from docutils.core import Publisher
from docutils.io import NullOutput

from build.utility import *
from build.thumbnail import *

from template.www import makeTemplates
from template.www.gallery import *

# Setup
SRCROOT    = os.path.abspath( '.' )
DSTROOT    = os.path.abspath( '../bin/documentation' )

TEMPLATE   = 'targets/www/template.html.'

TEMPLATE_DATA = {}

# Languages not supported by docutils yet (but that we have files written in):
# 'no'
LANGUAGES  = [ 'en', 'de', 'cs', 'el', 'es', 'fi', 'fr', 'it', 'nl', 'pl', 'pt', 'ru', 'sv' ]

# FIXME: Move this somewhere else...
if (not os.path.exists( 'credits.en' ) ) \
    or (os.path.getmtime( 'db/credits' ) > os.path.getmtime( 'credits.en' )):
    CREDITS_DATA = db.credits.format.rest.format( 
        db.credits.parse.parse( file( 'db/credits', 'r' ) )
    )
    file( 'credits.en', 'w' ).write( CREDITS_DATA )


# altLang
# -------
# Returns the translation of the specified file into the specified language,
# if it exists. Otherwise, returns the specified file name unmodified.

def altLang( file, lang, path='.' ):
    altFile = os.path.splitext( file )[0] + '.' + lang
    if os.path.exists( os.path.join( path, altFile ) ):
        file = altFile
    return file


def recurse( function, path='.', depth=0 ):
    for name in os.listdir( path ):
        name = os.path.join( path, name )

        if not ignore( name ):
            if os.path.isdir( name ):
                recurse( function, name, depth + 1 )
            else:
                function( name, depth )


def processPicture( src, depth ):
    FORMATS = [ 'jpg', 'jpeg', 'png' ]

    extension  = os.path.splitext( src )[1][1:]
    if extension not in FORMATS: return

    src     = os.path.normpath( src )
    dst_abs = os.path.normpath( os.path.join( DSTROOT, src ) )
    src_abs = os.path.normpath( os.path.join( SRCROOT, src ) )
    dst_dir = os.path.dirname( dst_abs )

    tn_dst     = makeThumbnailPath( src )
    tn_dst_abs = os.path.normpath( os.path.join( DSTROOT, tn_dst ) )
    tn_dst_dir = os.path.dirname( tn_dst_abs )

    # Make sure the destination directories exist.
    makedir( dst_dir )
    makedir( tn_dst_dir )

    # Copy the original image over.
    copy( src_abs, dst_abs )

    # Create the thumbnail.
    if newer( [ src_abs ], tn_dst_abs ):
        print '� Thumbnailing', src
        makeThumbnail( src_abs, tn_dst_abs, (200, 200) )


# makePictures
# ------------
# Creates picture galleries.

def makePictures():
    DIRECTORIES = [ 
        'pictures/developers', 
        'pictures/developers-together', 
        'pictures/screenshots' 
    ]

    options = [ '--report=none' ]

    # First, copy the pictures and generate thumbnails
    for root in DIRECTORIES:
        recurse( processPicture, root )

    # Second, create the galleries
    for root in DIRECTORIES:
        for lang in LANGUAGES:
            output = convertWWW( altLang( os.path.join( root, 'index.en' ), lang ), lang, options )

            names = os.listdir( root )
            names.sort()
            if root == 'pictures/screenshots':
                names.reverse()

            for name in names:
                path = os.path.join( root, name )
                if name == '.svn' or not os.path.isdir( path ): continue

                output += '<a name=%s>\n' % name
                output += convertWWW( altLang( os.path.join( path, 'overview.en'), lang ), lang, options )

                for pictureName in os.listdir( path ):
                    picturePath = os.path.join( path, pictureName )
                    pictureFormat = os.path.splitext( pictureName )[1][1:]
                    if pictureName == '.svn' or os.path.isdir( picturePath ): continue
                    if pictureFormat not in [ 'jpg', 'jpeg', 'png' ]: continue

                    output += makePicture( 
                        picturePath,
                        convertWWW( altLang(os.path.splitext( picturePath )[0] + '.en', lang), lang, options ),
                        lang
                    )

                output += '</a>'

            if lang == 'en':
                strings = {
                    'ROOT'    : '../../',
                    'BASE'    : '../../',
                    'CONTENT' : output
                }
            else:
                strings = {
                    'ROOT'    : '../../../',
                    'BASE'    : '../../../',
                    'CONTENT' : output
                }

            filename = 'index.php'
            if lang == 'en':
                dst = os.path.join( DSTROOT, root )
            else:
                dst = os.path.join( DSTROOT, lang, root )
            if not os.path.exists( dst ):
                makedir( dst )
            file( 
		os.path.join( dst, filename ), 'w'
	    ).write( TEMPLATE_DATA[lang] % strings )


# makeStatus
# ----------
# Creates graphs of component implementation status.

def makeStatus():
    tasks  = db.tasks.parse.parse( file( 'db/tasks', 'r' ) )
    for lang in LANGUAGES:
        dstdir = 'introduction/status'
        if lang == 'en':
            dstdir = os.path.join( DSTROOT, dstdir )
        else:
            dstdir = os.path.join( DSTROOT, lang, dstdir )
        makedir( dstdir )
        db.tasks.format.html.format( tasks, dstdir, TEMPLATE_DATA[lang], lang )


# makeNews
# --------
# Creates ReST files for current and archived news.

def makeNews():
    NEWS_SRC_DIR = os.path.join( SRCROOT, 'news/data' )
    NEWS_DST_DIR = os.path.join( SRCROOT, 'news/data' )

    news     = {}
    archives = {}

    # Get list of news and archive items for each language
    for lang in LANGUAGES:
        news[lang] = []
        archives[lang] = {}
    for filename in os.listdir( NEWS_SRC_DIR ):
        date = filename[:-3]
        year = date[:4]
        if filename[-2:] == 'en' and len( date ) == 8 and date.isdigit():
            for lang in LANGUAGES:
                lang_filename = altLang( filename, lang, NEWS_SRC_DIR)

                news[lang].append( os.path.join( NEWS_SRC_DIR, lang_filename ) )

                if not archives[lang].has_key( year ):
                    archives[lang][year] = list()

                archives[lang][year].append( os.path.join( NEWS_SRC_DIR, lang_filename ) )

    # Generate news and archive ReST files
    for lang in LANGUAGES:
        news[lang].sort()
        news[lang].reverse()
        current = news[lang][:5]
        _dst = os.path.join( SRCROOT, 'news/index.' + lang )

        if newer( current, _dst ):
            output  = file( _dst, 'w' )
            output.write( 'News\n====\n\n' )
            for filename in current:
                output.write( '.. raw:: html\n\n   <a name="%s">\n' % filename[-11:-3])
                output.write( '.. include:: %s\n' % filename )
                output.write( '.. raw:: html\n\n   </a>\n\n\n')
            output.close()

        for year in archives[lang].keys():
            archives[lang][year].sort()
            archives[lang][year].reverse()
            _dst = os.path.join( SRCROOT, 'news/archive/' + year + '.' + lang )

            if newer( archives[lang][year], _dst ):
                output = file( _dst, 'w' )
                output.write( 'News archive for ' + year + '\n=====================\n\n' )
                for filename in archives[lang][year]:
                    output.write( '.. raw:: html\n\n   <a name="%s">\n' % filename[-11:-3])
                    output.write( '.. include:: %s\n' % filename )
                    output.write( '.. raw:: html\n\n   </a>\n\n\n')
                output.close()


# convertWWW
# ----------
# Converts a source file into an HTML string.

def convertWWW( src, language, options=None ):
    if language == 'el':
        encoding = 'iso-8859-7'
    elif language == 'pl':
        encoding = 'iso-8859-2'
    elif language == 'ru':
        encoding = 'windows-1251'
    elif language == 'cs':
        encoding = 'iso-8859-2'
    else:
        encoding = 'iso-8859-15'

    arguments = [
        '--no-generator',   '--language=' + language,
        '--no-source-link', '--no-datestamp',
        '--input-encoding=' + encoding,
        '--output-encoding=' + encoding,
        '--target-suffix=' + 'php',
        src, '' ]

    if options:
        for option in options:
            arguments.insert( 0, option )

    publisher = Publisher( destination_class = NullOutput )
    publisher.set_reader( 'standalone', None, 'restructuredtext' )
    publisher.set_writer( 'html' )
    publisher.publish( argv = arguments )

    return ''.join(
        publisher.writer.body_pre_docinfo +
        publisher.writer.body
    ).encode( encoding )


# processWWW
# ----------
# If src is an English source file, builds the corresponding web page for
# every supported language, using the translated source files. If a
# translation is unavailable for a particular language, the English version
# is used, but with the translated template. If src is not an English source
# file, nothing is done.

def processWWW( src, depth ):
    src     = os.path.normpath( src )

    prefix = os.path.splitext( src )[0]
    suffix = os.path.splitext( src )[1][1:]
    if suffix != 'en': return

    for lang in LANGUAGES:
        if lang == 'en':
            dst = prefix + '.php'
            dst_depth = depth
        else:
            dst = lang + '/' + prefix + '.php'
            dst_depth = depth + 1
        src = altLang( prefix + '.en', lang )
        dst_abs = os.path.normpath( os.path.join( DSTROOT, dst ) )
        src_abs = os.path.normpath( os.path.join( SRCROOT, src ) )
        dst_dir = os.path.dirname( dst_abs )

        makedir( dst_dir )

        if newer( [ TEMPLATE + lang, src_abs ], dst_abs ):
            reportBuilding( dst )
            strings = {
                'ROOT'    : '../' * dst_depth,
                'BASE'    : '../' * dst_depth,
                'CONTENT' : convertWWW( src_abs, lang )
            }
            file( dst_abs, 'w').write( TEMPLATE_DATA[lang] % strings )
        else:
            reportSkipping( dst )


def processHTML( src, depth ):
    src    = os.path.normpath( src )

    prefix = os.path.splitext( src )[0]
    suffix = os.path.splitext( src )[1][1:]
    if suffix != 'en': return

    dst     = prefix + '.html' #.' + suffix
    dst_abs = os.path.normpath( os.path.join( DSTROOT, dst ) )
    src_abs = os.path.normpath( os.path.join( SRCROOT, src ) )
    dst_dir = os.path.dirname( dst_abs )

    makedir( dst_dir )

    if newer( [ src_abs ], dst_abs ):
        reportBuilding( src )
        arguments = [
            '--no-generator',   '--language=' + suffix,
            '--no-source-link', '--no-datestamp',
            '--output-encoding=iso-8859-15',
            '--target-suffix=html',
            '--stylesheet=' + '../' * depth + 'aros.css',
            '--link-stylesheet',
            src_abs, dst_abs
        ]

        publisher = Publisher()
        publisher.set_reader( 'standalone', None, 'restructuredtext' )
        publisher.set_writer( 'html' )
        publisher.publish( argv = arguments )
    else:
        reportSkipping( dst )


def copyImages():
    imagepath = 'documentation/developers/ui/images'
    dstpath   = os.path.join( DSTROOT, imagepath )
    srcpath   = imagepath
    
    makedir( dstpath )
    
    copy(
        [
            os.path.join( srcpath, 'windows-prefs-titlebar.png' ),
            os.path.join( srcpath, 'windows-prefs-buttons.png' )
        ],
        dstpath
    )
    
    imagepath = 'documentation/developers/zune/images'
    dstpath   = os.path.join( DSTROOT, imagepath )
    srcpath   = imagepath
    
    makedir( dstpath )
    
    copy(
        [
            os.path.join( srcpath, 'hello.png' )
        ],
        dstpath
    )

    imagepath = 'images'
    dstpath   = os.path.join( DSTROOT, imagepath )
    srcpath   = imagepath
    
    makedir( dstpath )

    copy(
        [
            os.path.join( srcpath, 'aros-banner.gif' ),
            os.path.join( srcpath, 'aros-banner2.png' ),
            os.path.join( srcpath, 'aros-banner-blue.png' ),
            os.path.join( srcpath, 'aros-banner-pb2.png' ),
            os.path.join( srcpath, 'aros-banner-peta.png' ),
            os.path.join( srcpath, 'aros-sigbar-user.png' ),
            os.path.join( srcpath, 'aros-sigbar-coder.png' ),
            os.path.join( srcpath, 'genesi.gif' ),
            os.path.join( srcpath, 'trustec.png' ),
            os.path.join( srcpath, 'sourceforge.png' ),
            os.path.join( srcpath, 'phoenix.jpeg' ),
            os.path.join( srcpath, 'bttr.jpeg' )
        ],
        dstpath
    )
            

def copySamples():
    #TODO recursion
    samplepath = 'documentation/developers/samplecode'
    dstpath   = os.path.join( DSTROOT, samplepath )
    srcpath   = samplepath
    makedir( dstpath )

    files = os.listdir(srcpath)
    for docfile in files:
        srcfile = os.path.join(srcpath, docfile)
        if os.path.isfile( srcfile ):
            copy( srcfile, dstpath)


def buildClean():
    shutil.rmtree( DSTROOT, True )

    filenames = glob.glob( 'credits.??' ) \
        + glob.glob( 'news/index.??' ) \
        + glob.glob( 'news/archive/20[0-9][0-9].??' )
    for filename in filenames:
        remove( filename )


def buildWWW():
    global DSTROOT ; DSTROOT = os.path.join( DSTROOT, 'www' )

    # Hack to get around dependency problems
    for lang in LANGUAGES:
        if lang == 'en':
            filename = 'index.php'
        else:
            filename = os.path.join( lang, 'index.php' )
        remove( os.path.join( DSTROOT, filename ) )

    makeNews()
    makeTemplates()

    for lang in LANGUAGES:
        TEMPLATE_DATA[lang] = file( TEMPLATE + lang, 'r' ).read()

    makePictures()
    makeStatus()

    recurse( processWWW )

    copy( 'license.html', DSTROOT )

    imagepath = os.path.join( DSTROOT, 'images' )
    makedir( imagepath )

    copy(
        [
            'targets/www/images/trustec-small.png',
            'targets/www/images/genesi-small.gif',
            'targets/www/images/noeupatents-small.png',
            'targets/www/images/bullet.gif',
            'targets/www/images/toplogomenu.png',
	    'targets/www/images/toplogomenu.gif',
            'targets/www/images/kittymascot.png',
	    'targets/www/images/kittymascot.gif',
            'targets/www/images/backgroundtop.png',
            'targets/www/images/disk.png',
            'targets/www/images/arosthubmain.png',
	    'targets/www/images/bgcolormain.png',
            'targets/www/images/mainpagespacer.png',
            'targets/www/images/rsfeed.gif',
            'targets/www/images/sidespacer.png',
            'targets/www/images/textdocu.gif',
	    'targets/www/images/archivedownloadicon.gif',
	    'targets/www/images/archivedownloadicon.png',
	    'targets/www/images/bgcolorright.png',
	    'targets/www/images/bountyicon1.gif',
	    'targets/www/images/bountyicon1.png',
	    'targets/www/images/bountyicon2.gif',
	    'targets/www/images/bountyicon2.png',
            'targets/www/images/communityicon.gif',
            'targets/www/images/communityicon.png',
            'targets/www/images/directdownloadicon.gif',
            'targets/www/images/directdownloadicon.png',
            'targets/www/images/czechlogo.png',
            'targets/www/images/englishlogo.png',
            'targets/www/images/finlandlogo.png',
            'targets/www/images/francelogo.png',
            'targets/www/images/germanylogo.png',
            'targets/www/images/greecelogo.png',
            'targets/www/images/italylogo.png',
            'targets/www/images/netherlandslogo.png',
            'targets/www/images/polandlogo.png',
            'targets/www/images/portugallogo.png',
            'targets/www/images/rssicon1.gif',
            'targets/www/images/rssicon1.png',
            'targets/www/images/russialogo.png',
            'targets/www/images/swedenlogo.png',
            'targets/www/images/spanishlogo.png',            
            'targets/www/images/pointer.png'
        ],
        imagepath
    )

    copyImages()
    copySamples()

    copy( 'targets/www/docutils.css', DSTROOT )
    copy( 'targets/www/aros.css', DSTROOT )

    dbpath = os.path.join( DSTROOT, 'db' )
    makedir( dbpath )
    copy( 'db/quotes', dbpath )

    makedir( os.path.join( dbpath, 'download-descriptions' ) )
    for lang in LANGUAGES:
        desc_file = os.path.join( 'db/download-descriptions', lang )
        if os.path.exists( desc_file ):
            copy( desc_file, os.path.join( dbpath, 'download-descriptions' ) )

    cgi_dest = os.path.join( DSTROOT, 'cgi-bin' )
    if os.path.exists( cgi_dest ):
        shutil.rmtree( cgi_dest )
    shutil.copytree( 'targets/www/cgi-bin', cgi_dest )

    thub_dest = os.path.join( DSTROOT, 'images/thubs' )
    if os.path.exists( thub_dest ):
       shutil.rmtree ( thub_dest )
    shutil.copytree( 'targets/www/images/thubs', thub_dest )


    rsfeed_dest = os.path.join( DSTROOT, 'rsfeed' )
    if os.path.exists( rsfeed_dest ):
       shutil.rmtree ( rsfeed_dest )
    shutil.copytree( 'targets/www/rsfeed', rsfeed_dest )   

    toolpath = os.path.join( DSTROOT, 'tools' )
    makedir( toolpath )

    copy( 
        [ 
            'targets/www/tools/password.html',
            'targets/www/tools/password.php', 
            'targets/www/tools/redirect.php' 
        ], 
        toolpath 
    )

    # Remove index-offline.php
    remove( os.path.join( DSTROOT, 'index-offline.php' ) )

    os.system( 'chmod -R go+r %s' % DSTROOT )


def buildHTML():
    global DSTROOT ; DSTROOT = os.path.join( DSTROOT, 'html' )

    if not os.path.exists( 'news/index.en' ):
        file( 'news/index.en', 'w' ).write( '' )
    recurse( processHTML )

    copyImages()
    copySamples()

    copy( 'targets/www/docutils.css', DSTROOT )
    copy( 'targets/www/aros.css', DSTROOT )

    copy( 'license.html', DSTROOT )

    # Use index-offline as index
    remove( os.path.join( DSTROOT, 'index.html' ) )
    os.rename( os.path.join( DSTROOT, 'index-offline.html' ), os.path.join( DSTROOT, 'index.html' ) )

    os.system( 'chmod -R go+r %s' % DSTROOT )


targets = {
    'clean': buildClean,
    'www':   buildWWW,
    'html':  buildHTML
}


# Usage: build [target [language]]
# Target is  www, html, or clean.
# A language may only be specified for the www target. If a language is
# specified, only that language is built. If no language is specified, all
# languages are built.

if __name__ == '__main__':
    target = 'www' # Set default target
    if len( sys.argv ) > 1:
        target = sys.argv[1]
        if len( sys.argv ) > 2:
            if sys.argv[2] in LANGUAGES:
                LANGUAGES = [ sys.argv[2] ]
            else:
                print 'Error: Unsupported language, "' + sys.argv[2] + '".'
                LANGUAGES = []
    if targets.has_key( target ):
        targets[target]()
    else:
        print 'Error: No such target, "' + target + '".'

