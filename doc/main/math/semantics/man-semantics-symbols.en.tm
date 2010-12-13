<TeXmacs|1.0.7.8>

<style|tmdoc>

<\body>
  <tmdoc-title|Properties of mathematical symbols>

  The mathematical symbols in <TeXmacs> all come with a certain number of
  properties which correspond to their intended meaning. For instance,
  <TeXmacs> is aware that <math|<op|+>> is an infix operator, whereas
  <math|!> is rather a postfix, and <math|,> a separator.

  <TeXmacs> has special symbols <math|\<mathe\>=2.71828\<cdots\>>,
  <math|\<mathpi\>=3.14159\<cdots\>> and <math|\<mathi\>> for important
  mathematical constants, which display differently from the mere characters
  <math|e>, <math|\<pi\>> and <math|i>, and which can be entered using the
  shortcuts <shortcut|\<mathe\>>, <shortcut|\<mathpi\>> and
  <shortcut|\<mathi\>>. We recommend to systematically use these shortcuts.

  Inversely, semantically distinct symbols may display in a similar way. For
  instance, the comma separator, as in <math|f<around|(|x,y|)>>, is different
  from the decimal comma, as in <math|3\<comma\>14159\<cdots\>>. Notice that
  the two symbols admit different spacing rules.

  Potentially more confusing are the various invisible symbols supported by
  <TeXmacs>:

  <\itemize>
    <item>The multiplication, entered by <key|*>. Example: <math|a*b>.

    <item>Function application, entered by <key|space>. Example: <math|sin
    x>.

    <item>An invisible separator, entered by <shortcut|\<nocomma\>>. Example:
    the matrix <math|A=<around|(|a<rsub|i\<nocomma\>j>|)>>.

    <item>An invisible addition, entered by <shortcut|\<noplus\>>. Example:
    <math|17\<noplus\><frac*|3|8>>.

    <item>An invisible symbol, entered by <shortcut|\<nosymbol\>>. Example:
    the increment <math|\<nosymbol\>+1>.

    <item><label|nobracket>An invisible bracket (mainly for internal use).
  </itemize>

  Again it is recommended that authors carefully enter these various
  invisible symbols when appropriate. It is particularly important to
  distinguish between multiplication and function application, since there is
  no 100% safe automatic way to make this distinction (consider for instance
  the formulas <math|a<around|(|b+c|)>> and <math|f<around|(|b+c|)>>).

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