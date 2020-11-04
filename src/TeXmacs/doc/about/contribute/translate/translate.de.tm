<TeXmacs|1.0.4.2>

<style|tmdoc>

<\body>
  <tmdoc-title|Internationalisierung>

  Die Unterst�tzung f�r m�glichst viele verschiedene Sprachen ist ein
  wichtiges Anliegen, bei dem Hilfe sehr willkommen ist. Die �bersetzung zur
  Unterst�tzung einer neuen Sprache ist eine Arbeit von einigen Tagen. Wir
  empfehlen daher Freunde oder Kollegen zu finden, die daran mitarbeiten.

  Das Prozedere f�r eine neue Sprache ist das folgende:

  <\itemize>
    <item>Sie kopieren die Datei <verbatim|english-new.scm> nach
    <verbatim|english-<em|yourlanguage>.dic> in das Verzeichnis
    <verbatim|langs/natural/dic> und tragen die entsprechenden �bersetzungen
    ein. Sie m�chten vielleicht Andrey Grozin's W�rterbuch-Werkzeug

    <\verbatim>
      \ \ \ \ https://www.texmacs.org/Data/dictool.py.gz
    </verbatim>

    benutzen. Dazu muss Python installiert sein. Laden sie die Datei
    herunter, benutzen Sie gunzip um es zu dekomprimieren, �ndern Sie die
    Berechtigungen, um es ausf�hrbar zu machen und starten Sie es.

    <item>Teilen Sie mir spezielle typographische Regeln Ihrer Sprache mit
    und geeignete Kurzbefehle zur Erzeugung spezieller Buchstaben.

    <item>Ich sorge f�r die Trennungsregeln. Sie m�ssen sie aber testen.

    <item>Wenn Sie genug Zeit haben, k�nnten Sie �berlegen, ob Sie (einen
    Teil) der existierenden Dokumentation �bersetzen wollen.
  </itemize>

  Nat�rlich �ndert sich die �bersetzung immer, wenn Neues hinzukommt. Deshalb
  gibt es die Datei <verbatim|miss-english-<em|yourlanguage>.dic> mit den
  fehlenden �bersetzungen. Bitte senden Sie ruhig noch nicht vollst�ndige
  Versionen von <verbatim|english-<em|yourlanguage>.dic> oder
  <verbatim|miss-english-<em|yourlanguage>.dic>; irgendjemand ist vielleicht
  bereit sie zu vollenden.

  <tmdoc-copyright|1998--2002|Joris van der Hoeven>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<\initial>
  <\collection>
    <associate|language|german>
  </collection>
</initial>