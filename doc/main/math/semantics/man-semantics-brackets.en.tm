<TeXmacs|1.0.7.8>

<style|tmdoc>

<\body>
  <tmdoc-title|Matching brackets and big operators>

  From version 1.0.7.8 of <TeXmacs> on, <hlink|brackets inside mathematical
  formulas always match|../keyboard/man-large.en.tm>: as soon as you enter
  <math|(> <TeXmacs> will automatically insert <math|)>. You may switch this
  mode on using <menu|Edit|Preferences|Experimental|Force matching brackets>.
  Attention (see also below): brackets in old documents will be automatically
  be upgraded to matching brackets.

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