=============
PORTING GUIDE
=============

:Authors:   Johann Samuellson, Matthias Rustler
:Copyright: Copyright � 2006, The AROS Development Team
:Version:   $Revision: 25114 $
:Date:      $Date: 2006-12-29 06:39:31 +1100 (Fri, 29 Dec 2006) $
:Status:    Beta
:ToDo:      Some real world examples


.. Contents::


Introducti�n
============

Esta gu�a es acerca de transferir el software que viene con configure o escribir
guiones para AROS.
Esto es verdad para la mayor�a del software de fuente abierta del mundo Linux.
Se basa en un `documento`__ escrito por Johan Samuellson para el AmigaOS4.

__ http://utilitybase.com/article?action=show&id=210

�Qu� transferir?
----------------

* El lenguaje con mejor soporte es C. A C++ le faltan algunas caracter�sticas.

* Mira qu� paquetes adicionales se necesitan para el software que quieres
  transferir. No puedes simplemente transferir cuando se necesitan bibliotecas
  de GUI como GTK o QT. �nicamente se puede transferir de modo directo el
  software que se ejecuta en modo consola.

* Cuando quieras trasferir juegos, mira si usan la `libSDL`__. Evita el
  software que requiera OpenGL.  
  
__ http://www.libsdl.org

Conseguir el SDK reciente
-------------------------

La manera m�s f�cil de transferir para AROS es desde una caja Linux,
porque en general tiene todas las herramientas necesarias. Mira en la
`Gu�a de Desarrollo`__ para la informaci�n sobre la instalaci�n del SDK.

__ app-dev/introduction.php#compiling-on-linux-with-gcc


Los fundamentos
---------------

Lo primero que debes hacer es revisar c�mo compilar tu proyecto.
Si hay un archivo llamado *configure* en el directorio ra�z del archive,
eso significa que tendr�s que configurarlo para tu plataforma. Mira en la
descripci�n del siguiente cap�tulo sobre c�mo hacer eso.

Luego de que el proyecto est� apropiadamente configurado es el momento
de hacer rodar al compilador.
Empieza a compilar tu proyecto tipeando ``make``.

Empero, si no hay un archivo llamado *configure*, busca uno llamado
*Makefile*. Ed�talo para que se ajuste con AROS y compila el proyecto
con ``make``.

Si todo est� compilado y enlazado ya est�s listo para probar tu puerto.
Un problema muy com�n es que no encuentre sus archivos de datos, y se
cuelgue. Corrige las rutas como se describe en el cap�tulo corregir-las-rutas,
y ejecuta de nuevo. 

Luego quita la informaci�n de depuraci�n de los binarios para hacerlos 
m�s peque�os.

�Listo! Ya tienes el puerto. �Ahora c�rgalo en http://archives.aros-exec.org
y en http://www.aminet.net!


C�mo configurar
===============

En Linux, los paquetes que tienen un gui�n configure por lo general se
instalan con tres pasos::

    ./configure
    make
    sudo make install

Lo que hace que la configuraci�n de AROS sea m�s dif�cil que, por ej. para 
AmigaOS4 es el hecho que estamos usando un compilador cruzado.

Tipea ``./configure --help`` para ver las opciones que est�n disponibles.
Si falla la configuraci�n podemos intentar deshabilitar algunas caracter�sticas.

Un ejemplo simple
-----------------

::

    ./configure CC=i386-aros-gcc \
    --build=local --host=i686-aros
    --disable-nls --without-x --without-pic --disable-shared

.. Hint::

    Tiene sentido escribir un comando de configure en un archivo de texto. De
    esta manera podemos f�cilmente ejecutarlo de nuevo escribiendo ``sh build.sh``.
    Pero antes que ejecutemos de nuevo al gui�n tenemos que hacer ``rm -f config.cache``
    para volver al estado inicial el proceso de configuraci�n.


Aqu� est� la explicaci�n de las opciones que usamos arriba:

