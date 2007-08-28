===========================
Kort introduktion till AROS
===========================

:Authors:   Aaron Digulla, Stefan Rieken, Matt Parsons, Adam Chodorowski 
:Copyright: Copyright � 1995-2002, The AROS Development Team
:Version:   $Revision$
:Date:      $Date$
:Status:    Almost finished, I think...


.. raw:: html

   <h1>Introduction<br><img style="width: 238px; height: 2px;" alt="spacer" src="/images/sidespacer.png"></h1>

AROS �r ett portabelt och fritt operativsystem f�r desktop med syfte p�
att vara kompatibelt med AmigaOS 3.1, och samtidigt f�rb�ttra det i
m�nga omr�den. K�llkoden �r tillg�nglig under en open source-licens, vilket
till�ter alla friheten att f�rb�ttra det.


M�l
===

AROS-projektets m�l �r att skapa ett operativsystem som:

1. �r s� kompatibelt med AmigaOS 3.1 som m�jligt.

2. Kan portas till olika former av h�rdvaruarkitekturer och processorer,
   s�som x86, PowerPC, Alpha, Sparc, HPPA och andra.

3. B�r vara kompatibel p� bin�r niv� n�r man k�r den p� Amiga-h�rdvara
   och k�llkodskompatibel p� annan h�rdvara.
  
4. Kan k�ras som en frist�ende version som startar direkt fr�n h�rddisk eller som
   en emulerad version som �ppnar ett f�nster vilket till�ter att man kan k�ra Amiga
   och �vriga applikationer samtidigt.

5. F�rb�ttrar funktionaliteten hos AmigaOS

F�r att n� dessa m�l anv�nder vi ett antal olika tekniker. First och fr�mst
anv�nder vi Internet. Du kan deltaga i v�rat projekt �ven om bara kan skriva
en enda funktion i operativsystemet. Den mest uppdaterade versionen av k�llkoden
finns tillg�nglig dygnet runt och patchar kan integreras n�r som helst. En liten
databas med �ppna jobb s�kerst�ller att samma jobb inte utf�rs av flera personer
samtidigt.


Historia
========

Some time back in the year 1993, the situation for the Amiga looked somewhat 
worse than usual and some Amiga fans got together and discussed what should be 
done to increase the acceptance of our beloved machine. Immediately the main 
reason for the missing success of the Amiga became clear: it was propagation,
or rather the lack thereof. The Amiga should get a more widespread basis to 
make it more attractive for everyone to use and to develop for. So plans were
made to reach this goal. One of the plans was to fix the bugs of the AmigaOS, 
another was to make it an modern operating system. The AOS project was born.

But exactly what was a bug? And how should the bugs be fixed? What are the
features a so-called *modern* OS must have? And how should they be implemented 
into the AmigaOS?

Two years later, people were still arguing about this and not even one line of 
code had been written (or at least no one had ever seen that code). Discussions 
were still of the pattern where someone stated that "we must have ..." and 
someone answered "read the old mails" or "this is impossible to do, because ..."
which was shortly followed by "you're wrong because ..." and so on. 

In the winter of 1995, Aaron Digulla got fed up with this situation and posted 
an RFC (request for comments) to the AOS mailing list in which he asked what the
minimal common ground might be. Several options were given and the conclusion 
was that almost everyone would like to see an open OS which is compatible with
AmigaOS 3.1 (Kickstart 40.68) on which further discussions could be based, 
to see what is possible and what is not.

So the work began and AROS was born.

