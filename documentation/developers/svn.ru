=========================
������ � Subversion (SVN)
=========================

:Authors:   Aaron Digulla, Adam Chodorowski 
:Copyright: Copyright � 1995-2002, The AROS Development Team
:Version:   $Revision$
:Date:      $Date$
:Status:    Done.
:Abstract: 
    ��������� (Subversion ���, ������, SVN) - ��� ���������� �������� ������ 
    ������, �������� � ������. SVN ��������� ����������� � ��������� 
    ����������� ������� ���������� �����: ����� � ����� ���� ������� ���������, 
    ��� �� ����, ������ ���� ���� (��������� ������� ����), �������� ��������� 
    ���������, ���������� ��� ���������� ������ ������������� � ������ 
    ������.
    
    � ��������, �� ��� ��������� *�����������* ��������� ������ ������� ������
    ������������� � ����� ������ �������, �������� ������� ���� � ����� ��������
    ������ �������, �������� ����������� ��������� ����� ������ ����� ����� 
    ������� � ������������ ������ � ���� ������������ �� ����� ��������. 
    ����������, �� ���������� SVN � ������ ��� AROS.
    
.. Contents::


��������
========

�� ������� �������� ������� "�����������", ������������� ����� �������� ���� 
����������� ������ �������. ������ �� ������������� ����� ���� "������� �����",
�� ����, ��������� ����� ���� � ���������� � ���������� ������� � �����������, ���������� ����� �������������, �� ��� �� ����������� � ���� �� �������. ����
����������� ������ ������ ��������� ����� ������ � "����� ����", ��  ������ 
(commit) ���� ��������� �� ������ � ������� ���������� ��������� SVN, ������� ����� �� ���� ������ �� �������� ������ �� ������ � ����������� �� � ����������� �� ������ �������������.
� ����������...

����������� �����������
=======================

UNIX
----

If you are running Linux, FreeBSD or any other modern UNIX clone then you 
simply need to install the official SVN software, version 1.0 or higher, for 
your OS. All common Linux distributions come with SVN packaged.

.. Note:: The server runs Subversion 1.1 which can be accessed by a
          client with the version 1.0, 1.1 or 1.2.

SVN doesn't work with UTF-8 localisation. You have to switch the locale to ISO8859
before any SVN action.

AmigaOS
-------

If you are running AmigaOS, you will need a TCP/IP stack and some SVN port
installed. One option is the Amiga port by Olaf Barthel which can be found
on AmiNET__ (search for "subversion").

__ http://main.aminet.net/

������ � �������
================

Unlike CVS, you don't need to login into the server. Instead, SVN will
ask when it needs to know your login and password.

.. Note:: 

    The AROS repository is running on a password protected SVN server, which
    means that you need to `apply for access to it`__ to be able to collaborate
    in the development. At the request of Amiga Inc., anonymous read-only access
    to the repository has been disabled.
          
__ contribute#joining-the-team


��������� ���������� AROS 
=========================

To get a copy of the AROS sources you use the "checkout" command, like this::

    > svn checkout https://svn.aros.org:8080/svn/aros/trunk/AROS

This will create a directory called AROS and populate it with all the sources,
which might take quite some time if you have a slow network connection.
The "contrib" module contains third party programs that have been ported to AROS.
You have to checkout it in order to build all AROS flavours::

    > cd AROS
    > svn checkout https://svn.aros.org:8080/svn/aros/trunk/contrib

.. Tip:: 

    After the checkout, SVN will remember where the source came from.


��������� ��������������� ��������� ����
========================================

Apart from the AROS main sources which we checked out in the previous section,
there is also other things on the SVN server not directly related to the core
of the operating system. For example, the "binaries" module which
contains images like screenshots, backdrops and similar, and the
"documentation" module which contains the sources to the website.

You can get a list of the available modules with::

    > svn ls https://svn.aros.org:8080/svn/aros/trunk/

