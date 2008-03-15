==============
Compiling AROS
==============

:Authors:   + Flavio Stanchina
            + Henning Kiel
            + Bernardo Innocenti
            + Lennard voor den Dag
            + Aaron Digulla
            + Adam Chodorowski
:Copyright: Copyright � 2001-2003, The AROS Development Team
:Version:   $Revision$
:Date:      $Date$
:Status:    Done.
:Abstract:  
    Tento dokument vysv�tluje jak zkompilovat AROS. Development of AROS is 
    currently not self-hosted, which means that you cannot compile AROS from 
    inside AROS. To compile and develop for AROS, you will need a Linux or 
    FreeBSD system.


.. Contents::


Po�adavky
=========

Pro kompilaci AROS je pot�eba n�sleduj�c� software:

+ GCC 3.2.2+
+ GNU Binutils
+ GNU Make
+ GNU AWK (GAWK) - other awks may also be suitable
+ Python 2.2.1+
+ Bison
+ Flex
+ pngtopnm and ppmtoilbm (part of the netpbm package)
+ Autoconf
+ Automake
+ Common utilities like cp, mv, sort, uniq, head, ...

If you want to compile the hosted i386-linux or i386-freebsd ports, the 
following is also required:

+ X11 development headers and libraries


Zdroje
======

You can download the AROS sources either from the `download page`__ or by 
using SVN (which requires that you `apply for access`__ though). In the former
case, getting the ``source`` package is enough (unless you also want to 
compile the contrib programs). In the latter case, see `subversion documentation`__.

__ ../../download
__ ../../documentation/developers/contribute#the-svn-repository
__ ../../documentation/developers/svn


Building
========

Configuring
-----------

First of all, you need to run configure in the root of the AROS sources::

    > cd AROS
    > ./configure

You can specify several options to configure. The following options are 
available for all targets:

``--enable-debug=LIST [default: none]`` 
    Enable different types of debug. Commas or whitespaces can be used to 
    separate the items in the list. If no list is provided then ``all`` is 
    assumed. If ``--enable-debug`` is not specified at all, ``none`` is the
    default. Available types:
    
    ``none``
        Disables all debug types, and debugging in general.
    
    ``all``
        Enables all debug types below.
        
    ``stack``
        Enables stack debug.
        
    ``mungwall``
        Enables mungwall debug.
        
    ``modules``
        Enables modules debug.
    

Hosted AROS/i386-linux or AROS/i386-freebsd
"""""""""""""""""""""""""""""""""""""""""""

You do not have to specify the ``--target`` option to build these targets. 
The following options are available for hosted builds:

``--with-resolution=WIDTHxHEIGHTxDEPTH [default: 800x600x8]``
    Set the default resolution and depth AROS will use. 
    
``--enable-xshm-extension [default: enabled]``
    Enable usage of the X11 MIT-SHM extension. Enabling it gives a significant
    performance gain, but it might not work very well if you are using a 
    remote display.
    
You cannot crosscompile these ports.


Native AROS/i386-pc
"""""""""""""""""""

To build the i386-pc port, you need to pass ``--target=pc-i386`` to configure.
Additionally, the following i386-pc specific options are available:

``--with-serial-debug=N [default: disabled]``
    Enable serial debug, sending the output to port ``N``. 
    
You cannot crosscompile this port.


Compiling
---------

To start the compilation, simply run::

    > make

IF this doesn't work after a SVN update, you can try::

    > make clean
    > rm -rf bin/
    > ./configure {options}
    > make

If you use FreeBSD or some other system that does not use GNU Make as the
system make, then you should substitute the GNU Make command for the above.
For example, under FreeBSD you must install the GNU Make port, then run::

    > gmake


Hosted AROS/i386-linux or AROS/i386-freebsd
"""""""""""""""""""""""""""""""""""""""""""

If you are building a hosted i386-linux or i386-freebsd build, you should 
additionally also run the following to properly setup the keyboard support::

    > make default-x11keymaptable


