<TeXmacs|1.99.12>

<style|<tuple|tmdoc|german|old-spacing|old-dots>>

<\body>
  <tmdoc-title|Dokumente drucken>

  Sie k�nnen das aktuelle Dokument mit <menu|File|Print|Print all> als Ganzes
  ausdrucken. vollst�ndig. Die Drucker-Voreinstellung von <TeXmacs> sind
  600dpi Drucker f�r A4 Papier. Diese Einstellungen k�nnen im Men�
  <menu|File|Page setup...> angepasst werden. Sie k�nnen auch in eine
  Postscript-Datei mit <menu|File|Print|Print all to file>. In diesem Fall
  werden die Drucker-Voreinstellungen f�r die Erstellung der Datei benutzt.
  Sie k�nnen alternativ auch <menu|File|Export|Postscript> benutzen, in
  diesem Fall werden die Voreinstellungen ignoriert.

  Sie k�nnen die aktuelle Datei in <acronym|PDF> umwandeln mit
  <menu|File|Export|Pdf>. Beachten Sie bitte, dass Sie den Schrifttyp
  <em|<name|Type 1>> mit <menu|Edit|Preferences|Printer|Font type|Type 1>,
  wenn Sie haben wollen, dass die so erzeugte Postscript- bzw.
  <acronym|PDF>-Datei \ <name|Type 1>-Schriften <index|pdf>verwendet.
  Allerdings lassen nur die CM-Schriftarten <name|Type 1> zu. Diese
  CM-Schriftarten haben eine etwas schlechtere Qualit�t als die
  EC-Schriftarten haupts�chlich bei Buchstaben mit Akzenten. Deshalb m�chten
  Sie vielleicht lieber EC-Schriftarten verwenden, solange Sie nicht
  PDF-Dateien erzeugen wollen, die im <name|Acrobat Reader> gut ausschauen.

  Wenn Sie den <TeXmacs> richtig konfiguriert haben, dann ist die Darstellung
  im Editor garantiert <em|wysiwyg>: das Druckresultat ist genau das, was Sie
  auf dem Bildschirm sehen. Um das zu erreichen, m�ssen Sie vor allem die
  richtige Papiergr��e mit <menu|Document|Page|Type|Paper> und
  <menu|Document|Page|Screen margins|Margins as on paper> einstellen. Sie
  sollten unbedingt sicherstellen, dass die mit <menu|Document|Font|Dpi>
  festzulegende Aufl�sung genau derjenigen Ihres Druckers entspricht.
  Momentan k�nnen geringf�gige Unterschiede im Schriftsatz auftreten, wenn
  Sie die Aufl�sung �ndern. Leider k�nnen diese geringen Unterschiede durch
  Zeilen- und Seitenumbr�che das ganze Dokument ver�ndern. Dies wollen wir in
  Zukunft �ndern.\ 

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
    <associate|page-medium|paper>
    <associate|preamble|false>
  </collection>
</initial>