���������� ����������
======================

After having checked out the sources, you might want to periodically update 
them to get the latest changes the other developers have committed. For this
you use the "update" command::

    > cd AROS
    > svn update
    
This will merge any changes that other developers have made into your sources 
and also check out new directories and files that have been added. If someone
committed changes to a file that you also have changed locally, SVN will try 
to merge the changes automatically. If both of you changed the same lines SVN
might fail in merging the sources. When this happens, SVN will complain and put
**both** versions in the file separated by ``<<<<`` You need to edit the file
and resolve the conflict manually.

.. Warning:: 

    Just because SVN successfully merged the other developers changes with your
    doesn't mean everything is fine. SVN only cares about the *textual* content;
    there could still be *logical* conflicts after the merge (eg. the other
    developer might have changed the semantics of some function that you use in
    your changes). You should always inspect files that were merged and see if
    it still makes sense.


�������� ���������
==================

If you have made some changes and feel that you want to share your work with 
the other developers, you should use the "commit" command::

    > svn commit

You can specify a list of files to commit; otherwise SVN will recurse down from 
the current directory and find all files you have changed and commit them. 
Before sending your changes to the server for incorporation, SVN will ask you 
to input a log message. This log message should contain a brief description of
what you have changed and in certain cases a rationale for them. Well written 
log messages are very important, since they make it much easier for the other 
developers quickly can see what you have done and perhaps why. The log messages
are collected and then sent in a daily mail to the development mailing list so
everyone can keep up with developments to the code base.

Before committing your changes in a directory, you should first do an update
there to see if anyone else has changed the files in the meantime you've been
working on them. In case that happens, you need to resolve any problems before
committing. Also please make sure you have tested your changes before committing
them; at least so that they do not break the build.

���������� ����� ������ � ����������
====================================

To add new files and directories to the repository, use the "add" command::

    > svn add file.c
    > svn add dir

SVN will not automatically recurse into newly added directories and add the 
contents; you have to do that yourself. After having added the file, you need
to use the "commit" command to actually add them to the repository. 


������
======

When you want to add a larger collection of files, eg. the source code of some
existing software, "svn add" quickly becomes tiresome. For this you should use 
the "svn import" command. Unfortunately, the section about the import command 
in the SVN manual is quite poorly written, so an example is in order:

1. Put the files and directories you want to import wherever you like, as long
   as it is **not** inside your working copy. Running the "import" command on
   a directory situated inside an existing SVN working copy can lead to very
   strange results, so it's best to avoid that.

2. Change to the directory containing the files you wish to import::

       > cd name-1.2.3

3. Import the files with the "svn import" command::

       > svn import -m <logMessage> <destinationPath>

   This will recursively import all files from the current directory and below
   into the repository, into the destination path and with the log message 
   you've specified. Actually, not *all* files will be added: SVN will ignore
   filenames that are common for backup and hidden files, like ``#?.bak``,
   ``.#?`` and ``#?~``.

   Nontheless, you should remove all files which you don't want to end up
   in the repository before you start the import. Don't try to interrupt
   SVN during the import when you see a file being added that you don't want,
   though. Just make a note and then delete the file afterwards.
   
   For example, say that you wanted to import the SVN 1.1.3 sources into 
   the "contrib/development/versioning/svn" directory::

      > cd subversion-1.1.3
      > svn import -m "Initial import of SVN 1.11.12" 
      \ https://svn.aros.org:8080/svn/aros/trunk/contrib/development/versioning/svn

�������������� ������������
===========================

More detailed information about SVN can of course be found in the manual pages
and info files distributed with SVN itself, and there are also numerous sites
containing useful tutorials and guides which might be more easy to read.
The following pages are highly recommended:

+ `Version Control with Subversion`_
+ `Subversion Home`_

.. _`Version Control with Subversion`: http://svnbook.red-bean.com/
.. _`Subversion Home`:               http://subversion.tigris.org/

