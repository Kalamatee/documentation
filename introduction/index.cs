==========================
Short introduction to AROS
==========================

:Authors:   Aaron Digulla, Stefan Rieken, Matt Parsons, Adam Chodorowski 
:Copyright: Copyright � 1995-2002, The AROS Development Team
:Version:   $Revision: 26120 $
:Date:      $Date: 2007-05-16 03:40:10 +0200 (st, 16 V 2007) $
:Status:    Almost finished, I think...


.. raw:: html

   <h1>�vod<br><img style="width: 238px; height: 2px;" alt="spacer" src="/images/sidespacer.png"></h1>

AROS Research Operating System je jednoduch�, v�konn� a p�izp�sobiteln� 
desktopov� opera�n� syst�m navr�en� k tomu, aby v�m pomohl vyt�it maximum
z va�eho po��ta�e. 
Je to nez�visl�, p�enosn� a svobodn� projekt, sna��c� se b�t kompatibiln�
s AmigaOS 3.1 na API levelu (jako Wine, ne jako UAE), p�i sou�asn�m zlep�ov�n�
v mnoha oblastech. Zdrojov� k�d je dostupn� pod open source licenc�, 
kter� ho dovoluje komukoli zdokonalovat.


C�le
====

C�lem AROS projektu je vytvo�it OS, kter�:

1. Je kompatibiln�, jak je to jen mo�n�, s AmigaOS 3.1.

2. M��e b�t portov�n na r�zn� druhy hardwarov�ch architektur a
   procesor�, jako je x86, PowerPC, Alpha, Sparc, HPPA a dal��.

3. By m�l b�t bin�rn� kompatibiln� na Amize a zdrojov� kompatibiln� na ostatn�m
   hardwaru.
  
4. M��e b�et jako samostatn� verze, kter� bootuje p��mo z pevn�ho disku, a
   jako emulace, kter� otev�e okno na st�vaj�c�m OS k v�voji software
   a b�hu Amigy a nativn�ch aplikac� z�rove�.

5. Zlep�� p�vodn� funkce syst�mu AmigaOS.

K dosa�en� t�chto c�l� pou��v�me mno�stv� technik. V prvn� �ad�, we make
heavy use of the Internet. M��ete se pod�let na na�em projektu i kdy�
um�te napsat pouze jednu jedinou funkci OS. Nejaktu�ln�j�� verze
zdroje je dostupn� 24 hodin denn� a patche se mohou objevovat kdykoli.
Mal� datab�ze s ve�ejn�mi �koly (open tasks) zaji��uje, �e pr�ce nen� duplikovan�.


Historie
========

N�jak� �as zp�tky v roce 1993 vypadala situace pro Amigu pon�kud 
h��e ne� obvykle a n�kte�� fanou�ci Amigy se radili a diskutovali, co by se m�lo
ud�lat, aby vzrostla akceptace na�ich milovan�ch stroj�. Immediately the main 
reason for the missing success of the Amiga became clear: it was propagation,
or rather the lack thereof. The Amiga should get a more widespread basis to 
make it more attractive for everyone to use and to develop for. So plans were
made to reach this goal. One of the plans was to fix the bugs of the AmigaOS, 
another was to make it an modern operating system. The AOS project was born.

But exactly what was a bug? And how should the bugs be fixed? What are the
features a so-called *modern* OS must have? And how should they be implemented 
into the AmigaOS?

O dva roky pozd�ji, people were still arguing about this and not even one line of 
code had been written (or at least no one had ever seen that code). Discussions 
were still of the pattern where someone stated that "we must have ..." and 
someone answered "read the old mails" or "nen� to mo�n� ud�lat, proto�e..."
which was shortly followed by "plete� se, proto�e..." a tak d�le. 

V zim� roku 1995, Aaron Digulla got fed up with this situation and posted 
an RFC (request for comments) to the AOS mailing list in which he asked what the
minimal common ground might be. Several options were given and the conclusion 
was that almost everyone would like to see an open OS which is compatible with
AmigaOS 3.1 (Kickstart 40.68) on which further discussions could be based, 
to see what is possible and what is not.

Tak za�ala pr�ce a AROS se narodil.