``CC=i386-aros-gcc``
    Queremos usar el compilador para AROS. De otro modo obtendremos un binario para Linux.

``--build=local --host=i686-aros``
    Indica al gui�n configure que haga una compilaci�n cruzada para i686-aros.

``--disable-nls --without-x --without-pic --disable-shared``
    Deshabilita algunas caracter�sticas que no est�n soportadas por AROS.


.. Warning::

    No hagas ``sudo make install`` porque esto instalar� tu aplicaci�n en alguna
    ruta de Linux como */usr/local*.


Ejemplo de SDL (instalaci�n manual)
-----------------------------------

El siguiente ejemplo es para `Ltris`__, pero deber�a ser similar para las otras
aplicaciones SDL::

    ./configure CC=i386-aros-gcc  LDFLAGS="-nix" \
    --prefix=/PROGDIR \
    --build=local --host=i686-aros \
    --disable-nls --without-x --without-pic --disable-shared \
    --with-sdl-prefix=/usr/local/aros-sdk/i386-aros

``LDLAGS="-nix"``
    This enables Linux semantics for paths. Linux applications often use absolute paths to
    their data files. But an absolute Linux path like */usr/local/app* means for AROS: go one
    level up, then go into the *usr* directory.

``--prefix=/PROGDIR``
    Prefixes all paths with */PROGDIR*. Together with the *-nix* option this allows to use
    Linux paths during compiling and AROS paths during running.

``--with-sdl-prefix=/usr/local/aros-sdk/i386-aros``
    The configure script calls *sdl_config* to find out the required CFLAGS and LDFLAGS for SDL
    applications. Without this option it would call the Linux version of *sdl_config*, which
    would give wrong results.

Despu�s de una ejecuci�n exitosa del gui�n configure y de *make* tenemos que
copiar el binario de ltris y los archivos de datos de modo que el binario
encuentre a �stos::

    ltris
        ltris (binary)
        share
	    ltris
	        gfx
		sounds


__ http://lgames.sourceforge.net/index.php?project=LTris


Ejemplo de SDL (instalaci�n semiautom�tica)
-------------------------------------------

Podemos usar casi las mismas opciones de arriba::

    ./configure CC=i386-aros-gcc  LDFLAGS="-nix" \
    --prefix=/PROGDIR --bindir=/PROGDIR \
    --build=local --host=i686-aros \
    --disable-nls --without-x --without-pic --disable-shared \
    --with-sdl-prefix=/usr/local/aros-sdk/i386-aros

``--bindir=/PROGDIR`` 
    Evita se cree un subdiretorio *bin*.

No olvides la opci�n *--prefix* o sino instalar� los archivos de AROS en alguna 
de las rutas de Linux.

Ahora puedes recompilar tu proyecto (``make distclean``, ejecuta el gui�n
configure, ``make``). Ahora podremos invocar ``sudo make install``. Pero es
mejor dar primero los siguientes pasos:

+ sudo mkdir /PROGDIR
+ sudo chmod a+rwx /PROGDIR

Esto tiene la ventaja que podemos acceder a */PROGDIR* sin los derechos de root.
Ahora finalmente podemos hacer ``make install``, que instalar� el juego en 
*/PROGDIR*. Como �ste no es un buen lugar tenemos que copiarlo a un lugar en
donde AROS pueda alcanzarlo (por ej. cp -r /PROGDIR ~/AROS/games/ltris).

Recuerda en hacer ``rm -rf /PROGDIR/*`` antes de que compiles otro proyecto.


Errores comunes que pueden ocurrir cuando configures
----------------------------------------------------

Obtengo errores como target or host i686-aros isn't available.

Soluci�n:
  El gui�n *config.sub* probablemente sea viejo o no est�. Ejecuta ``autoconf``
  en el directorio ra�z del paquete. Si eso no ayuda, copia una versi�n reciente
  del archivo *config.sub* de por ej. */usr/share/automake*.

