========================
����� ���������� �������
========================

:Authors:   Aaron Digulla, Adam Chodorowski
:Copyright: Copyright � 1995-2004, The AROS Development Team
:Version:   $Revision: 24430 $
:Date:      $Date: 2006-05-08 04:01:22 +0500 (����, 08 ������ 2006) $
:Status:    Done.

.. Contents::


��� ������ ����� AROS ? 
-----------------------

�� ���� ������� �� ��������_.

.. _introduction: ../../introduction/index


������ ����������� ��������� AROS?
----------------------------------

�������� ����������� �������, ��������� �������� ���������� ���������� ����������� ������� ��� ���������� �������������� ������. ����� ����������, ��� �������� ���������� ��������������� ���������� ����� ������� ��������. ����������, ��� ��������, ��� �������� ������������������ ��� ����������� �������� ��� ����������� ������������� (��������, ������� ����� ����������������� Word, ����� ������� ���������, �������������� ��������� Word � ����� ASCII).

����������, ��� ������ �� ����� �����������: �� ����������� ����������������� 
���������, ���� ��������� � ���������� ���������� ����� ���� �������� ������� ����������. ����� � ������ ������ ��������. � ����� ����� ������, ����� ����� "Windows �������" �������� ����������, ���, �� ������� ����, ������������ ����������.

��������� �� �������� ������������������ � ���������� ������ ���� ������������� �������� (������� ����������� �� ����������������) ������� �� �������� ��� �����-���� NDA, ������������� ���� ����������� ��������������� � AROS. ����� ����� ���� ������: �������� �������� ��������� ��������, ����������� � ������� �����������. ����� �������, �� �������, ��� ����� �� ������� AROS.

��� �� �����, ������� � ������������ ����� - ������ ����. �� ����� ��������� ��������������� ��������� � ������, ��������� ����������� ������ �� ��������� ����������� ���������. ������, ���, ������������ ���������, ��������������� � ���, �� ����� ���� ������������ � ���. ������� ��������������� ���������� AmigaOS �������� �������������� ������ � ����������� ������ ����. ��������������, �� ��������� �� ������������� ��� ���� � �������� ������ ��. ������������ ����� �� ������� ���� ����������� ����������, �� ������ � ��� � ����������� ������� �� ��������.

�� ��������� �������, �� ����������� ����������� ������������� �� Amiga Inc. ������, �������� �� �� ������ ������������� ��������� � ����� ����, � ���� ������� ������������ ����������. �������� ������� ����, ��� Amiga Inc �� �������� ��� �� �������������, �� ������, ��� ������� ����. � ���������, ���� ��� �������� ������������ ���������� ������� �� ����, �������� �� ������ ��������� � ����� ������.

������ ���� ���� - ������������� ���� �  AmigaOS 3.1?
-----------------------------------------------------

There have been discussions about writing an advanced OS with the features of
the AmigaOS. This has been dropped for a good reason. First, everyone agrees
that the current AmigaOS should be enhanced, but no one knows how to do that or
even agrees on what has to be enhanced or what is important. For example, some
want memory protection, but don't want to pay the price (major rewrite of the
available software and speed decrease).

In the end, the discussions ended in either flame wars or reiteration of the
same old arguments over and over again. So we decided to start with something we
know how to handle. Then, when we have the experience to see what is possible or
not, we decide on improvements.

We also want to be binary compatible with the original AmigaOS on Amiga. The
reason for this is just that a new OS without any programs which run on it has
no chance to survive. Therefore we try to make the shift from the original OS to
our new one as painless as possible (but not to the extent that we can't improve
AROS afterwards). As usual, everything has its price and we try to decide
carefully what that price might be and if we and everyone else will be willing
to pay it.


����� �� ������� ���� XYZ?
--------------------------

No, because: 

a) If it was really important, it would be in the original OS. :-) 
b) Why don't you do it yourself and send a patch to us?

The reason for this attitude is that there are plenty of people around who think
that their feature is the most important and that AROS has no future if that
feature is not built in right away. Our position is that AmigaOS, which AROS
aims to implement, can do everything a modern OS should do. We see that there
are areas where AmigaOS could be enhanced, but if we do that, who would write
the rest of the OS? In the end, we would have lots of nice improvements to the
original AmigaOS which would break most of the available software but be worth
nothing, because the rest of the OS would be missing.

Therefore, we decided to block every attempt to implement major new features in
the OS until it is more or less completed. We are getting quite close to that
goal now, and there have been a couple of innovations implemented in AROS that
aren't available in AmigaOS.


��������� AROS ���������� � AmigaOS?
------------------------------------

Very compatible. We expect that AROS will run existing software on the Amiga
without problems. On other hardware, the existing software must be recompiled.
We will offer a preprocessor which you can use on your code which will change
any code that might break with AROS and/or warn you about such code.

