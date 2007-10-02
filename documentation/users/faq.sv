==========================
Frequently Asked Questions
==========================

:Authors:   Aaron Digulla, Adam Chodorowski, Sergey Mineychev, AROS-Exec.org
:Copyright: Copyright � 1995-2007, The AROS Development Team
:Version:   $Revision: 26886 $
:Date:      $Date: 2007-09-29 17:05:46 +0200 (Sat, 29 Sep 2007) $
:Status:    Done.

.. Contents::

Vanliga fr�gor
==============

F�r jag fr�ga en fr�ga?
-----------------------

Naturligtvis! G� till `AROS-Exec forum`__ och l�s tr�darna
och fr�ga allting som du vill. Den h�r FAQ �r uppdaterad med anv�ndarfr�gor,
men forumet �r alltid mest aktuellt.

__ http://aros-exec.org/modules/newbb/viewtopic.php?topic_id=1636&start=0


Vad handlar AROS om? 
--------------------

L�s g�rna denna introduktion_.

.. _introduktion: ../../introduction/index


Vad s�ger lagen om AROS?
------------------------

Europeisk lag s�ger att det �r lagligt att anv�nde omv�nd utvecklingsteknik 
(reverse engineering) f�r att f� kompabilitet. Den s�ger �ven att det �r
olagligt att distribuera kunskapen som man f�r av dessa tekniker. Det som
egentligen menas med detta �r att du f�r dissemblera eller studera vilken
mjukvara som helst f�r att skriva ett program som �r kompatibelt med detta
(till exempel s� skulle det vara lagligt att dissemblera Word f�r att skriva
ett program som kan konvertera Word-dokument till ASCII-text).

Det finns naturligtvis undantag: du f�r inte dissemblera mjukvaran om informationen
som du �r ute efter g�r att f� tag p� med andra s�tt. Du f�r heller inte informera
andra om vad du har l�rt dig. En bok med titeln "Windows inside" �r d�rf�r
olagligt eller �tminstone tvivelaktigt laglig.

Eftersom vi undviker dissembleringstekniker och ist�llet anv�nder den kunskap
som redan finns (vilket inkluderar programmeringsmanualer)  som inte g�r under
n�gon liknande lag, s� kan man inte applicera detta med AROS. Det som r�knas h�r
�r intentionerna i lagen: det �r lagligt att skriva mjukvara som �r kompatibel
med annan mjukvara. D�rf�r �r v�ran �vertygelse att AROS �r skyddat av lagen.

Patent och header files �r ett annat �mne. Vi kan anv�nda patenterade algoritmer
i europe eftersom europesik lag inte till�ter patent p� algoritmer.
Dock f�r kod som anv�nder algoritmer som �r patenterade i USA inte importeras
till USA. Exempel p� patenterade algoritmer i AmigaOS �r t.ex. sk�rmdragning
och hur t.ex. menyer fungerar. D�rf�r undviker vi att implementera dessa
funktioner p� exakt samma s�tt. Header files m�ste � andra sidan vara kompatibla
men s� olika orginalet som m�jligt.

F�r att undvika problem s� har vi fr�gat om ett officiellt OK fr�n Amiga Inc. De
�r ganska positiva till v�rat arbete men v�ldigt obekv�ma ang�ende den lagliga
inneb�rden. Vi vill uppm�rksamma dig p� det faktum att Amiga Inc inte har
skickat oss brev d�r de uppmanat oss att forts�tta eller upph�ra med utvecklingen.
Olyckligtvis s� har ingen �verenskommelse �nnu blivit gjord, f�rutom att b�da parter
har goda intentioner.


Varf�r siktar ni p� kompabilitet med AmigaOS 3.1?
-------------------------------------------------

Det har p�g�tt diskussioner om att skriva ett avancerat operativsystem med
funktioner fr�n AmigaOS. Dessa diskussioner har avslutats av en bra anledning.
F�rst och fr�mst s� �r alla �verens om att nuvarande AmigaOS kan bli b�ttre,
men ingen vet hur det ska g�ras eller kan komma �verens om vad som ska f�rb�ttras
eller vad som �r viktigt. Till exempel s� vill en del ha minnesskydd (memory
protection), men vill inte betala priset f�r detta (Stora omskrivningar av
tillg�nglig mjukvara och hastighetss�nkningar).