.. _autoconf: http://ftp.gnu.org/gnu/autoconf/

Obtengo errores como �ste:
  checking for IMG_Load in -lSDL_image... no

Soluci�n:
  Estamos enlazando con bibliotecas est�ticas, y necesitamos decir con
  exactitud con qu� enlazar. Ubica este rengl�n en el gui�n configure::

    LIBS="-lSDL_image $LIBS"

  SDL_image depende de algunas bibliotecas para que funcione correctamente,
  agr�galas de este modo::

    LIBS="-lSDL_image -lpng -ljpeg -lz $LIBS"


Obtengo errores como �ste:
  checking for Mix_OpenAudio in -lSDL_mixer... no

Solution:
  Estamos enlazando con bibliotecas est�ticas, y necesitamos decir con
  exactitud con qu� enlazar. Ubica este rengl�n en el gui�n configure::

    LIBS="-lSDL_mixer $LIBS"

  SDL_mixer depende de algunas bibliotecas para que funcione correctamente,
  agr�galas de este modo::

    LIBS="-lSDL_mixer -lvorbisfile -lvorbis -logg $LIBS"


Lo mismo sucede cuando configure est� buscando SDL_ttf, y ahora sabes
por qu�. Necesitamos especificar algunas bibliotecas m�s en las que
depende SDL_ttf. Necsita -lfreetype y -lz. Dejar� el resto para t� 
como un ejercicio.

Si has agregado las dependencias necesarias al gui�n configure, y 
todav�a no funciona puede deberse a archivos faltantes en el SDK.
Por ej. no est�n incluidas las bibliotecas SDL.

This is not recommended, but if there is no other way...
Si todav�a no funciona, y est� seguro que tienes la biblioteca
instalada, prueba con quitar toda la secci�n donde revisa la
biblioteca que falla en el archivo configure.

Ahora deber�as estar listo para build tu proyecto. Cuando transfieras
apps de unix siempre tipea ``make``.


Crear un makefile a mano
========================

Este makefile se podr�a usar is el build system es un mess y quieres 
simplificarlo un poco, alterarlo para que se ajuste a tus necesidades.
Lo usual es que solamente necesites modificar un makefile existente, cambia
el nombre del compilador de C (de otro modo crear�a binarios para Linux) y
agrega algunas bibliotecas de enlazado.

Aqu� est� la explicaci�n de lo que significan las banderas.
 
CC
    The name of the C compiler executeable.

RM
    The name of the delete command.

STRIP
    The name of the strip command (used to remove debug data from exe files).

CFLAGS
    Tells the compiler where to find the includes (-I) etc.

LDFLAGS
    Tells the linker what libraries to include (-l) and were
    to find them (-L). 