Porting programs from AmigaOS to AROS is currently mostly a matter of a simple
recompilation, with the occasional tweak here and there. There are of course
programs for which this is not true, but it holds for most modern ones.


��� ����� ������������ �������� ������� AROS ?
----------------------------------------------

Currently AROS is available in a quite usable state as native and hosted
(under Linux, and FreeBSD) for the i386 architecture (ie. IBM PC AT
compatible clones). There are ports under way at varying degrees of
completeness to SUN SPARC (hosted under Solaris) and Palm compatible
handhelds (native).


����� �� AROS ����������� �� PPC? 
---------------------------------

� ��������� ����� ��� ������ �� �������� AROS �� PPC, ������������� ��� Linux.


������ �� ����������� Linux � X11?
----------------------------------

We use Linux and X11 to speed up development. For example, if you implement
a new function to open a window you can simply write that single function and
don't have to write hundreds of other functions in layers.library,
graphics.library, a slew of device drivers and the rest that that function might
need to use. 

The goal for AROS is of course to be independent of Linux and X11 (but it would
still be able to run on them if people really wanted to), and that is slowly
becoming a reality with the native versions of AROS. We still need to use Linux
for development though, since some development tools haven't been ported to AROS
yet.


��� �� �� ����������� �������� ������������� AROS?
--------------------------------------------------

One of the major new features in AROS compared to AmigaOS is the HIDD (Hardware
Independent Device Drivers) system, which will allow us to port AROS to
different hardware quite easily. Basically, the core OS libraries do not hit the
hardware directly but instead go through the HIDDs, which are coded using an
object oriented system that makes it easy to replace HIDDs and reuse code.


�� ������ � ����� AROS? 
-----------------------

We hear all the day from a lot of people that AROS won't make it. Most of them
either don't know what we are doing or they think the Amiga is already dead.
After we explained what we do to the former, most agree that it is possible. The
latter make more problems. Well, is Amiga dead right now? Those who are still
using their Amigas will probably tell you that it isn't. Did your A500 or A4000
blow up when Commodore went bankrupt? Did it blow up when Amiga Technologies
did?

The fact is that there is quite little new software developed for the Amiga
(although Aminet still chugs along quite nicely) and that hardware is also
developed at a lower speed (but the most amazing gadgets seem appear right now).
The Amiga community (which is still alive) seems to be sitting and waiting. And
if someone releases a product which is a bit like the Amiga back in 1984, then
that machine will boom again. And who knows, maybe you will get a CD along with
the machine labeled "AROS". :-)


��� �� ��� ������, ���� AROS �� �������������?
----------------------------------------------

Please post a message with details (for example, the error messages you
get) on the Help forum at `AROS-Exec`__ or become a developer and
subscribe to the AROS Developer list and post it there, and someone will
try to help you.

__ http://aros-exec.org/


����� �� � AROS ������ ������, SVM, RT, ...?
--------------------------------------------

Several hundred Amiga experts (that's what they thought of themselves at least)
tried for three years to find a way to implement memory protection (MP) for
AmigaOS. They failed. You should take it as a fact that the normal AmigaOS will
never have MP like Unix or Windows NT.

But all is not lost. There are plans to integrate a variant of MP into AROS
which will allows protection of at least new programs which know about it. Some
efforts in this area look really promising. Also, is it really a problem if your
machine crashes? Let me explain, before you nail me to a tree. :-) The problem
is not that the machine crashes, but rather: 

1. You have no good idea why it crashed. Basically, you end up having to poke 
   with a 100ft pole into a swamp with a thick fog. 
2. You lose your work. Rebooting the machine is really no issue.

What we could try to construct is a system which will at least alert if
something dubious is happening and which can tell you in great detail what was
happening when the machine crashed and which will allow you to save your work
and *then* crash. There will also be a means to check what has been saved so you
can be sure that you don't continue with corrupted data.

The same thing goes for SVM (swappable virtual memory), RT (resource tracking)
and SMP (symmetric multiprocessing). We are currently planning how to implement
them, making sure that adding these features will be painless. However, they do
not have the highest priority right now. Very basic RT has been added, though.


����� �� ����� ����-��������?
-----------------------------

Sure, no problem. In fact, we want as many beta testers as possible, so
everyone is welcome! We don't keep a list of beta testers though, so all
you have to do is to download AROS, test whatever you want and send us a
report.


������ ����� ����� AROS � UAE?
------------------------------

UAE is an Amiga emulator, and as such has somewhat different goals than AROS.
UAE wants to be binary compatible even for games and hardware hitting code,
while AROS wants to have native applications. Therefore AROS is much faster than
UAE, but you can run more software under UAE.