I slut�ndan s� har diskussionerna slutat i heta diskussioner eller �terg�ng till
samma argument om och om igen. S� vi beslutade att starta med n�gonting som
vi viste att vi kunde hantera. Sen n�r vi har erfarenheter f�r att se vad som
�r m�jligt eller inte, s� kan vi besluta om f�rb�ttringar.

Vi vill �ven ha bin�r kompabilitet med AmigaOS p� Amigadatorer. Anledningen till
detta �r just att ett nytt operativsystem utan program inte har n�gon chans att
�verleva. D�rf�r f�rs�ker vi att f� �verg�ngen fr�n AmigaOS till det nya att g�
s� sm�rtfritt som m�jligt (men inte till den grad att vi inte kan f�rb�ttra AROS
i efterhand). Som vanligt, allting har sitt pris och f�rs�ker att g�ra genomt�nkta
beslut om vilket pris som det kostar och om alla andra �r villiga att betala det.

Kan ni inte implementera funktionen XYZ?
----------------------------------------

Nej, d�rf�r: 

a) Om det verkligen �r s� viktigt s� borde det finnas i AmigaOS. :-) 
b) Varf�r inte g�ra det sj�lv och skicka patchen till oss?

Anledningen till denna attityd �r att det finns v�ldigt m�nga som tycker att deras
funktion �r viktigast och att AROS inte har n�gon framtid om inte funktionen 
omedelbart implementeras. V�ran st�ndpunkt �r att AmigaOS, som AROS siktar p� att
implementera, kan g�ra allting som ett modernt operativsystem kan g�ra. Vi ser
att det finns omr�den d�r AmigaOS skulle beh�va f�rb�ttras inom, men om vi g�r det,
vem skulle skriva resten av operativsystemet? I slut�ndan s� skulle vi d� ha en massa
fina f�rb�ttringar j�mf�rt med AmigaOS som skulle g�ra det mycket sv�rare att anv�nda
redan existerande mjukvara, eftersom resten av operativystemet skulle saknas.

D�rf�r har vi beslutat att v�nta med varje f�rs�k till att implementera stora
nya funktioner i operatisystemet tills att operativsystemet �r mer eller mindre
klart. Vi har kommit ganska s� n�ra m�let nu och det har utvecklats en del funktioner
i AROS som inte finns tillg�ngligt i AmigaOS.


Hur kompatibelt �r AROS med AmigaOS?
------------------------------------

V�ldigt kompatibelt. Vi f�rv�ntar oss att AROS kommer att k�ra existerande
mjukvara p� Amigan utan problem. P� annan h�rdvara s� m�ste mjukvaran
rekompileras. Vi kommer att erbjuda en preprocessor som du kan anv�nda p� din
kod som kommer �ndra eventuell kod som eventuellt krashar med AROS och/eller
varna om s�dan kod.

Portning av program fr�n AmigaOS till AROS handlar mestandels om en enkel
rekompilering, med vissa f�r�ndringar. Det finns naturligtvis program med
undantag, men det st�mmer f�r de flesta moderna program.


F�r vilka h�rdvaruplattformar finns AROS tillg�ngligt? 
------------------------------------------------------

F�r tillf�llet s� finns AROS tillg�ngligt i en ganska anv�ndbar version som
native och hosted (I Linux och FreeBSD) f�r i386 arkitekturen (IBM PC AT
kompatibla kloner). Det finns portningar under utveckling till SUN SPARC
(Som g�r under Solaris) och Palm-kompatibla handdatorer (native).

Kommer det att finnas en portning av AROS till PPC?
---------------------------------------------------

F�r n�rvarande s� f�rs�ker vi utveckla en portning av AROS till PPC,
initialt hostat under Linux.

Varf�r anv�nder ni Linux och X11?
---------------------------------

Vi anv�nder Linux och X11 f�r att snabba upp utvecklingen. Som exempel, om du
implementerar en ny funktion f�r att �ppna ett f�nster s� kan du enkelt skriva den
funktionen och inte beh�va skriva hundratals andra funktioner i layers.library,
graphics.library, en bunt device driver och �vriga som den funktionen kan t�nkas beh�va.

