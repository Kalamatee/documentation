========================================
����������� ������������ ���������� Zune
========================================

:Authors:   David Le Corfec
:Copyright: Copyright � 2004, The AROS Development Team
:Version:   $Revision: 24429 $
:Date:      $Date: 2006-05-07 22:24:40 +0500 (��, 07 ������ 2006) $
:Status:    Unfinished;
:ToDo:      All


.. Contents::


------------
�����������
------------

��� ����� Zune?
===============

Zune �������� ��������-��������������� ������� ��� ���������� ���������� � 
����������� ����������� ������������ (GUI).  
��� ����������� ������ ������ MUI (Magic User Interface), ��� �� ������ API, ��� 
� �� ������ Look&Feel, ������ ����������� �� Amiga shareware-���������� ������� �������. 
����� �������, ������������ ������� MUI, ����������� ���� ����� "��� ����", 
� ��������� ������ ������� ������� � �����������, ����� ��� ����� �������. 
�������������, ���:

+ ����������� ����� ��������� ������� ������ ������� ��� �������������� 
  ����������: � Zune ��� �������� ��������� ���������� � ���������� ���������, 
  ����� ������������� � ������ ������� � ���� ���������� ������� � ������������ 
  ����� ���� � ����������� �� ������� ������������. Zune ������������� 
  ������������� ������ � ��������� �������������� ����������, � ��� �������� 
  (�����, ��� ������ �������� �� ���� ���� � ��������) ������������ �������������.

+ ������������ ������� ����� �������������� ��� � ��������� ����������, 
  ����������������� �������������, �� �������� ����������� ������������� 
  ��������� ���������� ��������� Zune. 


Zune ������� �� ������� BOOPSI (Basic Object Oriented Programming System for Intuition), 
�������������� �� AmigaOS � ������������ � 
��������-��������������� ���������������� �� ��. ������ Zune �� �������� 
��������� �� ��������� � ������������ ��� ��������� ���������� ������� BOOPSI 
(�.�., �� �������� ������� ����������� �� ������������). ��������, ������� ������� 
(� �������� Zune) �������� ����� Notify � �������� ������������ ��������� 
������ BOOPSI.


����������� 
===========

��� ��������� ��������� Zune, ����� ��� �������������� ������ ��������� 
��������-���������������� ���������������� (���). �� ������ ��������������� 
Google ��� ������ � �������� ��������������� ����������, ����������� ���.

�����, ����������, �������� ������ ��������� ��������� AROS (� AmigaOS), ��� 
������ ����� (taglist) � ������� BOOPSI. ������� ���������� �����, ����������, 
�������� ����������� "Amiga Reference Kernel Manuals" (��������� ��� RKM).

��������� Zune �������� �������� MUI, ��� ������������, ������� ��������� � MUI, 
��������� � � Zune. � ���������, ��������� ������ �������������� ��� ������������� 
����������� MUI �������� �����__. ����� ������, � ���� LHA-������ ���� 2 ��������� 
�������� ������������� � ���������:


+ `MUIdev.guide`, ������������ MUI-������������.
+ `PSI.c`, �������� ��� ����������, ���������������� ��� ����������� ������ 
   �������������� � �������� ������������ �������� ����������� MUI. 
   
__ http://main.aminet.net/dev/mui/mui38dev.lha

����� ���� ����� �������� ������������ (MUI autodocs), ������� �������� 
��������� � ��� ���� ������������ ������� Zune. 

-----------------
���������� BOOPSI
-----------------

���������
=========

BOOPSI

�����
-----

����� (class), �� ����, �������� ���� ��������� ���������, ����������� �������
������������ ������ (�������, ���������� � ������) � ������� 
������, ������������ ������� � ����������� (dispatcher). �������� �������� 
����� �������� ���� � ������� ������.

+ ���: � ������, ���� ����� �������� ����� (public) - ��� ������, ��������������� 
  �������� ������ � ��� ������� ���������, ��� ������ ��� ��������� ������ ���������� 
  � �������. � ������, ���� ����� �������� ��������� (private) - �����������, � 
  ����� ����� �� ����� �������������� �����, ����� ������-������������� ����������. 

+ ������������ �����: ��� ������ BOOPSI ����������� � ������������� �������, 
  � �������� ��������� �� ��������� � ��������� ������ rootclass. ��� ��������� 
  ������� ��������� ����� ����������� ������ ��������, ����������� �� 
  ������������, ���� �� �� �����, ��� � � ��������. �����, 
  ���������� ���������, ����� �������� ������� (base class) ��� ������������ (super class). 

+ ���������: ������������� ������ �� ���� ��������� ������, ������� �������� 
  ��������. �����������, ��� ������ �������� ����� 
  ���������� ����������� ���������������� �� ���� ��� ����� �������� 
  �������� ������� ������ (�����������). 

