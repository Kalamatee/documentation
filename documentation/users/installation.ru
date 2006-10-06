=============================
����������� �� ��������� AROS
=============================

:Authors:   Stefan Rieken, Matt Parsons, Adam Chodorowski, Neil Cafferkey, Sergey Mineychev
:Copyright: Copyright � 1995-2004, The AROS Development Team
:Version:   $Revision$
:Date:      $Date$
:Status:    In works. 
:Abstract:
    ������ ����������� �������� ��� � ����������� ���� ��� ��������� ��������� ������ AROS.
    
    .. Warning:: 
        
        AROS � ������ ������ ����� ������ �����-������. ��� ��������, ��� � 
        ������ ������ ��� � ������ ��������, ��� ������������� � ����������. 
        ���� �� ������ ���� � �������, ��� ��� ����������� � ��������� ������� 
        �������, ��� ��� ������� �������������. AROS ������ �� �����, ���� 
        �������� � ����� ��������� � ���� ����.
        

.. Contents::


���������
=========

� ��������� ����� AROS ��������� � �������� ����������. � ����������, ��� ��������� 
����� ����� ������������� � �������������. � ��������� ����� ���������� 2 ���� �������� 
������� (� ����������), ��������� ��� ����������: ������ � ������ ������.

������ �������� �������� �����, � ��������, ����� �������� ������������ ���������� �������� ��������� 
� ��� AROS �� ������� ���������� ������ � ���-���� ��������� ����������� � ����� ������. 
�������, ������ �� ���������� ������-���� ������� �������� �������. ���� �������� �� ��, ��� ��� 
�������� �������, � �� ��������� ������� ������������� ��������� AROS, �� �� ��� ��������, ��� ��� 
����� ���������� �� ������ ��� �������� �� ��������� ����� ������. ������, �� ��������� ����������� 
������ �� ������� ������� ��������� �����, ��� ��� �� �������� ��� �������� ������������ ������.

������ ������, �������������� ��������, ���������� ������������� ������ ���� ����� 
�� ���������� � ����������� Subversion � �������� ��� ��������� ���������. 
������, ��� ������ ������� �� �����������, � ��� ������ ��������� ����� ���� ���������� 
��� ������ ��������. ������, ��� �������, ��� �������� ���������� ���������.

��� ����, ����� ������� ��������� ������ � ������ ������, �������� ���� `�������� �������`_.


���������
=========

AROS/i386-linux � AROS/i386-freebsd
-------------------------------------

����������
""""""""""

��� ����, ����� ��������� AROS/i386-linux ��� AROS/i386-freebsd ����������� ���������:


+ ������� ����������� FreeBSD 5.x ��� Linux (�� ����� ������� ��������, ����� �����������
    �� �����������, ���� �� ������������ ������)

+ ����������� � ��������������� X-������ (��������, X.Org ��� XFree86).

����������, ��.

����������
""""""""""

Since AROS/i386-linux and AROS/i386-freebsd are hosted flavors of AROS,
installation is simple. Simply get the appropriate archives for your platform
from the `download page`_ and extract them where you want them::

    > tar -vxjf AROS-<version>-i386-<platform>-system.tar.bz2

If you downloaded the contrib archive, you may want to extract it too::

    > tar -vxjf AROS-<version>-i386-all-contrib.tar.bz2


������
"""""""

After having extracted all files you can launch AROS like this::

    > cd AROS
    > ./aros


.. Note:: 
    
    Unless you are running XFree86 3.x or earlier, you may notice that the
    AROS window does not refresh properly (for example when a different window
    passes over it). This is due to the fact that AROS uses the "backingstore"
    functionality of X, which is turned off by default in XFree86 4.0 and later.
    To turn it on, add the following line to the device section of your
    graphics card in the X configuration file (commonly named
    ``/etc/X11/xorg.conf``, ``/etc/X11/XF86Config-4`` or
    ``/etc/X11/XF86Config``)::

        Option "backingstore"

    A complete device section might then look like this::

        Section "Device"
            Identifier      "Matrox G450"
            Driver          "mga"
            BusID           "PCI:1:0:0"
            Option          "backingstore"
        EndSection


AROS/i386-pc
------------