OBJS
    The compiler (GCC/G++) compiles object files (#?.o) from your .c
    files that are later linked together to become an executable file.
    Specify the object file names here.

OUTPUT
    The name of the final executable file.

::

  CC      = i386-aros-gcc
  RM      = rm
  STRIP   = i386-aros-strip --strip-unneeded --remove-section .comment
  CFLAGS  = -Wall -O2 
  LDFLAGS = -nix -lsmpeg -lSDL_gfx -lSDL_net -lSDL_image -lpng -ljpeg -lz -lSDL_mixer \
            -lvorbisfile -lvorbis -logg -lSDL_ttf -lfreetype -lz -lsdl -lauto -lpthread -lm
  OBJS    = a.o b.o c.o
  OUTPUT  = test.exe

  all: $(OBJS)
          $(CC) $(CFLAGS) $(LDFLAGS) $(OBJS) -o $(OUTPUT) 

  main.o: main.cpp main.h 
          $(CC) $(CFLAGS) -c main.cpp

  strip:
          $(STRIP) $(OUTPUT)
        
  clean:
          $(RM) -f $(OBJS) $(OUTPUT)

Remember that you have to use tabulator chars before the command.


Using the build system
======================

The build system contains some scripts for configuring of packages. The big advantage
when using the build system is that you can easily port to different AROS flavours.

+ %build_with_configure
+ %fetch_and_build
+ %fetch_and_build_gnu_development

Look in the file $(TOP)/config/make.tmpl for an explanation of the arguments. In
*$(TOP)/contrib/gnu* you can already find a lot of GNU packages.


Misc
====

Converting unix paths to AROS paths
-----------------------------------

How do I convert UNIX paths into AROS paths? Exchange *getenv("HOME")* by *"/PROGDIR/"*

Examples::

    old: strcpy(path, getenv("HOME"));
    new: strcpy(path, "/PROGDIR/");

    old: strcpy(home,getenv("HOME"));
    new: strcpy(home,"/PROGDIR/");

    old: sprintf(rc_dir, "%s/.gngeo/romrc.d", getenv("HOME"));
    new: sprintf(rc_dir, "%sgngeo/romrc.d", "/PROGDIR/");

Notice that I removed "/." in the last example.

Paths to datadirs are often set during the configure process by issuing 
*-DDATADIR=*. If this is the case set it to *-DDATADIR=/PROGDIR/*
It's also common that the datadir are set in the makefiles. Locate *DATADIR=*
and change it to *DATADIR=/PROGDIR/*


Defines
-------

Defines are often set in *config.h*, if something is configured wrongly, you can
often change it here by using *#define* and *#undef*.

A define example that considers all AmigaOS flavours::

  #ifdef __AMIGA__
	  blah blah blah
  #else 
          blah blah blah
  #endif

A define example that only considers AROS::

  #ifdef __AROS__
	  blah blah blah
  #else 
          blah blah blah
  #endif

A define example, that considers BeOS and AROS::

  #if !defined(__BEOS__) && !defined(__AROS__)

An example of a more complex #ifdef::

  #ifdef GP2X
	char *gngeo_dir="save/";
  #elif defined __AROS__
	char *gngeo_dir="/PROGDIR/save/";
  #else
	char *gngeo_dir=get_gngeo_dir();
  #endif

Some open source packages are already adopted to Amiga-like operating systems.
If you find something like *#ifdef __AMIGA__* in the source you can try to add
the define to the config options (e.g. CFLAGS="-nix -D__AMIGA__").


Understanding error messages
----------------------------

Error: No return statement in function returning non-void 
  There is no *return* in a function that needs a return.

Error: Control reaches end of non-void function
  It is reaching the end of a function that needs to return a value, but there is no return.

Error: May be used uninitialized in this function
  The variable is not initialized. 

Warning: implicit declaration of function 'blah blah'
  You need to include a header.


Common errors
-------------

warning: incompatible implicit declaration of built-in function 'exit';
warning: incompatible implicit declaration of built-in function 'abort'::
  
    solution: #include <stdlib.h>

warning: implicit declaration of function 'strlen';
warning: incompatible implicit declaration of built-in function 'strlen'::

    solution: #include <string.h>

warning: implicit declaration of function 'memcpy';
warning: incompatible implicit declaration of built-in function 'memcpy'::

    solution: #include <string.h>

error: memory.h: No such file or directory::

    solution: #include <string.h>

error: malloc.h: No such file or directory::

    solution: #include <stdlib.h>

warning: incompatible implicit declaration of built-in function 'printf'::

    solution: #include <stdio.h>

warning: implicit declaration of function 'MyRemove'::

    solution: #define MyRemove Remove


Tips and tricks
---------------

How do I search for text strings using GREP?

::

  grep -R "I am looking for this" *

How do I make a DIFF file with my changes?

::

  diff originalfile.c mychangedfile.c >./originalfile.patch

My executeable is crashing, how do I debug it?
  Look in `Debugging manual <debugging>`_. You can use sys:utilities/snoopy to find out
  what your application tries to do.

How do I redirect GCC warnings and errors to a text file?

::

  make 2>warnings.txt

