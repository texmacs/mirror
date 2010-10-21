<TeXmacs|1.0.7.7>

<style|tmdoc>

<\body>
  <tmdoc-title|Semantics of mathematical formulas>

  The most intersting new feature of <TeXmacs> is the possibility to parse
  mathematical expressions. You may check the correctness of formulas that
  you type by selecting the package <menu|Edit|Preferences|Experimental|Semantic
  editing> (doing this is always safe). While typing, you will see
  a<nbsp>green box indicate the innermost subformula which contains your
  cursor. If the formula is incorrect, the box will turn into red.

  For your old documents, it is also possible to verify their correctness, by
  selecting the package <menu|Document|Add package|Utilities|math-check>. All
  incorrect formulas will be highlighted. In general, the result will be a
  disaster and you will need to select all preferences <menu|Force matching
  brackets>, <menu|Correct presentation markup> and <menu|Correct invisible
  markup> in the <menu|Edit|Preferences|Experimental> submenu in order to
  improve things a bit. Recall however that this may heavily modify your
  document, so we do not recommend to save any important work after selection
  of these additional preferences.

  <tmdoc-copyright|2010|Joris van der Hoeven>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<\initial>
  <\collection>
    <associate|language|english>
  </collection>
</initial>