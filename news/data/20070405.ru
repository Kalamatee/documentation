===========
����������!
===========

:�����:   Paolo Besser
:����:     2007-04-05

"��������" Wanderer
-------------------

��� ������ ������ ��� � ����� ������ ��������� ���������� AROS. 
���������� ���� Darius Brewka � Georg Steger - ����� ������� ��������� -
�������� ������������ ������������� � �������� ����� ����������. 
��� ������� ����������� ����� ICE �� Damir Sijakovic, �������������� ������
� �������� ����� ��������� �� ��������� � ������ �������. �������
��� ������� �� ���������(`� ����� ���������`__):

.. image:: /images/20070405.jpeg
   :alt: AROS decorated desktop
   :align: center

�������? ����� ���, �� ���������� ������ ��� ������� ����� AROS,
�������� ������� � ����� "��������" � �������� �� ���. ���, ����� ����
����������, ��������� ���� (�����, ��� ���� �������� �����, ������ ������,
�������� ���������� � ������) ����� ������� � ��������������. ����� ��������� 
���������� �� ������ �� `AROS-Exec`__.


����������� �������
-------------------

Michal Schulz �������� ��� ��������� ��������� ��� ������ USB-�����.
�� ��� ����������� ��������� ������, ������� ������ �������� ������ ������
(����� ������������ �������, ������ ���������� ���� �� ��������). ����������,
������, ��� USB-���� AROS ���� ��������� ������ � UHCI USB-�������������.

�������� ������� SFS ������ ������������� ������������ � ������ ������. 
��� �������� ������������� ������� ����� ������ ����������� � ������������
������� � SFS. ����� ����� ��������� ������� ��������������, ������� ���������
��������� �������� ������. ��� ����, ����� ��������������� ������ � SFS, 
���������� ������ ������� ��� ��� ������ HDToolBox, ������� ��� ��� �� SFS,
� ��������� � �������� ��������� �������:

  FORMAT DRIVE=DH1: NAME=MyVolume

������, ����������, ��� ������� ������ GRUB �� ������ ��������� AROS �
������� SFS. ������� ������� ������� ��������� ������ FFS (EXT3/FAT) ���
������ ���� � ����������, ����� GRUB ���� �������� � ����.

Pavel is also working on a new CD filesystem called CDVDFS, which 
currently supports CD and DVD with joliet extensions. It will be 
put into nightlies as soon as some bugs are fixed.

Matthias Rustler has updated AROS LUA to version 5.1.2. `here`__ 
is a list of fixed bugs. Matthias has also created a new 
DepthMenu commodity. When the user right-clicks on the depth 
gadget, it opens a popup menu with all open windows, allowing 
a faster selection.

Staf Verhaegen has improved support for ARexx/Regina scripts. 
There is a new rx command in AROS, waiting to execute all your 
ARexx scripts.

Thanks to Bernd Roesch, ZUNE can now use MUI4 images (.mim files). 
Pavel Fedin has fixed crash in pendisplay class when there's no 
free pens on the screen. Some new Gorilla Icons had been added 
by Paolo Besser.


__ http://aros-exec.org/modules/xcgal/displayimage.php?pid=239
__ http://aros-exec.org/modules/news/article.php?storyid=227
__ http://www.lua.org/bugs.html#5.1.1
