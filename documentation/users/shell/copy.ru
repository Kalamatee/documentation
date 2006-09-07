====
Copy
====

.. This document is automatically generated. Don't edit it!

`Index <index>`_ `Prev <changetaskpri>`_ `Next <date>`_ 

---------------

::

 Copy 

������
~~~~~~
::


     FROM/M, TO, ALL/S, QUIET/S, BUF=BUFFER/K/N, CLONE/S, DATES/S, NOPRO/S,
     COM=COMMENT/S, NOREQ/S,

     PAT=PATTERN/K, DIRECT/S,SILENT/S, ERRWARN/S, MAKEDIR/S, MOVE/S,
     DELETE/S, HARD=HARDLINK/S, SOFT=SOFTLINK/S, FOLNK=FORCELINK/S,
     FODEL=FORCEDELETE/S, FOOVR=FORCEOVERWRITE/S, DONTOVR=DONTOVERWRITE/S,
     FORCE/S


������������
~~~~~~~~~~~~
::


     Workbench:C


�������
~~~~~~~
::


     ������ ���������� ����� ������ ��� ���������� ������


����
~~~~
::


     FROM      --  ��������� ������� ������
     TO        --  �������� ����� ��� ����������
     ALL       --  ������������ �������������
     QUIET     --  �� �������� ������� �������� ��� ��������
     BUFFER    --  ������ ������ ��� ����������� � ������ �� 512 ����
                   (�� ��������� 1024 (= 512K))
     CLONE     --  ����� ���������� �����������, �������� ������ � ����
     DATES     --  ���������� ���� ������
     NOPRO     --  �� ���������� �������� ������ ������
     COMMENT   --  ���������� ����������� ������
     NOREQ     --  �� �������� �������

     PATTERN   --  a pattern the filenames must match
     DIRECT    --  ������ �����������, ������� ������ � ��������
     VERBOSE   --  �������� ������ ����������
     ERRWARN   --  ��� ������ ����������� ������ ���� ���������� �����������
     MAKEDIR   --  ������������ ����������
     MOVE      --  ����� ��������� ����������� ������� �������� �����
     DELETE    --  �� ����������, � ������� �������� �����
     HARDLINK  --  ������ hardlink �� �������� ���� ������ �����������
     SOFTLINK  --  ������ softlink �� �������� ���� ������ �����������
     FOLNK     --  ��������� ������ ����� �� ����������
     FODEL     --  ����� ������� � ���������� �����
     FOOVR     --  ����� ������������ � ���������� �����
     DONTOVR   --  �� �������������� ����� ����������
     FORCE     --  �� ������������. ��������� ��� �������������.


 ����� ��������� ��������:

 FROM:
 �������� ����(�). ��� ��������� ���������� ��� ����� � ��� ��������� ���������.
 May have standard patterns.

 TO:
 ���� ����������, ���, ��� ���������� �������� ������, ���������� ����������.
 ���������� ���������� ��������� ������ ��� �������������.
 
 ALL:
 �����������(�����������) ��������� ����������

 QUIET:
 ������� ������ ��� ���������, ������� � ������� ��� ������������� ������,  
 � ��� ������ ��������� � ���������!

 BUF=BUFFER:
 ����� ������ ������� �� 512 ���� ��� �����������. �� ��������� �� 200
 [100�� ������]. ����������� ������ - ���� �����, �� ������������ ����� ��������
 ������.

 PAT=PATTERN:
 PATTERN ��������� ������ dos pattern, all file have to match.
 ������� ������ � ������ ALL.

 ������:
 ���� ���� ������� ��� ����� .info files �� ���� ���������, ����� ������ �����:
 Copy DELETE #? ALL PAT #?.info

 CLONE:
 �����������, ���������� � ���� � �������� ������ ����� ����������� ������ � 
 ������� ��� ������������.
 
 DATES:
 ��������� ���������� �������� ������ ����� ������ ��� ��������.

 NOPRO:
 �������� ������ �������� ������ �� ����������, � ����� ������ �������� �� 
 ��������� [rwed]. 
 
 COM=COMMENT:
 ����������� ��������� ����� ���������� � ��������.

 NOREQ:
 ��� ��������� ������, ������� ����������� ������� DOS �� ������������.


 DIRECT:
 ������������ ���������� �� ��������� ������������ ��������� ������������ ���� 
 �������� ������� DOS. ��� ����� �������� ����� ������� �����������, �������� 
 �������� ����� � ����� ���������� �������� ���� ������ ��������.
 ����� ALL, PAT, CLONE, DATES, NOPRO, COM, MAKEDIR, MOVE, DELETE, HARD,
 SOFT, FOLNK, FODEL, FOOVR, DONTOVR � ������������� ������� ����� �� ����� 
 �������������� ������ � ���� ������. ��� ���� ����������� ������ ���� �������� 
 (� ��������) ����.
 ����� ��� ����� ������� � ������, ���� ��������� ������� ���������� (softlink) 
 ������, ����� �� ����������� �� �������������� ����.
 ������ �������������: 'Copy DIRECT text PRT:' �������� ���� ��� ��������� text.
 ����������� ����� ������� �������������� Copy �������������, �� �� �� ����� 
 ������ ����� ���� �������.
 
 VERBOSE:
 ����� �������������� ���������.

 ERRWARN:
 Copy ����� 3 ���� ������ dos.library:
 5   WARN    ������ ����������� ���������� �����, Copy ���������� ��� � 
             ���������� � ����������.
 10  ERROR   �� ������� ������� ����������, ��� ������ ����������� ������.
             Copy ��������� ����������.
 20  FAIL    ��-���������� ��������� ������ (���� ������, Examine failed, ...)
             Copy ��������� ����������.
 ��� ������� �����  ERRWARN, ������ � ����� 5 (WARN) ������ �������� �� 10 
 (ERROR). ��� ���� Copy ����������� ��� ����� ������.

 MAKEDIR:
 ��� ����� � ���� FROM ��������� ������������, �������� ���������� �������.

 MOVE:
 ����� �� ����������, � ������������ (��� �����������������). ��� ��������, ���
 ����� �����������, �������� ���� ��������� �������������.
 
 DELETE:
 ������ �� ����������, �� �������� ����� ����� �������!

 HARD=HARDLINK:
 ������ ����������� ������, �������� hard link. ��� ��������, ������ ���� 
 ���������� ���������� ��������� �� ����� ���������� � ��������.
 ��� ������� ����� ALL, ���������� ����������� �������������, ����� Copy ������
 ������ �� ����������.
 
 SOFT=SOFTLINK:
 Instead of copying directories, a soft link is created. These links are
 useable between different devices also. Soft links are only created for
 directories. Files are skipped here. Option FORCELINK is therefor always
 set to true.
 NOTE: Softlinks are not official supported by OS and may be dangerous.
 I suggest not to use this option! See description below.

 FOLNK=FORCELINK:
 When linking of directories should be possible, this option is needed. See
 section "About links" for possible problems.

 FODEL=FORCEDELETE:
 When this option is enabled, files are deleted also, when they are delete
 protected.

 FOOVR=FORCEOVERWRITE:
 When this option is enabled, files are overwritten also, when they are
 protected.

 DONTOVR=DONTOVERWRITE:
 This option prevents overwriting of destination files.



��. �����
~~~~~~~~~
::


     Delete, Rename, MakeDir, MakeLink


