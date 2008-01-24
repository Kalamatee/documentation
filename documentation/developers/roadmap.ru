==================
������� � AROS 1.0
==================

:������:    Adam Chodorowski
:Copyright: Copyright � 2003, The AROS Development Team
:������:    $Revision$
:����:      $Date$

:��������:  
    
    ���������� ����� ���� ������ � ����� ������� ��� ����������, ������� 
    ���������� ���������, ������� ��� ����� �������� AROS 1.0. ���� ��� *��*
    ������� ������, ��� �����, ��� ������ ��������� ������������� �������� �� 
    ������-�� ������������� ������ (��������� ��� �� ����� ���������� � 
    ������� open source), �� ��� ������������, ��� ����� ������� ���������
    ���� ������. �� ��������, ��� ��� ������� ������� ������ ����� 
    �������������� � ����������������.
    
    �������� ! ���� �������� ����� ��������, � ������ �� ��������� �� �����.
    

�����
-----

����� �������� AROS 1.0, ��� ���������� ������ ���� ��������� ��� ������
i386-pc � i386-linux (����� �����������, ��� "������������ �����"). ��� ������ ����� �� ��������������� ��� ���������� ��� 1.0 ��� �������� ������ �����.


����������
----------
1.  ������������� � AmigaOS 3.1 API, �� ����������� ������, ��������� ��     
    ������������ ��� �����������, ���� �� ������� ����������� ������.
    
    ����� ������ ���-���� ����������, ���� �������� �� ����������� ��������� �
    ������ �������������, ���������� ���������� ������ ���������; ��������, 
    ���� ��� ����������� ������ ����� ������������ ������������ � ��� � 
    ��������� ����������� ������������ ������.
    
    ���������� �����������...


2.  ��������� ������������� � AmigaOS 3.5 � 3.9 API. �� ������ ������� �����, 
    ������� ����� ��������� � �������� ���������, �������� ���������.
    
    ��������, *������* ���� �� ��� ����� ������������� � ReAction, ��������� �� 
    ��� ������� Zune � �������� ��������� ��� ���������� GUI ( � ���� ��, 
    ��������� ReAction API �������� ������ ������������� �������). ����������,
    ��� ����������� ������ ���� ������������ ����������� ������ ��� �������� 
    �� ������������� ������.
    
    ���������� �����������...


3.  ������� �������������� ���������� GUI. �������������, Zune ������ ����� 
    ������ ������������� � MUI API � ����������� ��������� �������������� 
    ��������.
    
    ���������� �����������...


4.  ����������� ����������, ��������� � ���������, ������� � AmigaOS 3.1.

    ��� *��* ��������, ��� � ��� ������ ���� ����������, ���������� � �������� 
    ��� ��, ��� � �� ������� � AmigaOS, �� ��������� ������������ ������� ������
    ���� �������� ������������.
    
    ���������� �����������...

    
5.  Sound support, meaning API compatibility and basic applications. There 
    should be at least one driver for each mandatory port. 
    
    Details to follow...
    
    
6.  Networking support. This includes a TCP/IP-stack and some basic
    applications like email and SSH clients, and also a *simple* web browser.
    There should be at least one NIC driver for each mandatory port. 
    
    The requirements on the web browser should not be high, but it should be
    possible to at least browse the web in some way (even if it is only in text
    mode).
    
    Details to follow...
    
    
7.  Self-hosted development environment and SDK for developers. Specifically,
    this includes all software required to build AROS like GCC, GNU binutils,
    GNU make and the rest. It must be possible to compile AROS on AROS. 
    
    The ABI for the supported architectures (only i386 at this point) must be
    finalized before 1.0. Once 1.0 is released, the ABI should be stable for a
    considerable time.
   
    Details to follow...
    
    
8.  Comprehensive documentation for developers. This includes complete reference
    manuals over all libraries, devices, classes and development tools and also
    guides and tutorials to introduce whole subsystems and give an overview.
    Also, a migration/porting guide should be available.
    
    Details to follow...

    
9.  Comprehensive documentation for users. This includes a complete command 
    reference, tutorials and installation-, configuration- and other guides.
    
    Details to follow...


10. Substantial testing and bug hunting complete. The 1.0 release should be
    virtually free of bugs, and be a *very* stable release. We should not have
    the fiascos some open source projects have had with their ".0" releases. 
        
    This will probably require an extended feature freeze, followed by a code
    freeze and several intermediate milestones for user feedback and testing.
    Feature requests are not regarded as bugs, unless it is something required
    (but missed) in the preceding milestones. For example, "we need a movie
    player" does not qualify, but "the text editor should have a 'save' menu
    option" does.

    Details to follow...
