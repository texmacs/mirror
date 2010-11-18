<TeXmacs|1.0.7.7>

<style|tmdoc>

<\body>
  <tmdoc-title|Matching brackets and big operators>

  In an upcoming version of <TeXmacs>, it is planned that brackets inside
  mathematical formulas always match: as soon as you enter <math|(> <TeXmacs>
  will automatically insert <math|)>. You may switch this mode on using
  <menu|Edit|Preferences|Experimental|Force matching brackets>. Attention
  (see also below): brackets in old documents will be automatically be
  upgraded to matching brackets.

  Sometimes, you do not want the closing bracket, or you may want to replace
  it by another closing bracket. No problem: if your cursor is just before
  the closing bracket inside <math|(a,b<value|cursor>)>, then
  pressing<nbsp><key|]> will turn the expression into
  <math|(a,b]<value|cursor>>. Alternatively, deletion of a bracket will
  actually turn it into an <hlink|invisible
  bracket|man-semantics-symbols.en.tm#nobracket>, after which you can replace
  it by an arbitrary opening or closing bracket.

  In the new mode, entering a vertical bar <key|\|> will now produce an
  absolute value. In order to obtain a bar-separator, you will need to type
  <shortcut|\|>. The binary relation ``divides'' is entered using
  <shortcut|\<divides\>>. You are also able to toggle between small and large
  brackets using <shortcut|(alternate-toggle (focus-tree))>.

  Big operators such as <math|<op|<big|sum>>> are also treated in a special
  way when selecting <menu|Force matching brackets>, because must have a
  scope. The scopes of big operators are indicated visually, through the
  light cyan boxes around the tags which contain the cursor.

  <\warning>
    When selecting <menu|Edit|Preferences|Experimental|Force matching
    brackets>, opening any of your old documents will automatically upgrade
    brackets and big operators to the new format. Since this process involves
    several heuristics, we do not recommend you to save any important
    documents in the new format: we first have to make sure that our
    heuristic upgrading procedure is as good as possible.

    We need your help with this: please try to load (and not save) some of
    your old documents and check that all brackets match in the correct way,
    by enabling the package <menu|Document|Add
    package|Utilities|math-brackets>. The nesting level of brackets and big
    operators is indicated through the use of different colors.

    In addition to <menu|Force matching brackets>, you may find it useful to
    select <menu|Correct presentation markup> and <menu|Correct invisible
    markup>, which will clean up your document a bit. Again the cleaning is
    heuristic and may still be error-prone; all feedback is welcome.
  </warning>

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