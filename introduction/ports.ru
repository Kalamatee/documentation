==========
����� AROS
==========

:Authors:   Adam Chodorowski, Matthias Rustler 
:Copyright: Copyright � 1995-2006, The AROS Development Team
:Version:   $Revision$
:Date:      $Date$
:Status:    Done.

.. Contents::


��������
========

��� �����������, ��� AROS - ����������� ��, �������������, ��� �������� �� 
���������� ��������� ����������. "����" AROS - ���, ���������, � ���� ������ 
AROS, ������������� �� ������������ ���������.

���� (Flavors)
--------------

��� ����� ������� �� ��� ������ ����, ��� ���� (Flavors � ������������ AROS),
� ������ - �� "������" ("native") � "��������" ("hosted")
Ports are divided up into two major groups, or "flavors" in AROS terminology,
namely "native" and "hosted". 


Native-�����  �������� � ���������������� �������� � "�������" � ����� ������ 
������ � ����������. � �������, ��� ������ ����� ������������ �������� 
������������� AROS, ��������� ������������ ��������� ������������������ � 
�������������, ������, � ��������� ����� ��� ������������ ������� (�� ������� 
����, ����� �������� ��� ����������).

Hosted-����� �������� ��� ����������� ������ �� � �� ���������� � "������ 
��������", ��������� ����������� ��-�����. �� �������� ������������ - �������� 
����������, ��������� �������� ����� ������ �������� � ����������� ��������� � 
��. � ���� ��, ���� ��� AROS �� ������������ ���� ���� (���� ������ 
�������������� AROS ��� ��� �� �����), ��� ����������� �������� 
����������������, ��������� ��������� ��������� ����������� � ����� ����������, 
� "����������" ��, �� �������� � ���������� ������������� ������ ��� ����������� 
���������� ���������.

��������
--------

�������� ������ AROS ����� ��� <���������>-<���������>, ��� - <���������> - 
����������� ������������� ����������, � <���������> - ������������� �������� 
���������. ��������� ����� ���� ��� "��������" (� ������ native-������), ����� 
��� "pc" ��� "amiga", ��� �� (� ������ hosted-������), ����� ��� "linux" or
"freebsd". ��������, ��������� ������������ ������� AROS, ������� ������������
 � �������� ����������� ��������� - "AROS/", ��� ��� ��������, "AROS/i386-pc".

�������������
-------------

����������� ����� AROS �������� ��� ���� ������, ������� ���������� ���������, 
��� �����������, ��� ���������, ���������������� ��� "i386-pc" ����� �������� 
����� �� "i386-linux" � �� "i386-freebsd".


������������ �����
==================

���� �������� ������ ���� ������ AROS, ������������� ���������� ��� �����������
 � �������� ����������. ������, ��� ���������� �������� �� ���, ��������� ��� 
 ���� �� ��������� � ����������� ����, ���� ��������� ������� �� ������������� 
 �� ����������� ��� ������.

AROS/i386-pc
------------

:Flavour:    Native
:���������:  ��������, ��������� ��������� ���� ������������
:���������:  ����

AROS/i386-pc native-���� ������������ ��� ����� ��������� IBM PC AT-����������� 
�����������, ������� ���������� x86 �����������. �������� ��������� ���������,
 ��������� ������ ���� �������, �� ������� ����, 486 - ������������ ����������,
��������� ������������� ����������, ������������� � 386. 
(���������� ����������� - �� ���� ������, ��� ��-���� ���� �� Pentium).


���� ���� ������ ��������������, �� ���� ����� ������ ����� ������� ��������. 
����� �� ������������ ����������� �������� ��������� ��������� ������� ������ 
�� ������ nVidia and ATI. ��������� ������ ����������� ��������� ��������� 
������������ "������������" (��� ���������) VGA � VBE-����������. � ���������� 
��������� � ������ ��������, �� ������� ��� ������ ��������, ��������� 
������������� ��������� � ��� �������� 2.5 . ���� �������� ��� ����������.

AROS/m68k-pp
------------

:Flavour:    Native 
:���������:  �������� ��������������(� ���������), ���� ���������
:���������:  ����

AROS/m68k-pp - native-���� AROS �� ����� Palm-����������� ��� ("pp" ����� 
�������� "palm pilot", ��� ���������� ���-�������������� ���� �����). ��� 
������� �������, ��� �����-������ AROS ����� �������������� � ���� - � ����� 
��������� �������.

� ��������� ����� ���� ���� ������ "�����". � ����� � ����� �� �������������� 
(����������� � ���������, ����� ���� �� ��� �� ���� ��������� ���� ����������� 
�������), �� ��� ��� ��� �������� � ��������. ���� ����������� �������, �� ��
������� �������� ��������� �����. � ���������� ���� ����������.

AROS/i386-linux
---------------

:Flavour:   Hosted
:���������: ��������������
:���������: ����

AROS/i386-linux - hosted-���� AROS �� �� Linux [#]_ ��� ��������� ����������� x86.

��������� "������" ���������� ���� AROS, ��������� Linux ���� �������� ������� 
������ � �������������, � ���� ���� ����� �� ������� ��������� ��� ������. 
�������� ��� ����������.

AROS/i386-freebsd
-----------------

:Flavour:    Hosted
:���������: ��������������
:���������: ���� (5.x)

AROS/i386-freebsd - hosted-���� AROS �� �� FreeBSD ��� ��������� ����������� x86.

���� ���� ����� ������������ ��������, ��������� ����� ������� ����� ���� � 
AROS/i386-linux ������, ��, ����� ����� ������������ FreeBSD ����� ����� 
�������������, �� �� ������ �� ����. ��� ���������� ������� (snapshots) �� 
��������� ������������� ���, �� ��� ������ �� ������, ������� ���������� 
�������� ����� �� ���������.

AROS/ppc-linux
---------------

:Flavour:    Hosted
:���������: ���������������
:���������: ����

AROS/ppc-linux - hosted-���� AROS �� �� Linux ��� ��������� ����������� PPC.

������ ����� ������� � `Sourceforge`__.
��� ������ ���������� �������� ������ gcc3.4.3, diff ��� ������� ����� ����� � 
contrib/gnu/gcc.

__ http://sourceforge.net/project/showfiles.php?group_id=43586&package_id=194077

�� �����������
��� ��������� ��� �����
AROS/x86-windows - ���� ��� ��������� �������������. ������ ����������. �
��������� ����� ����������� ����������� ������ ������ - CoLinux+Cygwin+AROS hosted
AROS/68k-native (aka AfA, Aros for Amiga) - ���� � ����������, �������������� (?),
 � �������� ���� �� ������ ������, � ������, �������� ��������� AOS � AROS.


�������
=======

.. [#] ��, �� �����, ��� Linux �� ����� ���� ����� ���� ����, � �� �� � �����,   
       �� �� �� ������� ����� � ������ ������ ���, ������ "������������               
       �������, ���������� �� ���� Linux, ��������� ����������� ������������           
       GNU � ������� ������� X". ������, ��� ����������� �������� �������, ��         
       ��������� �������� ����� ��������� ����� ���������, �� �� �� ...