M�let med AROS �r naturligtvis att bli oberoende av Linux och X11 (Men det skulle
fortfarande vara m�jligt att k�ra p� dessa om anv�ndare verkligen ville), det b�rjar
l�ngsamt bli verklighet med native-verisonerna av AROS. Vi m�ste dock fortfarande 
anv�nda Linux f�r utveckling, eftersom utvecklingsverktygen inte har blivit portade
till AROS �nnu.

Hur ska ni lyckas med att g�ra AROS portabelt?
----------------------------------------------

En av de stora nya funktionerna i AROS j�mf�rt med AmigaOS �r HIDD (Hardware
Independent Device Drivers), som till�ter oss att porta AROS till olika
typer av h�rdvara relativt enkelt. I princip s� pratar libraries till 
operativsystemets k�rna inte direkt med h�rdvaran, utan g�r via HIDD. vilket �r
kodat med hj�lp av ett objektorienterat system som g�r det enkelt att byta ut
HIDD och �teranv�nda koden.

Why do you think AROS will make it? 
-----------------------------------

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


What do I do if AROS won't compile?
-----------------------------------

Please post a message with details (for example, the error messages you
get) on the Help forum at `AROS-Exec`__ or become a developer and
subscribe to the AROS Developer list and post it there, and someone will
try to help you.

__ http://aros-exec.org/


Will AROS have memory protection, SVM, RT, ...?
-----------------------------------------------

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


Can I become a beta tester?
---------------------------

Sure, no problem. In fact, we want as many beta testers as possible, so
everyone is welcome! We don't keep a list of beta testers though, so all
you have to do is to download AROS, test whatever you want and send us a
report.


What is the relation between AROS and UAE?
------------------------------------------

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

Also available in Contrib is `E-UAE`__, which is UAE improved by some features
from `WinUAE`__.

__ http://www.rcdrummond.net/uae/
__ http://www.winuae.net/


What is the relation between AROS and Haage & Partner?
------------------------------------------------------

Haage & Partner used parts of AROS in AmigaOS 3.5 and 3.9, for example the
Colorwheel and Gradientslider gadgets and the SetENV command. This means that in
a way, AROS has become part of the official AmigaOS. This does not imply that
there is any formal relation between AROS and Haage & Partner. AROS is an open
source project, and anyone can use our code in their own projects provided they
follow the license.


What is the relation between AROS and MorphOS?
----------------------------------------------

The relationship between AROS and MorphOS is basically the same as between AROS
and Haage & Partner. MorphOS uses parts of AROS to speed up their development
effort; under the terms of our license. As with Haage & Partner, this is good
for both the teams, since the MorphOS team gets a boost to their development
from AROS and AROS gets good improvements to our source code from the MorphOS
team. There is no formal relation between AROS and MorphOS; this is simply how
open source development works.


What programming languages are available?
-----------------------------------------

Most development for AROS is done using ANSI C by crosscompiling the
sources under a different OS, e.g. Linux or FreeBSD. Fabio Alemagna has
completed an initial port of GCC to i386 native. However, it is not
currently on the ISO or integrated into the build system.

The languages that are available natively are Python_, Regina_, Lua_, Hollywood_ and False_:

+ Python is a scripting language which has become quite popular, because of 
  its nice design and features (object-oriented programming, module system,
  many useful modules included, clean syntax, ...). A separate project has 
  been started for the AROS port and can be found at 
  http://pyaros.sourceforge.net/.

+ Regina is a portable ANSI compliant REXX interpreter. The goal for the AROS
  port is to be compatible with the ARexx interpreter for the classic
  AmigaOS.

+ Lua is a powerful, fast, light-weight, embeddable scripting language. The AROS
  port has been extented by two modules: siamiga and zulu. The first one has
  some simple graphics commands, the latter is an interface to Zune.

+ Hollywood is a commercial programming language for multimedia applications
  including games. The CD-ROM contains a version for i386-aros.

+ False can be classified as an exotic language, so it will most likely not be 
  used for serious development, although it can be lots of fun. :-) 