Native AROS/i386-pc
"""""""""""""""""""

If you are building the native i386-pc port, you will find a bootable floppy
image at ``bin/pc-i386/gen/rom/boot/aros.bin`` after the compilation has 
finished. Additionally, you can create a bootable ISO image by running::

    > make bootiso-pc-i386

The ISO image can be found at ``bin/pc-i386/gen/rom/boot/aros.iso``.

Appendix
========

Building several targets from the same source
---------------------------------------------
   
If you intend to compile several different targets from one source tree, then 
you first have to go through the configuration step for each of your targets. 
You can add targets at any time you want. The last target specified to 
configure is the default target.

To select a specific target when building, simply run make like this::

    > AROS_TARGET_ARCH=$ARCH AROS_TARGET_CPU=$CPU make
    
Where ``$ARCH`` is the architecture of the wanted build, and ``$CPU`` is the 
CPU. Eg., to build AROS/i386-pc you would run::

    > AROS_TARGET_ARCH=pc AROS_TARGET_CPU=i386 make

If you are building several ports that use the same CPU, you only have to 
specify ``AROS_TARGET_ARCH`` as the CPU will stay the same. 

After you`ve made "make" once, and some changes were made to the files, you 
can use quick compilation of changes using make <target-name>-quick command. 

Compiling HowTo`s
-----------------

This step-by-step guide will describe how to prepare the development environment
and compile AROS on Ubuntu Linux 6.10 "Edgy Eft". Let`s assume you have a 
CD image (iso) from ubuntu sites and have installed the system from it. 
Also you should tune it to make it acessing the Internet. 
      
Getting the needed packages
"""""""""""""""""""""""""""

Because the Live CD misses needed packages we have to get them from internet::

    > sudo apt-get install subversion gcc-3.4 gawk bison flex netpbm autoconf automake1.4 libx11-dev

You will need to enter your user password at the prompt.

Setting the locale to ISO8859 
"""""""""""""""""""""""""""""

We will need to set the locale to use AROS sources and compile them
Just find the en_US iso 8859-1 string in list provided by the
following applications and choose it)::

     > sudo apt-get install localeconf
     > sudo dpkg-reconfigure localeconf

Then we will set the console`s locale::

     > sudo locale-gen "en_US"
     > sudo dpkg-reconfigure locales
     > export LANG="en_US.ISO-8859-1"

Installing make v. 3.80
"""""""""""""""""""""""

To install version of make we`re need, the additional Ubuntu
repositories must be added. Launch the console and run::

     > sudo nano /etc/apt/sources.list

Add those two lines there::

    deb http://us.archive.ubuntu.com/ubuntu breezy main restricted
    deb http://us.archive.ubuntu.com/ubuntu dapper main restricted
    (save and exit nano via "ctrl-x")

Now get the list of available programs updated::

     > sudo apt-get update

Now we will use the Synaptic package manager. Go launch it in menu::

    System > Administration > Synaptic package manager

After that search for "make" package, choose "make" in the 
right window and set version by ''package>force version..'' "3.80 (breezy)".



Get the sources 
"""""""""""""""

To find out more instruction on How to use our SVN Repository
please refer to `Working with Subversion <svn.php>`__

In brief, the commands you must use is like the following::

   > svn checkout https://svn.aros.org:8080/svn/aros/trunk/AROS
   > cd AROS
   > svn checkout https://svn.aros.org:8080/svn/aros/trunk/contrib


Configure and compile AROS sources
""""""""""""""""""""""""""""""""""

First we will set parameters and configure::

      > export CC="gcc-3.4"
      > ./configure

You might need to reopen console when ./confugure encounters problems with c
compiler.

Finally, type::

      > make

This shall take a while (up to some hours on slow machines) :) 
After that you will get AROS-hosted compiled. 
Please also note that you might need an internet access during the progress,
used to download latest EUAE sources. 
