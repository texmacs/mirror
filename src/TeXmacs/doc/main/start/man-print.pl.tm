<TeXmacs|1.99.12>

<style|<tuple|tmdoc|polish|old-spacing|old-dots>>

<\body>
  <tmdoc-title|Drukowanie dokument�w>

  Bie��cy dokument mo�na wydrukowa� u�ywaj�c <menu|File|Print|Print all>.
  Domy�lnie <TeXmacs> zak�ada i� drukarka u�ywa papieru a4 i rozdzielczo�ci
  600dpi. Te ustawienia mog� by� zmieniane poprzez <menu|File|Page setup...>
  . Mo�na te� wydrukowa� do pliku postscript u�ywaj�c <menu|File|Print|Print
  all to file> (w tym przypadku s� u�ywane domy�lne ustawienia drukarki) lub
  <menu|File|Export|Postscript> (w tym przypadku ustawienia drukarki s�
  ignorowane).

  Mo�na eksportowa� do formatu <acronym|PDF> u�ywaj�c <menu|File|Export|Pdf>.
  Nale�y ustawi� <menu|Edit|Preferences|Printer|Font type|Type 1> je�li
  stworzone pliki Postscript czy <acronym|PDF> maja korzysta� z czcionki
  <name|Type 1>.<index|pdf> Jednak tylko czcionka CM dopuszcza wersj�
  <name|Type 1>. Czcionki CM s� odrobin� gorszej jako�ci ni� czcionki EC,
  g��wnie przy znakach z ogonkami/akcentami. Zatem, mo�na preferowa� u�ywanie
  czcionek EC tak d�ugo jak nie potrzeba pliku <acronym|PDF> kt�ry wygl�da
  �adnie w <name|Acrobat Reader>.

  Po odpowiednim skonfigurowaniu <TeXmacs> jest edytorem <em|wysiwyg>: wynik
  po wydrukowaniu jest dok�adnie identyczny z tym widocznym na ekranie. Aby
  ta zgodno�� by�a pe�na powinno si� ustawi� <menu|Document|Page|Type|Paper>
  i <menu|Document|Page|Screen layout|Margins as on paper>. Dodatkowo nale�y
  si� upewni� i� znaki na ekranie s� w tej samej rozdzielczo�ci (dpi, punkty
  na cal) jak w drukarce. Dok�adno�� wy�wietlania znak�w mo�e by� zmieniana
  przy pomocy <menu|Document|Font|Dpi>. Obecnie drobne zmiany w uk�adzie
  dokumentu mog� mie� miejsce po zmianie dpi, dotyczy to g��wnie �amania lini
  i stron. W przysz�ych wersjach ta niedogodno�� zostanie usuni�ta.

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
  </collection>
</initial>