.. _Python: http://www.python.org/
.. _Regina: http://regina-rexx.sourceforge.net/
.. _Lua: http://www.lua.org/
.. _Hollywood: http://www.airsoftsoftwair.com/
.. _False:  http://wouter.fov120.com/false/


Why is there no m68k emulator in AROS?
--------------------------------------

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


Will there be an AROS Kickstart ROM? 
------------------------------------

There might be, if someone creates a native Amiga port of AROS and does all the
other work needed to create a Kickstart ROM. Currently, no one has applied for
the job. 


Software questions
==================

How do I access AROS's disk images from UAE?
--------------------------------------------

The floppy disk image can be mounted as a hardfile and then used as a 1.4 MB
harddisk within UAE. After you have put the files you want on the hardfile disk
image (or whatever you wanted to do), you can write it to a floppy.

The geometry of the hardfile is as follows::

    Sectors    = 32
    Surfaces   = 1
    Reserved   = 2
    Block Size = 90


How do I access AROS's disk images from hosted flavors of AROS?
---------------------------------------------------------------

Copy the disk image to the DiskImages directory in AROS (SYS:DiskImages, e.g.
bin/linux-i386/AROS/DiskImages) and rename it to "Unit0". After starting AROS,
you can mount the disk image with::

    > mount AFD0: 


What is Zune?
-------------

In case you read on this site about Zune, it's simply an open-source
reimplementation of MUI, which is a powerful (as in user- and
developer-friendly) object-oriented shareware GUI toolkit and de-facto
standard on AmigaOS. Zune is the preferred GUI toolkit to develop
native AROS applications. As for the name itself, it means nothing,
but sounds good.


How can I restore my Prefs to defaults?
---------------------------------------

In AROS, open CLI shell, go to Envarc: and delete relevant files for the 
pref you want to restore.


What is the Graphical and other memory in Wanderer?
---------------------------------------------------

This memory division is mostly a relic from Amiga past, when graphical memory 
was application memory before you added some other, called FAST RAM, a memory where 
applications ended, while the graphics, sounds and some system structures were 
still in graphic memory.

In AROS-hosted, there isn't such kind of memory as Other (FAST), but only GFX, when on 
Native AROS, GFX can have a max of 16MB, although it wouldn't reflect the state 
of the graphic adapter memory...  It has no relation to the amount of memory 
on your graphics card.

*The long-winded answer*
Graphics memory in i386-native signifies the lower 16MB of memory 
in the system. That lower 16MB is the area where ISA cards can do DMA. Allocating 
memory with MEMF_DMA or MEMF_CHIP will end up there, the rest in the other (fast)
memory.

Use C:Avail HUMAN command for memory info.


What do the Wanderer Snapshot <all/window> action actually do? 
--------------------------------------------------------------

This command remembers icon's placement of all (or one) windows.


How do I change the screensaver/background?
-------------------------------------------

At the moment the only way to change screensaver is to write your own one.
Blanker commodity could be tuned with Exchange, but it is able to do only 
"starfield" with given amount of stars.
Background of Wanderer is set by Pref tool Prefs/Wanderer.
Background of Zune Windows is set by Zune prefs Prefs/Zune. You can also set 
your chosen application preferences by using the Zune <application> command.


I've launched AROS-hosted but it's failed
-----------------------------------------

If you are root and AROS crashes at launch, do "xhost +" before 
"sudo && ./aros -m 20". You must also give it some memory with -m option as 
shown. The space between "-m" and the value is important. Also don't forget
about BackingStore option in section Device of your xorg.conf.


What are the command line options for AROS-hosted executable?
-------------------------------------------------------------

You can get a list of them by running ./aros -h command.


How can I make windows refresh from black on AROS-hosted?
---------------------------------------------------------

You must supply the following string (as is!) to the "Device" section of
your /etc/X11/xorg.conf (or XFree.conf)::
    
    Option  "BackingStore"

See Installation__ for details.

__ installation#running


What are the AROS-native kernel options used in GRUB line?
----------------------------------------------------------

