<TeXmacs|1.0.7.2>

<style|tmdoc>

<\body>
  <tmdoc-title|Editing sessions>

  Inside input fields of sessions, the cursor keys have a special meaning:
  when moving upwards or downwards, you will move to previous or subsequent
  input fields. When moving to the left or to the right, you will never leave
  the input field; you should rather use the mouse for this.

  Some facilities for editing input, output and text fields are available in
  the <menu|Session|Field> menu. Keyboard shortcuts for inserting fields are
  <key|A-<key-up>> (insert above) and <key|A-<key-down>>. Keyboard shortcuts
  for removing matching text/input/output fields are <key|A-<key-backspace>>
  (remove backwards) and <key|A-<key-delete>> (remove current fields).

  It is possible to create ``subsessions'' using <menu|Session|Session|Create
  subsession> or <key|A-<key-right>>. In that case, the current input-output
  field becomes the body of an unfolded subsession. Such a subsession
  consists of an explanatory text together with the subsession body.
  Subsessions can be folded and unfolded using <key|M-A-<key-up>>
  <abbr|resp.> <key|M-A-<key-down>>. Subsessions have a nice rendering on the
  screen when using the <tmpackage|varsession> package in <menu|Document|Use
  package|Program>.

  Other useful editing operations are <menu|Session|Session|Clear all
  fields>, which is useful for creating a demo session which will be executed
  later on, and <menu|Session|Split session>, which can be used for splitting
  a session into parts for inclusion into a paper.

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
    <associate|language|english>
  </collection>
</initial>