� BOOPSI ����� ������ �������� ``Class *`` ��� ``IClass``.

������
------

������ �������� ����������� �������� (�����������) ������. ������ ������ �������� ������ 
����������, �� ��� ������� ������ ������ ����� ���� ������� �������. ������ 
��������� � ���������� �������, ���� ��������� �� �� ���� ������ (���� �� ������������ 
�������) �� ��������� ������ rootclass. 

��� ������� ����� BOOPSI �������� ``Object *``. �� �� �������� ��������� 
�������� �����.

�������
-------

������� ��������� � ����� � ���������� ������ ������� �������:  
�������� ��� ������ ��������������� �� �� ������. �������� ������ ���������� ��� �������� 
�������� ��������� ������� (����� ���������� ����������) ��� ��������� ��� 
����������� ���������. �������� ������� (�� ������� �������) ������������� 
� ������ (Tag) (�� ������� ������������) (��� ��������, ������� ��� ``ULONG`` 
� ��������� � ``TAG_USER``).

��� ��������� ��������� �������� ������������ ������� ``GetAttr()`` � ``SetAttrs()``.

�������� (���� ��� ���������) ����� ���� ��������� �����:

+ ����������� ��� ��������� (Initialization-settable) (``I``) : ������� ����� 
    ���� ������� ��� �������� ���� ��� �������� �������. 
+ ��������� ��� ��������� (Settable) (``S``) : ����� ���������� �������� ����� �������� � 
    ����� ����� (�� ������ ��� �������� �������). 
+ ��������� ��� ������ (Gettable)(``G``) : �� ������ ���� �������� �������� ��������. 

����� 
-----

������� � BOOPSI ���������� �������, ������� � ���� ���������� ���������� 
��� �������, ��� ����� � ���������:

+ ������: ��� �������, ��� ������� ������������ ��������. 
+ �����: �����, ��������������� �������.
+ ���������: �������� ������������� (ID) ������, ������������ �������, 
  ���������� ����������� � ������������ �� ���������

��� �������� ��������� ������� ������������ ������� ``DoMethod()``. ������� ����� 
����� ������� � ���������� ������. ���� � ������ ��������� ���� �����, �� 
��������� ����� ����������. � ��������� ������, ����� ������������ ������������ 
������ �� ��� ���, ���� ��������� �� ����� ���������� ����� �� ���, ��� �� ����� 
��������� rootclass (� ���� ������ ��� � �� ����������� ��������� ����� 
����� ����������). 

�������
=======

���������� �������� ����� ��������-���������������� ���������������� � BOOPSI:

��������� �������� 
------------------
��������� ��������� ������ ������� MUI String::

    void f(Object *string)
    {
        IPTR result;
        
        GetAttr(string, MUIA_String_Contents, &result);
        printf("String content is: %s\n", (STRPTR)result);
    }


����� string - ������, MUIA_String_Contents - ���������� �������, &result -
��������� �� ������ � ����������� ���� ��������. � ���� ��:

+ ``Object *`` �������� ����� �������� BOOPSI.
+ ��� ��������� ������������� �������� ������ �������������� ��� ``IPTR``,
   ������� ��� �������� ����� ���� ����� ������ ���� ����������. IPTR ������
   ����������� � ������, � ������������� ����� ������������� ���� ������� ��
   ����� � �����������!
+ ����� �� ����������� �������� ������� MUI String: ``MUIA_String_Contents``, 
    ��� � ����� ������ �������, ����� ��� ``ULONG`` (��� ���).

