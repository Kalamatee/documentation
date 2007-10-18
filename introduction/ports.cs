=====
Ports
=====

:Authors:   Adam Chodorowski, Matthias Rustler 
:Copyright: Copyright � 1995-2006, The AROS Development Team
:Version:   $Revision: 24547 $
:Date:      $Date: 2006-06-15 17:41:03 +0200 (čt, 15 VI 2006) $
:Status:    Done.

.. Contents::


Introduction
============

Since AROS is a portable operating system, it is available for several different
platforms. A "port" of AROS is exactly what the name implies, ie. a version of
AROS ported to some specific platform. 


Flavors
--------

Ports are divided up into two major groups, or "flavors" in AROS terminology,
namely "native" and "hosted". 

Native ports run directly on the hardware and have total control over the
computer. They will become the recommended way to run AROS in the future since
it gives superior performance and efficiency, but they are currently too
incomplete to be useful (at least for development).

Hosted ports run on top of another operating system and do not access the
hardware directly, but use the facilities provided by the host OS. The
advantages of hosted ports is that they are easier to write since it is not
necessary to write low-level drivers. Also, since AROS development is not
self-hosted yet (we cannot compile AROS from inside AROS) it greatly speeds up
programming since we can run the development environment and AROS side-by-side
without wasting time on constant reboots to try out new code.


Naming
------

The different AROS ports are named on the form <cpu>-<platform>, where <cpu> is
the CPU architecture and <platform> is a symbolic name of the platform. The
platform of a port can either be a hardware one for native ports, such as "pc"
or "amiga", or an operating system for hosted ports, such as "linux" or
"freebsd". In cases when it is not obvious that the topic is AROS it is common
to prefix "AROS/" to the port name, giving you for example "AROS/i386-pc". 


Portability
-----------

AROS executables for a specific CPU are portable across all ports using that
CPU, which means that executables compiled for "i386-pc" will work fine on
"i386-linux" and "i386-freebsd".


Existing ports
==============

Below is a list of all AROS ports that are in working order and/or actively
developed. Not all of these are available for download, since they might 
either be not complete enough or have compilation requirements that we can't 
always meet due to limited resources.


AROS/i386-pc
------------

:Flavour:    Native
:Status:     Working, incomplete driver support
:Maintained: Yes

AROS/i386-pc is the native port of AROS to the common IBM PC AT computers and
compatibles using the x86 family of processors. The name is actually a bit
misleading since AROS/i386-pc actually requires at least a 486 class CPU due to
usage of some instructions not available on the 386.

This port works quite well, but we only have the most basic driver
support.  One of the biggest limitations is that we currently only have
support for accelerated graphics on nVidia and ATI graphics hardware. Other
graphics adapters must be used with generic (non-accelerated) VGA and
VBE graphics drivers. There are more drivers in the works, but
development is quite slow since we only have about 2.5 hardware hackers.
This port is available for download.


AROS/m68k-pp
------------

:Flavour:    Native 
:Status:     Partly working (in an emulator), incomplete driver support
:Maintained: Yes

AROS/m68k-pp is the native port of AROS to the Palm line of handheld computers
and compatibles ("pp" stands for "palm pilot", which was the name of the first
handhelds of this line). This means that you might be able to take AROS with you
in your pocket when traveling in the future...

This port is currently very raw. It does mostly work (running in an emulator,
since nobody wants to risk trashing their expensive hardware just yet) but there
is still a lot of work left. There is a graphics driver, but not any input ones.
This port is not available for download at this time.


AROS/i386-linux
---------------

:Flavour:    Hosted
:Status:     Working
:Maintained: Yes

AROS/i386-linux is the hosted port of AROS to the Linux operating system [#]_
running on the x86 family of processors. 

This is the most complete port of AROS feature-wise, since most of the 
developers currently use Linux when developing AROS, and there are far 
fewer drivers to write. This port is available for download.


AROS/i386-freebsd
-----------------

:Flavour:    Hosted
:Status:     Working
:Maintained: Yes (5.x)

AROS/i386-freebsd is the hosted port of AROS to the FreeBSD operating system
running on the x86 family of processors. 

This port is relatively complete since it shares most of it's code with that of
AROS/i386-linux, but since there aren't many developers that use FreeBSD it is
lagging a little bit behind. We try to compile AROS/i386-freebsd when doing
snapshots, but it is not always possible, so it might not always be available
for download.

AROS/ppc-linux
---------------

:Flavour:    Hosted
:Status:     Working
:Maintained: Yes

AROS/ppc-linux is the hosted port of AROS to the Linux operating system
running on the PPC family of processors.

A precompiled version can be downloaded from `Sourceforge`__.
Rebuilding requires a patched gcc3.4.3. The diff file can be found in contrib/gnu/gcc.

__ http://sourceforge.net/project/showfiles.php?group_id=43586&package_id=194077


Footnotes
=========

.. [#] Yes, we know that Linux is really just a kernel and not a whole OS, but
       it is much shorter to write that rather than "operating systems based on
       the Linux kernel, some of the common GNU tools and the X windowing
       system". This size optimization is of course negated by having to write
       this explanation for the pedantic readers, but anyway...

