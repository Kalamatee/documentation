==========================
������� �������� � AROS
==========================

:Authors:   Aaron Digulla, Stefan Rieken, Matt Parsons, Adam Chodorowski 
:Copyright: Copyright � 1995-2002, The AROS Development Team
:Version:   $Revision$
:Date:      $Date$
:Status:    Almost finished, I think...


.. Include:: index-abstract.en


���� �������
=====

������� ������� AROS �������� �������� ������������ ������� (��), ������� ��:

1. ����� �� ����������� ��������� ������������� � AmigaOS 3.1.

2. ����� ���� ����������� �� ��������������� ���� �������� � �����������, �����, ��� x86, PowerPC, Alpha, Sparc, HPPA and other.

3. ���� �� ���������� � Amiga �� ��������(��������) ������, � � ������ ���������� ������������ �� ������ ���������� 
Should be binary compatible on Amiga and source compatible on any
   other hardware.
  
4. �������� �������� ��� ��������������� ��, ����������� ��������������� � ������� �����, � ����� � ��������, �������� ���� �� ��������� ��-����� � ����� ���������� �� � ������� "������" � Amiga-���������� � ���� � �� �� �����.
Can run as a standalone version which boots directly from hard disk and
   as an emulation which opens a window on an existing OS to develop software
   and run Amiga and native applications at the same time.

5. ���� ������� � �������������, ��� AmigaOS.
Improves upon the functionality of AmigaOS.

��� ���������� ���� ����, �� ���������� ��� ������. ������ �����, ��� ����������� ��������. ����� ����������� � �������, ���� ���� �� ������ 
���������� ����� ���� ������ ��. �������� ������ � ������ ����� ���������� ��, �������� � ������������ �������� 24 ���� � �����, � � ����� ����� �������� ��� ���������. ��������� �������� ��������� ����� ��������� �� ������ ������ ������.
To reach this goal, we use a number of techniques. First of all, we make
heavy use of the Internet. You can participate in our project even if you
can write only one single OS function. The most current version of the
source is accessible 24 hours per day and patches can be merged into it at
any time.  A small database with open tasks makes sure work is not duplicated.


�������
=======
� ������� 1993 ���� ���� ���������� ��� ����������� ����� Amiga, � ��������� 
����������� ��, ����������, ������ ��������, ��� ����� ������� ��� �������� 
�������� ������� ��. ���������� ���� �������� ������� ������� ������ ������ ����� - ����������������� ��, ������, � ����������. �� ����� ����� ������� ��� ��������, ����� ��� ����� ������������� ��������������� ���� ����, ��� ��� �������������, ��� � ��� �������������. ���� ���������� ����� ���������� ����
������� ����, ���������� ����� ���������� ����������� AmigaOS, � �������� ������������� ����������� ��. ��� �������� �� ���� ������ AOS.
Some time back in the year 1993, the situation for the Amiga looked somewhat 
worse than usual and some Amiga fans got together and discussed what should be 
done to increase the acceptance of our beloved machine. Immediately the main 
reason for the missing success of the Amiga became clear: it was propagation,
or rather the lack thereof. The Amiga should get a more widespread basis to 
make it more attractive for everyone to use and to develop for. So plans were
made to reach this goal. One of the plans was to fix the bugs of the AmigaOS, 
another was to make it an modern operating system. The AOS project was born.

�� ��� �� ����� ������� ������������ � "������" ? � ��� �� ������� ���������� ?
������ �������� ����������� ���������� "�����������" �� , ��� �� �������� � AmigaOS ?
But exactly what was a bug? And how should the bugs be fixed? What are the
features a so-called *modern* OS must have? And how should they be implemented 
into the AmigaOS?

������ ��� ���� ����� �� ������������, � ��-��� "����" ���������� �� ��������� �� ������ ������� ���� (�� ������� ����, ����� ��� �� �����). ��� ���������� ���������� ��������� ���� "��� ����� ...", ������������ �������� "������� �� � �����, �������..." ��� "��� �� ������, ��� ..." , ����� ����� ������ "��� �� �����, ������ �� ..." � �.�.
Two years later, people were still arguing about this and not even one line of 
code had been written (or at least no one had ever seen that code). Discussions 
were still of the pattern where someone stated that "we must have ..." and 
someone answered "read the old mails" or "this is impossible to do, because ..."
which was shortly followed by "you're wrong because ..." and so on. 

��������� ������� �������� ���������, � ����� 1995 ����, ���� ������� (Aaron Digulla) ����������� RFC (request for comments) - ����� ������, � ������ �������� AOS � ����� ��������� ���������� ���������� ������ ������. ���� �������������� ��������� ���������, � ����������� ����� ��������, ��� ����������� ��� ������ �� ������ �������� ��, ����������� � AmigaOS 3.1 (Kickstart 40.68), �� ���� ������� ��� ���������� ������ � ������ ������������,
� ����� �����������, ��� �� ��-���� �������, � ��� - ��� .
In the winter of 1995, Aaron Digulla got fed up with this situation and posted 
an RFC (request for comments) to the AOS mailing list in which he asked what the
minimal common ground might be. Several options were given and the conclusion 
was that almost everyone would like to see an open OS which is compatible with
AmigaOS 3.1 (Kickstart 40.68) on which further discussions could be based, 
to see what is possible and what is not.

������ ��������, � AROS �������� ������������.
So the work began and AROS was born.