We are in loose contact with the author of UAE and there is a good chance that
code for UAE will appear in AROS and vice versa. For example, the UAE developers
are interested in the source for the OS because UAE could run some applications
much faster if some or all OS functions could be replaced with native code. On
the other hand, AROS could benefit from having an integrated Amiga emulation.

Since most programs won't be available on AROS from the start, Fabio Alemagna
has ported UAE to AROS so you can run old programs at least in an emulation box.


������ ����� ����� AROS � Haage & Partner?
------------------------------------------

Haage & Partner used parts of AROS in AmigaOS 3.5 and 3.9, for example the
colorwheel and gradientslider gadgets and the SetENV command. This means that in
a way, AROS has become part of the official AmigaOS. This does not imply that
there is any formal relation between AROS and Haage & Partner. AROS is an open
source project, and anyone can use our code in their own projects provided they
follow the license.


������ ����� ����� AROS � MorphOS?
----------------------------------

The relationship between AROS and MorphOS is basically the same as between AROS
and Haage & Partner. MorphOS uses parts of AROS to speed up their development
effort; under the terms of our license. As with Haage & Partner, this is good
for both the teams, since the MorphOS team gets a boost to their development
from AROS and AROS gets good improvements to our source code from the MorphOS
team. There is no formal relation between AROS and MorphOS; this is simply how
open source development works.


����� ���� ����� ����������������?
----------------------------------

Most development for AROS is done using ANSI C by crosscompiling the
sources under a different OS, eg. Linux or FreeBSD. Fabio Alemagna has
completed an initial port of GCC to i386 native. However, it is not
currently on the ISO or integrated into the build system.

The languages that are available natively are Python_, Regina_ and False_:

+ Python is a scripting language which has become quite popular, because of 
  its nice design and features (object-oriented programming, module system,
  many useful modules included, clean syntax, ...). A separate project has 
  been started for the AROS port and can be found at 
  http://pyaros.sourceforge.net/.

+ Regina is a portable ANSI compliant REXX interpreter. The goal for the AROS
  port is to be compatible with the ARexx interpreter for the classic
  AmigaOS.

+ False can be classified as an exotic language, so it will most likely not be 
  used for serious development, although it can be lots of fun. :-) 

.. _Python: http://www.python.org/
.. _Regina: http://regina-rexx.sourceforge.net/
.. _False:  http://wouter.fov120.com/false/


������ � AROS �� �������  �������� m68k?
----------------------------------------

To make old Amiga programs run on AROS, we have ported UAE_ to AROS. AROS's
version of UAE will probably be a bit faster than other versions UAE since AROS
needs less resources than other operating systems (which means UAE will get more
CPU time), and we'll try to patch the Kickstart ROM in UAE to call AROS
functions which will give another small improvement. Of course, this only
applies to the native flavors of AROS and not the hosted flavors.

But why don't we simply implement a virtual m68k CPU to run software directly on
AROS? Well, the problem here is that m68k software expects the data to be in big
endian format while AROS also runs on little endian CPUs. The problem here is
that the little endian routines in the AROS core would have to work with the big
endian data in the emulation. Automatic conversion seems to be impossible (just
an example: there is a field in a structure in the AmigaOS which sometimes
contains one ULONG and sometimes two WORDs) because we cannot tell how a couple
of bytes in RAM are encoded.

.. _UAE: http://www.freiburg.linux.de/~uae/


����� �� � AROS Kickstart ROM? 
------------------------------

There might be, if someone creates a native Amiga port of AROS and does all the
other work needed to create a Kickstart ROM. Currently, no one has applied for
the job. 


��� �������� ����� AROS ��� UAE?
--------------------------------

The floppy disk image can be mounted as a hardfile and then used as a 1.4 MB
harddisk within UAE. After you have put the files you want on the hardfile disk
image (or whatever you wanted to do), you can write it to a floppy.

The geometry of the hardfile is as follows::

    Sectors    = 32
    Surfaces   = 1
    Reserved   = 2
    Block Size = 90


��� �������� ������ ������ AROS ��� hosted-������ AROS?
-------------------------------------------------------

Copy the disk image to the DiskImages directory in AROS (SYS:DiskImages, eg.
bin/linux-i386/AROS/DiskImages) and rename it to "Unit0". After starting AROS,
you can mount the disk image with::

    > mount AFD0: 


��� ����� Zune?
---------------

In case you read on this site about Zune, it's simply an open-source
reimplementation of MUI, which is a powerful (as in user- and
developer-friendly) object-oriented shareware GUI toolkit and de-facto
standard on AmigaOS. Zune is the preferred GUI toolkit to develop
native AROS applications. As for the name itself, it means nothing,
but sounds good.