Here's some::

    nofdc           - Disables the floppy driver completely.
    noclick         - Disables the floppy disk change detection (and clicking)
    ATA=32bit       - Enables 32-bit I/O in the hdd driver (safe)
    forcedma        - Forces DMA to be active in the hdd driver (should be safe, but       
                      might not be)
    gfx=<hidd name> - Use the named HIDD as the gfx driver
    lib=<name>      - Load and initiate the named library/HIDD

Please note that they are case-sensitive.


How can I transfer files to virtual machine with AROS?
------------------------------------------------------

First and simplest way is to put files to the ISO image and and connect it to VM. 
There's a lot of programs able to create/edit ISO's like UltraISO, WinImage, 
or mkisofs. Second, you can set up the network in AROS and FTP server on your 
host machine. Then you can use FTP client for AROS to transfer files
(look for MarranoFTP). This is tricky enough to stop at this point. User 
documentation contains a chapter about networking, go for it. Also, now
there`s a promising utility (AFS Util), allowing to read (no write support yet) 
files from AROS AFFS/OFS disks and floppies.  


Compilation Errors
------------------

Q: I`ve compiled AROS with gcc4 but found that compiled AROS-hosted segfaults 
with -m > 20 and if I compile AROS-native it does not start (black screen)

A: Add -fno-strict-aliasing to scripts/aros-gcc.in and try to recompile.


Is it possible to make a DOS script that automatically runs when a package is installed? 
----------------------------------------------------------------------------------------

This script should do some assigns and add string to the PATH variable.

1) Create a sub-directory S and add a file with name 'Package-Startup' with the DOS 
commands to it.

2) Create a variable in the envarc:sys/packages file which contains the path to the S 
directory of your package.

Example directory layout::

    sys:Extras/myappdir
    sys:Extras/myappdir/S
    sys:Extras/myappdir/S/Package-Startup
    
The variable in envarc:sys/packages could have the name 'myapp' (name doesn't 
matter), the content would then be 'sys:extras/myappdir'

The Package-Startup script would then be called by the startup-sequence.
    

How do I clear the shell window? How do I set it permanently?
-------------------------------------------------------------

Type this command in the shell::

    Echo "*E[0;0H*E[J* "
    