����������
""""""""""

You will need an average PC (i486 or Pentum-based) with *PS/2 mouse* and PS/2 or AT keyboard, 
IDE hard disk and CD-ROM, (S)VGA video card and monitor. Also any available PC-compatible VM 
(virtual machine) can be used.
At least 16 MB of RAM and VESA-compliant VGA card is recommended. 
There`s a generic accelerated drivers (HIDD`s) for ATI and nVidia cards. Also you can add
the networking interface card (there`s some supported) to try networking in AROS.
In trouble check the FAQ if it contains any information on your kind of hardware.

.. Note:: 
    
    We currently do not support installation of AROS/i386-pc on to a harddrive
    [#]_. But you definitely would need to install AROS to test some of 
    it`s features and workarounds must be advised. Please note that you **should 
    not** use install on your working machine, which HD contains precious data!
    We`re taking no responsibility for any data loss occured during the installation. 
    Any bug reports on istallation is welcome, though.

Installation media
""""""""""""""""""

The recommended installation media for AROS/i386-pc is CDROM, since we can fit
the whole system onto a single disc (and also all the contributed software).
This also makes the installation easier, since you don't have to go through
hoops transferring the software on several floppies.

Since nobody currently sells AROS on CDROM (or any other media for that matter),
you will need access to a CD burner to create the installation disk yourself.


CDROM
^^^^^

������
''''''

Simply download the ISO image from the `�������� �������`_ and burn it to a CD
using your favorite CD burning program. 


��������
''''''''

The easiest way to boot from the AROS installation CD is if you have a computer
that supports booting from CDROM. It might require some fiddling in the BIOS
setup to enable booting from CDROM, as it is quite often disabled by default.
Simply insert the CD into the first CDROM drive and reboot the computer. The
boot is fully automatic, and if everything works you should see a nice
screen after a little while. 

If your computer does not support booting directly from CDROM you can create
a boot floppy_ and use it together with the CDROM. Simply insert both the
boot floppy and the CD into their respective drives and reboot. AROS will start
booting from the floppy, but after the most important things have been loaded
(including the CDROM filesystem handler) it will continue booting from the
CDROM.


Floppy
^^^^^^

These days floppies can be found useful only to boot if your PC`s BIOS doesn`t 
support booting from CD or on some really obsolete PC`s. But it`s still maitaned.


������
''''''

To create the boot floppy, you will need to download the disk image from
the `download page`_, extract the archive, and write the boot image to a floppy
disk. If you are using a UNIX-like operating system (such as Linux or FreeBSD), 
you can do this with the following command::

    > cd AROS-<version>-i386-pc-boot-floppy
    > dd if=aros.bin of=/dev/fd0

If you are using Windows, you will need to get rawrite_ to write the image to
a floppy. Please see the documentation of rawrite_ for information on how to use
it.


��������
''''''''

Simply insert the boot floppy into the drive and reboot the computer. The boot
is fully automatic, and if everything works you should see a nice screen after
a while.

��������� �� ������ ����
"""""""""""""""""""""""""

Well, note that you have been **WARNED** that HD installation is
incomplete now and is **dangerous** to any data, so make sure the PC
you're using does not contain any useful data. Using a virtual machine
is recommended, as it minimises any possible risk and allows AROS to be
used and tested on a working machine. There are many free VM`s available
now, such as QEMU and VMWare.

��������� �����
^^^^^^^^^^^^^^^

First, set up your HD - either real or a virtual drive image - for use.
For a real drive, this may involve plugging it into the machine (always
a good start) and setting it up in the BIOS. For a virtualiser's or
emulator's virtual drive, you probably just need to select an option to
create a new drive image, and set it as one of the virtual PC's boot
devices (the CD drive must be the first boot device during installtion
of AROS however).

Another step will be cleaning the HD of any existing partitions, to
remove anything that can prevent our partition creation succeeding.
Installing AROS along with another OS is possible, but will require more
skills and is not covered here. For the moment, we will learn how to
install AROS as the only system on the HD.

��������� �� �������
^^^^^^^^^^^^^^^^^^^^

Single partition install

Here he will learn how to install AROS as the only system on PC and
being placed on a single partition.
This is an easier case to install.
This chapter can be found a bit tricky, as install feature is incomplete. 
First, remember a *common rule* for this process - *reboot* after any
significant change made to the filesystem (we will note where it is
needed). Rebooting means closing the HDToolbox window if it's open and
restarting the computer or VM, so it`s an hard reset. You can also try a soft 
reset by typing <reboot> ENTER in CLI window.

First, find a tool on the AROS CD called *HDToolBox*. It's located in the
Tools drawer. This is your HD tormenter for a while. When you run it,
you will see a window with a device-type selector. In this example (here
and further on), we are using a real or virtual IDE hard drive (also
known as an ATA hard drive). So, clicking on the *ata.device* entry will
show Devices:1 in the left window. So, this is our HD. By clicking on
this entry we will enter the available HD list.

So here we should see our HD listed. If it`s a virtual HD, we will see
something like *QEMU Harddisk* or the equivalent VMWare one. If your HD is
real, you should see its name. If this doesn't happen, you must make
sure you've correctly prepared your HD. Clicking on the HD name will
give us some information::

    Size: <Size of HD>
    Partition Table: <type of current PT; must be unknown after cleanup>
    Partitions: <count of partitions on HD; must be 0 as we've just started>

Well, now we must create a new partition table. Here, for a PC we must
create a *PC-MBR* type of table. To do this, please press the *Create
Table* button and choose *PC-MBR* from the list. Click OK.

Then we must write the changes to disk. To do this, click on the HD's
name and press *Save Changes*. Answer *Yes* in the confirmation dialog.
Close the HDToolbox window and reboot the system from the Live CD.

After the system boots up, run HDToolbox again. Now, after entering the
*ata.device* entry we must see the info "Partition table: PC-MBR,
Partitions:0". That's OK, we set no partitions yet. Let's do it now. 
Click on the HD's name to go to the partitions list. The list is empty
now. Click on *Create Entry* button, choose all the space by clicking on
unselected empty space and click *OK*. Now in the list you should see a
"Partition 0" entry. Choose it by clicking to get this information::

    Size: <Partition size. Almost equal to HD size>
    Partition table: Unknown <Not created yet>
    Partition type: AROS RDB Partition table <That's OK>
    Active: No <Not active>
    Bootable: No <Not bootable>
    Automount: No <Will not mount on system startup>

Now, click on *Create Table* button, select *RDB table* and click OK. To
save changes, go *one level* up by clicking the *Parent* button, select the
HD name again and click the *Save Changes* button. Answer *Yes* in the
confirmation dialog twice. Exit from HDToolbox and reboot the machine. 

After booting up, run HDToolbox (you`ve guessed that). Now the info for our
Partition 0 is the same except that the partition table is now RDB. This
partition must be set to Active. To do this, click on the *Switches*
button, select the *Active* checkbox and click *OK*. Now what? Yes, save the
changes by going a level up and clicking the button. Exit and reboot.

Why are we rebooting so much? Well, HDToolbox and system libraries are
still unfinished and quite buggy, so rebooting after every step helps to
reset them to initial state.

After boot up, HDToolbox must show us that Partition 0 has become
active. That's good, now we must create our disk to install AROS on. Go
one level down by clicking on the "Partition 0" entry. Now what? Yes,
click the Add Entry button and choose all the empty space. Now you see a
"DH0" entry there, which is our disk. Clicking on it shows information::

    Size: <well...>
    Partition Table: Unknown (it's OK)
    Partition Type: Fast Filesystem Intl <OK>
    Active: No <OK>
    Bootable: No <we must switch it to Yes>
    Automount: No <we must switch it to Yes>

Now, go *2 levels up* to the HD name, click Save Changes, confirm, exit
and reboot. After booting up (pretty boring, isn't it?), what should we
do? Yes, we must set switches to the DH0 drive in HDToolbox. We go to
the DH0 entry and set switches with the relevant button and checkboxes:
*Bootable: Yes* and *Automount: Yes*. Save changes after going 2 levels
up again, confirm and reboot.

*How long is it left to go?* Well, we're more than half way to success.
After booting up and checking all the settings for DH0, we must see it's
OK now. So now we can exit HDToolbox with no hesitation left. Now it's
time for some CLI magic.

��������������
^^^^^^^^^^^^^^

We must format our created DH0 drive to make it usable. We set it to
FFS, because our bootloader (GRUB) is not yet supporting SFS. Also please 
note that you can get problems using some ported software with SFS (such as gcc).
So now open the CLI window (right click on upper menu and select Shell from the
first Wanderer menu). At the prompt, enter the Info command (type
``info`` and press Enter). You should see our DH0 in the list as ``DH0:
Not a valid DOS disk``. Now we will format it with the command::

    >format DRIVE=DH0: NAME=AROS
    About to format drive DH0:. This will destroy all data on the drive. Are 
    you sure ? (y/N)

Enter y, press Enter and wait a second. You should see the string
``Formatting...done`` displayed. If you got an error, check for all
partition parameters in HDToolbox, as you may be missing something, and
repeat.

Now the Info command should show::

    >DH0: <size>  <used> <free> <full 0%> <errors> <r/w state> <FFS> <AROS>

That's it. Time for the pre-installation reboot.

.. Note:: If this all seems to be so boring that you can't stand it, there's 
          some relief if you intend to use AROS only in virtual machine. 
          First, you can get a pre-installed pack, such asWinAROS/WinAROS
          Lite - this system is already installed, but can be outdated. Second, 
          you can look at `AROS Archives`_ for Installation Kit that contains 
          ready-made virtual HD's that are already made and ready for install,
          so you can skip the previous procedure and install a fresh
          version of AROS. 


����������� �������
^^^^^^^^^^^^^^^^^^^

After reboot, you may notice that you can see our AROS HD on the desktop
now, and it's empty. Now we need to fill it with files.

There's an installer in AROS, as incomplete as HDToolbox is, but it can
be used. At least, we can try. So, here's the first way to install.

1. Run InstallAROS in the Tools drawer. You will see the welcome screen
telling you the same I did - we're using the pre-alpha version. Let's
get juice out of it ;) There's a Proceed button for you to click. Next,
you will see the AROS Public License, and you should accept it to go
further. Now you will see the install options window (if it`s said No,
just uncheck the relevant box) ::

    Show Partitioning Options...    []
        <No. As we've done that already>
    Format Partitions               []
        <No. We have done that already>
    Choose Language Options         []
        <No. It's better to do that later>
    Install AROS Core System        [V]
        <Yes, we need it. We're here to do that>
    Install Extra Software [V] 
        <Yes. Uncheck only if you want a lite installation>
    Install Development Software    []
        <No. This is mostly a placeholder at a moment>
    Show Bootloader Options         [V]
        <Yes, bootloader will not be installed otherwise>

Let me note that *Show Partitioning Options* can be unselectable in case 
if installer is unable found any suitable partition.
After you've selected or unselected everything we need, click Proceed.
The next window shows us possible installation destinations::

    Destination Drive
    [default:DH0]
    
    DH0  <that's correct>
    
    Use 'Work' Partition                        [] 
        <uncheck it, we're installing all-on-one>
    Copy Extras and Developer Files to Work?    [] 
        <same as above>
    Work drive ... <skipped>
    
Now after we uncheck it, click Proceed. The window showing bootloader
options appears. Here we only can check, if GRUB is to be installed to DH0
and on which device. Click Proceed again.

Now the window says we're ready to install. Click Proceed once again. Do
you like this pretty button? ;)

After that, the copying progress bar will appear as files are copied. Wait a
while until the process finishes. After that, you will get the finishing
screen and Reboot checkbox. Leave this checked and click Proceed. No,
that isn't all yet - wait till the last step remaining. Now our machine
will reboot with the same settings as before, from Live CD.

��������� ����������
^^^^^^^^^^^^^^^^^^^^

Now we still see our AROS disk, and all files are there. What are we
missing? There's a bug in GRUB, preventing it from installing correctly.
But, if we reinstall it now, it usually helps to solve it. So, now we
need InstallAROS once again. Repeat all the previous steps from point 1,
but uncheck every checkbox. After the last click on Proceed, GRUB will
be reinstalled, and a window will appear asking you to confirm that
write. Answer yes as many times as needed. Now, on the last page,
uncheck the Reboot checkbox, close the Install program and power off the
machine. 

���������� � ��������
^^^^^^^^^^^^^^^^^^^^^

We have just done our first installation alchemy course, and AROS should
be ready now. We must remove the Live CD from the CD drive (or disable
booting from CD in VM) and check it out. Hear the drum roll? ;)

If something goes wrong, there can be some answers...

��������� ��������
^^^^^^^^^^^^^^^^^^

Installation process is the one of most frequently asked about on forums,
mostly by newbees. You can check the FAQ if there an answer to your questions.
Any additions ? ...

AROS/i386-PPC-hosted
--------------------

����������
""""""""""

To be written by someone.

AROS/m68k-native aka AfA
------------------------

����������
""""""""""

To be written by someone.

Footnotes
=========

.. [#] It *is* actually possible to install AROS/i386-pc onto a harddrive, but
       the procedure is far from being automated and user-friendly and the
       necessary tools are still being heavily developed and might be quite
       buggy. Therefore we officially do not recommend harddisk installation for
       very unexperienced users at the moment so this note was done. 


.. _`�������� �������`: ../../download

.. _`�������� �������`: ../../download

.. _rawrite: http://uranus.it.swin.edu.au/~jn/linux/rawwrite.htm

.. _`AROS Archives`: http://archives.aros-exec.org