� ����������� Zune ������ ��������� ������� ����� ������������ ������� ``get()`` 
� `XGET()``. ��������::

    get(string, MUIA_String_Contents, &result);
    
    result = XGET(string, MUIA_String_Contents);


��������� �������� 
------------------

������ ������� ����������� ���� ������::

    SetAttrs(string, MUIA_String_Contents, (IPTR)"hello", TAG_DONE);

+ ���������, ������������ � �������� ���������� ������ ����� ��� `IPTR` 
    (��������� �� ����� ����������, ����� ��������� ����� �������� ���� int) 
    ����� ���������� ����� �������� ��������������.
+ ����� �� ���������, ������� `SetAttrs` ��������� ������ �����, �������
    ������������ ������ ������������� �� `TAG_DONE`.

��� ��������� ��������� �������� ������ ``set()``::

    set(string, MUIA_String_Contents, (IPTR)"hello");

������, ������ � ������� SetAttrs() �� ������� ���������� ��������� ��������� 
�� ���� ���::

    SetAttrs(string,
             MUIA_Disabled, TRUE,
             MUIA_String_Contents, (IPTR)"hmmm...",
             TAG_DONE);


����� ������ 
------------

���������� �������� ����� ����������� � ���������� Zune �����, ����� 
��������� �������, ���������� � �������� ����� ���������::

    result = DoMethod(obj, MUIM_Application_NewInput, (IPTR)&sigs);

+ ��������� ������� ������ �� �������� ������� �����, � �� ������ ������������� � 
    ``TAG_DONE``
+ ��������� ���������� ������������ ��� ``IPTR`` ����� �������� ��������������,
    �� ���� ����� �� ���������� �� ��������

-----------
Hello world
-----------

.. Figure:: zune/images/hello.png

    � ������, ��� � ������. ��� ��������� ������� �� �������������� ��������.
  

�������� ��� 
============

���������� ��� ������ �������� ������::

    // gcc hello.c -lmui
    #include <exec/types.h>
    #include <libraries/mui.h>
    
    #include <proto/exec.h>
    #include <proto/intuition.h>
    #include <proto/muimaster.h>
    #include <clib/alib_protos.h>
    
    int main(void)
    {
        Object *wnd, *app, *but;
    
        // �������� GUI: ���� wnd, ������ Hello world! � ������ Ok
        app = ApplicationObject,
            SubWindow, wnd = WindowObject,
            MUIA_Window_Title, "Hello world!",
            WindowContents, VGroup,
                Child, TextObject,
                MUIA_Text_Contents, "\33cHello world!\nHow are you?",
                End,
                Child, but = SimpleButton("_Ok"),
                End,
            End,
            End;
    
        if (app != NULL)
        {
            ULONG sigs = 0;
    
            // ������� �� ������� �������� ���� � ����� �� ������� Escape
            DoMethod(wnd, MUIM_Notify, MUIA_Window_CloseRequest, TRUE,
                     (IPTR)app, 2,
                     MUIM_Application_ReturnID, MUIV_Application_ReturnID_Quit);
    
            // ������� �� ������� ������ ������
            DoMethod(but, MUIM_Notify, MUIA_Pressed, FALSE,
                     (IPTR)app, 2,
                     MUIM_Application_ReturnID, MUIV_Application_ReturnID_Quit);
    
            // ��������� ���� wnd
            set(wnd, MUIA_Window_Open, TRUE);

            // ���������, ��� ���� wnd ������������� ���� �������
            if (XGET(wnd, MUIA_Window_Open))
            {
                // �������� ���� ���������� Zune
            while((LONG)DoMethod(app, MUIM_Application_NewInput, (IPTR)&sigs)
                  != MUIV_Application_ReturnID_Quit)
            {
                if (sigs)
                {
                sigs = Wait(sigs | SIGBREAKF_CTRL_C);
                if (sigs & SIGBREAKF_CTRL_C)
                    break;
                }
            }
            }
        // ���������� ���� ���������� �� ����� ��� ���������
            MUI_DisposeObject(app);
        }
        
        return 0;
    }


�����������
===========

��������� 
---------

�� �� ��������� ���������� ������� �.�. ��� �������� �� ��� �������������.

�������� GUI ���������� 
-----------------------

�� ������������ ������� ��� ���������� ���������������� ���������� ���������.
���������� Zune ������ ����� 1 (� ������ 1) ������ ���������� (ApplicationObject)::

    :    app = ApplicationObject,

���������� ����� ����� 0,1 ��� ����� �������� ���� WindowObject. ���� ����� ���� -
���� ������������::

    :        SubWindow, wnd = WindowObject,

����� ������, ���� ��������� ���� ����� ��������� �������� ����������::


    :        MUIA_Window_Title, "Hello world!",

���� ����� ����� 1 (� ������ 1) �������� ������ (Child), ������ ��� ������ (group). 
���� ������ ����� ������������ (VGroup), ��� ��������, ��� ��� �������� � �� 
�������� ������� (children) ����� �������������� �� ���������:


    :        WindowContents, VGroup,

������ ������ �����, ��� ������� 1 �������� ������. � ����� ������, ��� ����� 
������������ ����� (TextObject)::


    :            Child, TextObject,

� Zune �������������� ��������� escape-���� (����, ����� \33c ������������ 
������������� ������) � ������� ������� ( \n )::


    :            MUIA_Text_Contents, "\33cHello world!\nHow are you?",

������ ``End`` ������ ��������� �������� ������ ������� ���� ``xxxObject`` (� 
����� ������, TextObject)::


    :            End,

������ ������� � ���� ������ ������ �������� ������, ������! ������ ����, ��� 
����� ����������� �� ���������� ������ RAmiga + O (������ �� ��� �������� 
������������� �� ����� "O")::

    :            Child, but = SimpleButton("_Ok"),

��������� �������� ������::

    :            End,  

��������� �������� ����::

    :        End,

��������� �������� ���������::

    :        End;

� ���, �� �� ��� �������� � ����������� ������������ ��� �������� GUI ? :-)


��������� ������ 
----------------

���� �������� ����������� �������� ������ �� �������� � ��������� ��������� 
���� ����, Zune ��������� ��� ������� (������� ��, ������� ������� �������) 
� ��������� ��� ������. � �������� ������, �� �������� ��������� ������� 
Zune ��������� ����������::

    :    if (app != NULL)
    :    {
    :        ...


���� ������ ���������� �����������, ���������� ����� ``MUI_DisposeObject()`` 
� ��������� ��������� �� ��������� ������ ����������. ��� ���������� ��� 
����������� ���� ��������� �������� � ������������ ���� �������������� ��������::


    :       ...
    :        MUI_DisposeObject(app);
    :    }


��������� ��������� 
-------------------

��������� ��������� ����������� �������� ������� ������� ��������� �� 
����������� ������� (����� ���, ������� ������). �������: �� �������� ���������, 
����� ����������� ������� ������������ ������� ������ 
����������� ��������::


    :        DoMethod(wnd, MUIM_Notify, MUIA_Window_CloseRequest, TRUE,

����� �� �������, ����� ������� ``MUIA_Window_CloseRequest`` ������� 
������ ���� (wnd) ����� ���������� � ``TRUE`` (������������ ����� ������),
� ���� ������ ������ ���������� ������� ���������, �������������� ���
������� ��� ``MUIV_Application_ReturnID_Quit`` �� ��������� �� �������� �����
��������� �������::

    :                 (IPTR)app, 2,
    :                 MUIM_Application_ReturnID, MUIV_Application_ReturnID_Quit);

��������� � ���� ������ ����� ���� ������� ����� ���������, ���������� ������� ����� 
�������������� ����������, ������������ MUIM_Notify: � ���� ������, 2 ���������.

For the button, we listen to its ``MUIA_Pressed`` attribute: it's set to ``FALSE``
whenever the button is being *released* (reacting when it's pressed is bad
practice, you may want to release the mouse outside of the button to cancel
your action - plus we want to see how it looks when it's pressed). The action
is the same as the previous, send a message to the application::

    :        DoMethod(but, MUIM_Notify, MUIA_Pressed, FALSE,
    :                 (IPTR)app, 2,
    :                 MUIM_Application_ReturnID, MUIV_Application_ReturnID_Quit);


�������� ���� 
-------------

Windows aren't open until you ask them to::

    :        set(wnd, MUIA_Window_Open, TRUE);

If all goes well, your window should be displayed at this point. But it can
fail! So don't forget to check by querying the attribute, which should be TRUE::

    :        if (XGET(wnd, MUIA_Window_Open))


���� ����������
---------------

Let me introduce you my lil' friend, the ideal Zune event loop::

    :        ULONG sigs = 0;

Don't forget to initialize the signals to 0 ... The test of the loop
is the MUIM_Application_NewInput method::

    :        ...
    :        while((LONG) DoMethod(app, MUIM_Application_NewInput, (IPTR)&sigs)
    :              != MUIV_Application_ReturnID_Quit)

It takes as input the signals
of the events it has to process (result from ``Wait()``, or 0),
will modify this value to place the signals Zune is waiting for (for the
next ``Wait()``) and will return a value. This return value mechanism
was historically the only way to react on events, but it was ugly and
has been deprecated in favor of custom classes and object-oriented design.

The body of the loop is quite empty, we only wait for signals and handle
Ctrl-C to break out of the loop::

    :        {
    :            if (sigs)
    :            {
    :                sigs = Wait(sigs | SIGBREAKF_CTRL_C);
    :                if (sigs & SIGBREAKF_CTRL_C)
    :                    break;
    :            }
    :        }


����������
----------

This program gets you started with Zune, and allows you to toy with
GUI design, but not more.


------------------
������� �� ������� 
------------------

As seen in hello.c, you use MUIM_Notify to call a method if a certain condition
happens.
If you want your application to react in a specific way to events, you can use
one of these schemes:

+ MUIM_Application_ReturnID: you can ask your application to return an
  arbitrary ID on the next loop iteration, and check for the value in
  the loop. This is the dirty old way of doing things.
+ MUIM_CallHook, to call a standard Amiga callback hook: this is an average
  choice, not object-oriented but not that ugly either.
+ custom method: the method belongs to one of your custom class. It is the
  best solution as it supports object-oriented design in applications.
  It needs you to create custom classes so it may not be the easiest for
  beginners or people in a hurry.