You can edit your S:Shell-Startup and insert this line somewhere, so 
you'll have a new "Cls" command::

    Alias Cls "Echo *"*E[0;0H*E[J*" "

BTW: here is my new S:Shell-Startup modified to start the shell in black and 
with a modified prompt::

    Alias Edit SYS:Tools/Editor
    Alias Cls "Echo *"*E[0;0H*E[J*" "
    Echo "*e[>1m*e[32;41m*e[0;0H*e[J"
    Prompt "*n*e[>1m*e[33;41m*e[1m%N/%R - *e[30;41m%S>*e[0m*e[32;41m "
    date

More about printer escape sequences::

    Esc[0m
    Standard Set

    Esc[1m and Esc[22m
    Bold

    Esc[3m and Esc[23m
    Italics

    Esc[4m and Esc[24m
    Underline

    Esc[30m to Esc[39m
    Set Front Color

    Esc[40m to Esc[49m
    Set Background Color

Values meanings::

    30 grey char -- 40 grey cell -- >0 grey background ---- 0 all attributes off
    31 black char - 41 black cell - >1 black background --- 1 boldface
    32 white char - 42 white cell - >2 white background --- 2 faint
    33 blue char -- 43 blue cell -- >3 blue background ---- 3 italic
    34 grey char -- 44 grey cell -- >4 grey background ---- 4 underscore
    35 black char - 45 black cell - >5 black background --- 7 reverse video
    36 white char - 46 white cell - >6 white background --- 8 invisible
    37 blue char -- 47 blue cell -- >7 blue background

The codes can be combined by separating them with a semicolon.


How do I launch AROS-hosted in fullscreen?
------------------------------------------

Call "export AROS_X11_FULLSCREEN=1" in a shell. Start AROS and change the 
screen resolution in the screenmode preferences. Quit AROS and start it again.


How to make 2-state AROS Icons?
-------------------------------

AROS icons are actually renamed PNG files. But if you want icons in two states 
(normal/selected) use this command::

    join img_1.png img_2.png TO img.info
    

How to mount an ISO image on AROS? And can I update my nightly build this way?
------------------------------------------------------------------------------

+ Get the ISO into AROS (by wget or else way)
+ Copy the ISO into sys:DiskImages (drawer must be created if it isn`t exist). 
+ Rename ISO to Unit0 in that dir.
+ You must add this to your Devs:Mountlist ::

    ISO:
    FileSystem = cdrom.handler
    Device = fdsk.device
    Unit = 0

+ Then mount ISO:
  You can copy anything from ISO:. Additionally, you can create a script to update your 
  nightly build like this::

        copy ISO:boot/aros-pc-i386.gz sys:boot/
        copy ISO:C sys:C all quiet
        copy ISO:Classes sys:Classes all quiet
        copy ISO:Demos sys:Demos all quiet

And so on for each directory except Prefs, Extras:Networking/Stacks, and 
devs:mountlist itself. Prefs have to be kept if you want it. Also you can set 
AROSTcp to keep its settings in separate directory.

If you want to write all over, just do::

    copy ISO:C sys:C all quiet newer  
    
How to unmount a volume?
------------------------

Launch these two commands in CLI::
    
    assign DOSVOLUME: dismount
    assign DOSVOLUME: remove

where DOSVOLUME is DH0:, DF0:, etc


How to mount a FAT Floppy with the FAT.handler?
-----------------------------------------------

Create a mountfile (text file) with the 3 magic lines::

    device = trackdisk.device
    filesystem = fat.handler
    unit = 0

+ Call it somehow, PC0 for example. Set this file default tool to c:mount in 
  properties (or put mountfile to devs:dosdrivers or sys:storage/dosdrivers)
+ Double click on it.
+ Insert a FAT formatted floppy.
+ See the icon appearing on Wanderer`s desktop.


How to mount a real HD FAT partition with the FAT.handler?
----------------------------------------------------------

First you`d need to read the drive`s geometry and write down some values. 
You can use HDToolbox or Linux fdisk for that. The BlocksPerTrack value is taken 
from the sectors/track value. Note that it has absolutely nothing to do with 
the physical disk geometry - FAT only uses it as a multiplier.
If you get the Cylinders e.g. from HDToolbox or using the Linux fdisk like this::

    sudo fdisk -u -l /dev/hda, 
    
Then you'll need to set BlocksPerTrack=63. 
To ensure you have numbers in cylinders look for Units=Cylinders in output. If 
you got fdisk output in sectors (Units=sectors), set BlocksPerTrack=1.

LowCyl and HighCyl are partition`s cylinders like::

    mark@ubuntu:~$ sudo fdisk -l -u /dev/hda
    ...
    /dev/hda1 * 63 20980889 10490413+ c W95 FAT32 (LBA)

So, LowCyl is 63, and HighCyl is 20980889, blockspertrack=1

Create a mountfile (text file) with these lines::

    
    device = ata.device
    filesystem = fat.handler,
    Unit = 0

    BlocksPerTrack = 1
    LowCyl = 63
    HighCyl = 20980889
    Blocksize=512

+ Call it somehow, FAT0 for example
+ Set this file`s default tool to c:mount in properties
  (or put mountfile to devs:dosdrivers or sys:storage/dosdrivers)
+ Double click on it
+ See the icon appearing on Wanderer`s desktop

Note: Formula for counting the blocks:
block = ((highcyl - lowcyl) x surfaces + head) x blockspertrack + sec


Hardware questions
==================

Where can I find an AROS Hardware Compatibility List?                   
-----------------------------------------------------

You can find one on the `AROS Wiki <http://en.wikibooks.org/wiki/Aros/Platforms/x86_support>`__ 
page. There can be another lists made by the AROS users.


Why AROS can't boot from my drive set as the SLAVE on IDE channel?
------------------------------------------------------------------

Well, AROS should boot if the drive is SLAVE but ONLY if there's a drive also 
on MASTER. That's appeared to be a correct connection respecting to the IDE 
specification, and AROS follows it.


My system hangs with red cursor on screen or a blank screen
-----------------------------------------------------------

One reason for this can be use of the serial mouse (these is not supported yet).
You must use PS/2 mouse with AROS at the moment. Another can be if you've chosen
a video mode unsupported by your hardware in boot menu. Reboot and try a different one.
