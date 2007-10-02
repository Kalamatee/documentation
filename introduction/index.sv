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

Runt 1993 s�g situationen f�r Amiga v�rre ut �n n�gonsin och h�ngivna supportrar
samlades f�r att diskutera vad som kunde g�ras f�r att �ka acceptansen f�r v�r
�lskade maskin. Ganska s� snart var det uppenbart vad huvudorsaken
av misslyckandet berodde p�: spridningen, eller snarare avsaknaden av detta.
Amiga borde ha en mer utbredd marknad f�r att bli mer attraktiv f�r alla att
anv�nda och utveckla i.  Planer utvecklades f�r att uppn� detta m�l. En av
dessa planer var att �tg�rda buggarna i AmigaOS, en annan var att utveckla
AmigaOS till ett modernt operativsystem. AOS-projektet var skapat.

Men vad var egentligen en bug? Hur skulle buggarna �tg�rdas? Vad �r det f�r
finesser som ett s� kallat *modernt* operativsystem m�ste ha? Hur skulle de
implementeras i AmigaOS?

Tv� �r senare s� var debatten fortfarande aktuell och inte en enda rad kod
hade skrivits (�tminstone s� hade ingen sett n�gon kod). Diskussioner
handlade fortfarande om "Vi m�ste ha ..." d� en annan svarade "l�s de gamla mailen"
eller "detta �r om�jligt att utf�ra, eftersom ..." som f�ljdes av "Du har fel
f�r att ..." och s� vidare.

Vintern 1995, var Aaron Digulla tr�tt p� situationen och postade en RFC 
(reguest for comments) till AOS e-postlista d�r han fr�gade vad den minimala
gemensamma grunden f�r operativystemet borde vara. Flera alternativ presenterades
och sammanfattningsvis s� ville i princip alla se ett �ppet operativsystem som
�r kompatibelt med AmigaOS 3.1 (Kickstart 40.68), under vilka fortsatta diskussioner
kunde baseras, f�r att kontrollera vad som var m�jligt och inte.

Arbetet startade och s� var AROS f�tt.
