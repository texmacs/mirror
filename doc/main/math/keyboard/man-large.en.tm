<TeXmacs|1.0.7.8>

<style|tmdoc>

<\body>
  <tmdoc-title|Typing large delimiters>

  Brackets inside mathematical formulas should always match: as soon as you
  enter an opening bracket ``<math|(>'', <TeXmacs> will automatically insert
  the matching closing bracket ``<math|)>''. You may disable this feature
  using <menu|Edit|Preferences|Keyboard|Automatic brackets|Disable>.
  Attention (see also below): brackets in old documents will be automatically
  be upgraded to matching brackets.

  Sometimes, you do not want the closing bracket, or you may want to replace
  it by another closing bracket. No problem: if your cursor is just before
  the closing bracket inside <math|<around|(|a,b<value|cursor>|)>>, then
  pressing<nbsp><key|]> will turn the expression into
  <math|<around|(|a,b|]><value|cursor>>. Alternatively, deletion of a bracket
  will actually turn it into an <hlink|invisible
  bracket|../semantics/man-semantics-symbols.en.tm#nobracket>, after which
  you can replace it by an arbitrary opening or closing bracket.

  In the new mode, entering a vertical bar <key|\|> will now produce an
  absolute value. In order to obtain a bar-separator, you will need to type
  <shortcut|\|>. The binary relation ``divides'' is entered using
  <shortcut|\<divides\>>. You are also able to toggle between small and large
  brackets using <shortcut|(alternate-toggle (focus-tree))>.

  By default, the sizes of the brackets are not adjusted to the expression in
  between. Large delimiters are created as follows:

  <\big-table>
    <descriptive-table|<tformat|<cwith|3|7|2|2|cell-halign|c>|<cwith|3|7|4|4|cell-halign|c>|<cwith|4|7|1|1|cell-rborder|0.5ln>|<cwith|4|7|1|1|cell-bborder|0.5ln>|<cwith|4|7|1|1|cell-lborder|0.5ln>|<cwith|3|7|1|1|cell-lsep|1spc>|<cwith|3|7|1|1|cell-rsep|1spc>|<cwith|3|7|1|1|cell-bsep|1spc>|<cwith|3|7|1|1|cell-tsep|1spc>|<cwith|5|5|1|1|cell-rborder|0.5ln>|<cwith|5|5|1|1|cell-bborder|0.5ln>|<cwith|5|5|1|1|cell-lborder|0.5ln>|<cwith|5|5|1|1|cell-lsep|1spc>|<cwith|5|5|1|1|cell-rsep|1spc>|<cwith|5|5|1|1|cell-bsep|1spc>|<cwith|5|5|1|1|cell-tsep|1spc>|<cwith|3|3|1|1|cell-rborder|0.5ln>|<cwith|3|3|1|1|cell-bborder|0.5ln>|<cwith|3|3|1|1|cell-lborder|0.5ln>|<cwith|3|3|1|1|cell-lsep|1spc>|<cwith|3|3|1|1|cell-rsep|1spc>|<cwith|3|3|1|1|cell-bsep|1spc>|<cwith|3|3|1|1|cell-tsep|1spc>|<cwith|3|3|1|1|cell-rborder|0.5ln>|<cwith|3|3|1|1|cell-bborder|0.5ln>|<cwith|3|3|1|1|cell-lborder|0.5ln>|<cwith|3|3|1|1|cell-lsep|1spc>|<cwith|3|3|1|1|cell-rsep|1spc>|<cwith|3|3|1|1|cell-bsep|1spc>|<cwith|3|3|1|1|cell-tsep|1spc>|<cwith|4|7|3|3|cell-rborder|0.5ln>|<cwith|4|7|3|3|cell-bborder|0.5ln>|<cwith|3|7|3|3|cell-lsep|1spc>|<cwith|3|7|3|3|cell-rsep|1spc>|<cwith|3|7|3|3|cell-bsep|1spc>|<cwith|3|7|3|3|cell-tsep|1spc>|<cwith|5|5|3|3|cell-rborder|0.5ln>|<cwith|5|5|3|3|cell-bborder|0.5ln>|<cwith|5|5|3|3|cell-lsep|1spc>|<cwith|5|5|3|3|cell-rsep|1spc>|<cwith|5|5|3|3|cell-bsep|1spc>|<cwith|5|5|3|3|cell-tsep|1spc>|<cwith|3|3|3|3|cell-rborder|0.5ln>|<cwith|3|3|3|3|cell-bborder|0.5ln>|<cwith|3|3|3|3|cell-lsep|1spc>|<cwith|3|3|3|3|cell-rsep|1spc>|<cwith|3|3|3|3|cell-bsep|1spc>|<cwith|3|3|3|3|cell-tsep|1spc>|<cwith|3|3|3|3|cell-rborder|0.5ln>|<cwith|3|3|3|3|cell-bborder|0.5ln>|<cwith|3|3|3|3|cell-lsep|1spc>|<cwith|3|3|3|3|cell-rsep|1spc>|<cwith|3|3|3|3|cell-bsep|1spc>|<cwith|3|3|3|3|cell-tsep|1spc>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|4|4|cell-halign|c>|<cwith|2|2|1|1|cell-lsep|1spc>|<cwith|2|2|1|1|cell-rsep|1spc>|<cwith|2|2|1|1|cell-bsep|1spc>|<cwith|2|2|1|1|cell-tsep|1spc>|<cwith|2|2|1|1|cell-rborder|0.5ln>|<cwith|2|2|1|1|cell-bborder|0.5ln>|<cwith|2|2|1|1|cell-lborder|0.5ln>|<cwith|2|2|1|1|cell-lsep|1spc>|<cwith|2|2|1|1|cell-rsep|1spc>|<cwith|2|2|1|1|cell-bsep|1spc>|<cwith|2|2|1|1|cell-tsep|1spc>|<cwith|2|2|1|1|cell-rborder|0.5ln>|<cwith|2|2|1|1|cell-bborder|0.5ln>|<cwith|2|2|1|1|cell-lborder|0.5ln>|<cwith|2|2|1|1|cell-lsep|1spc>|<cwith|2|2|1|1|cell-rsep|1spc>|<cwith|2|2|1|1|cell-bsep|1spc>|<cwith|2|2|1|1|cell-tsep|1spc>|<cwith|2|2|3|3|cell-lsep|1spc>|<cwith|2|2|3|3|cell-rsep|1spc>|<cwith|2|2|3|3|cell-bsep|1spc>|<cwith|2|2|3|3|cell-tsep|1spc>|<cwith|2|2|3|3|cell-rborder|0.5ln>|<cwith|2|2|3|3|cell-bborder|0.5ln>|<cwith|2|2|3|3|cell-lsep|1spc>|<cwith|2|2|3|3|cell-rsep|1spc>|<cwith|2|2|3|3|cell-bsep|1spc>|<cwith|2|2|3|3|cell-tsep|1spc>|<cwith|2|2|3|3|cell-rborder|0.5ln>|<cwith|2|2|3|3|cell-bborder|0.5ln>|<cwith|2|2|3|3|cell-lsep|1spc>|<cwith|2|2|3|3|cell-rsep|1spc>|<cwith|2|2|3|3|cell-bsep|1spc>|<cwith|2|2|3|3|cell-tsep|1spc>|<cwith|1|1|2|2|cell-halign|c>|<cwith|1|1|4|4|cell-halign|c>|<cwith|1|-1|2|2|cell-rborder|1ln>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|4|4|cell-halign|c>|<cwith|3|3|1|1|cell-lsep|1spc>|<cwith|3|3|1|1|cell-rsep|1spc>|<cwith|3|3|1|1|cell-bsep|1spc>|<cwith|3|3|1|1|cell-tsep|1spc>|<cwith|3|3|1|1|cell-rborder|0.5ln>|<cwith|3|3|1|1|cell-bborder|0.5ln>|<cwith|3|3|1|1|cell-lborder|0.5ln>|<cwith|3|3|1|1|cell-lsep|1spc>|<cwith|3|3|1|1|cell-rsep|1spc>|<cwith|3|3|1|1|cell-bsep|1spc>|<cwith|3|3|1|1|cell-tsep|1spc>|<cwith|3|3|1|1|cell-rborder|0.5ln>|<cwith|3|3|1|1|cell-bborder|0.5ln>|<cwith|3|3|1|1|cell-lborder|0.5ln>|<cwith|3|3|1|1|cell-lsep|1spc>|<cwith|3|3|1|1|cell-rsep|1spc>|<cwith|3|3|1|1|cell-bsep|1spc>|<cwith|3|3|1|1|cell-tsep|1spc>|<cwith|3|3|3|3|cell-lsep|1spc>|<cwith|3|3|3|3|cell-rsep|1spc>|<cwith|3|3|3|3|cell-bsep|1spc>|<cwith|3|3|3|3|cell-tsep|1spc>|<cwith|3|3|3|3|cell-rborder|0.5ln>|<cwith|3|3|3|3|cell-bborder|0.5ln>|<cwith|3|3|3|3|cell-lsep|1spc>|<cwith|3|3|3|3|cell-rsep|1spc>|<cwith|3|3|3|3|cell-bsep|1spc>|<cwith|3|3|3|3|cell-tsep|1spc>|<cwith|3|3|3|3|cell-rborder|0.5ln>|<cwith|3|3|3|3|cell-bborder|0.5ln>|<cwith|3|3|3|3|cell-lsep|1spc>|<cwith|3|3|3|3|cell-rsep|1spc>|<cwith|3|3|3|3|cell-bsep|1spc>|<cwith|3|3|3|3|cell-tsep|1spc>|<cwith|3|3|2|2|cell-rborder|1ln>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|4|4|cell-halign|c>|<cwith|4|4|1|1|cell-lsep|1spc>|<cwith|4|4|1|1|cell-rsep|1spc>|<cwith|4|4|1|1|cell-bsep|1spc>|<cwith|4|4|1|1|cell-tsep|1spc>|<cwith|4|4|1|1|cell-rborder|0.5ln>|<cwith|4|4|1|1|cell-bborder|0.5ln>|<cwith|4|4|1|1|cell-lborder|0.5ln>|<cwith|4|4|1|1|cell-lsep|1spc>|<cwith|4|4|1|1|cell-rsep|1spc>|<cwith|4|4|1|1|cell-bsep|1spc>|<cwith|4|4|1|1|cell-tsep|1spc>|<cwith|4|4|1|1|cell-rborder|0.5ln>|<cwith|4|4|1|1|cell-bborder|0.5ln>|<cwith|4|4|1|1|cell-lborder|0.5ln>|<cwith|4|4|1|1|cell-lsep|1spc>|<cwith|4|4|1|1|cell-rsep|1spc>|<cwith|4|4|1|1|cell-bsep|1spc>|<cwith|4|4|1|1|cell-tsep|1spc>|<cwith|4|4|3|3|cell-lsep|1spc>|<cwith|4|4|3|3|cell-rsep|1spc>|<cwith|4|4|3|3|cell-bsep|1spc>|<cwith|4|4|3|3|cell-tsep|1spc>|<cwith|4|4|3|3|cell-rborder|0.5ln>|<cwith|4|4|3|3|cell-bborder|0.5ln>|<cwith|4|4|3|3|cell-lsep|1spc>|<cwith|4|4|3|3|cell-rsep|1spc>|<cwith|4|4|3|3|cell-bsep|1spc>|<cwith|4|4|3|3|cell-tsep|1spc>|<cwith|4|4|3|3|cell-rborder|0.5ln>|<cwith|4|4|3|3|cell-bborder|0.5ln>|<cwith|4|4|3|3|cell-lsep|1spc>|<cwith|4|4|3|3|cell-rsep|1spc>|<cwith|4|4|3|3|cell-bsep|1spc>|<cwith|4|4|3|3|cell-tsep|1spc>|<cwith|4|4|2|2|cell-rborder|1ln>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|4|4|cell-halign|c>|<cwith|5|5|1|1|cell-lsep|1spc>|<cwith|5|5|1|1|cell-rsep|1spc>|<cwith|5|5|1|1|cell-bsep|1spc>|<cwith|5|5|1|1|cell-tsep|1spc>|<cwith|5|5|1|1|cell-rborder|0.5ln>|<cwith|5|5|1|1|cell-bborder|0.5ln>|<cwith|5|5|1|1|cell-lborder|0.5ln>|<cwith|5|5|1|1|cell-lsep|1spc>|<cwith|5|5|1|1|cell-rsep|1spc>|<cwith|5|5|1|1|cell-bsep|1spc>|<cwith|5|5|1|1|cell-tsep|1spc>|<cwith|5|5|1|1|cell-rborder|0.5ln>|<cwith|5|5|1|1|cell-bborder|0.5ln>|<cwith|5|5|1|1|cell-lborder|0.5ln>|<cwith|5|5|1|1|cell-lsep|1spc>|<cwith|5|5|1|1|cell-rsep|1spc>|<cwith|5|5|1|1|cell-bsep|1spc>|<cwith|5|5|1|1|cell-tsep|1spc>|<cwith|5|5|3|3|cell-lsep|1spc>|<cwith|5|5|3|3|cell-rsep|1spc>|<cwith|5|5|3|3|cell-bsep|1spc>|<cwith|5|5|3|3|cell-tsep|1spc>|<cwith|5|5|3|3|cell-rborder|0.5ln>|<cwith|5|5|3|3|cell-bborder|0.5ln>|<cwith|5|5|3|3|cell-lsep|1spc>|<cwith|5|5|3|3|cell-rsep|1spc>|<cwith|5|5|3|3|cell-bsep|1spc>|<cwith|5|5|3|3|cell-tsep|1spc>|<cwith|5|5|3|3|cell-rborder|0.5ln>|<cwith|5|5|3|3|cell-bborder|0.5ln>|<cwith|5|5|3|3|cell-lsep|1spc>|<cwith|5|5|3|3|cell-rsep|1spc>|<cwith|5|5|3|3|cell-bsep|1spc>|<cwith|5|5|3|3|cell-tsep|1spc>|<cwith|5|5|2|2|cell-rborder|1ln>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|4|4|cell-halign|c>|<cwith|6|6|1|1|cell-lsep|1spc>|<cwith|6|6|1|1|cell-rsep|1spc>|<cwith|6|6|1|1|cell-bsep|1spc>|<cwith|6|6|1|1|cell-tsep|1spc>|<cwith|6|6|1|1|cell-rborder|0.5ln>|<cwith|6|6|1|1|cell-bborder|0.5ln>|<cwith|6|6|1|1|cell-lborder|0.5ln>|<cwith|6|6|1|1|cell-lsep|1spc>|<cwith|6|6|1|1|cell-rsep|1spc>|<cwith|6|6|1|1|cell-bsep|1spc>|<cwith|6|6|1|1|cell-tsep|1spc>|<cwith|6|6|1|1|cell-rborder|0.5ln>|<cwith|6|6|1|1|cell-bborder|0.5ln>|<cwith|6|6|1|1|cell-lborder|0.5ln>|<cwith|6|6|1|1|cell-lsep|1spc>|<cwith|6|6|1|1|cell-rsep|1spc>|<cwith|6|6|1|1|cell-bsep|1spc>|<cwith|6|6|1|1|cell-tsep|1spc>|<cwith|6|6|3|3|cell-lsep|1spc>|<cwith|6|6|3|3|cell-rsep|1spc>|<cwith|6|6|3|3|cell-bsep|1spc>|<cwith|6|6|3|3|cell-tsep|1spc>|<cwith|6|6|3|3|cell-rborder|0.5ln>|<cwith|6|6|3|3|cell-bborder|0.5ln>|<cwith|6|6|3|3|cell-lsep|1spc>|<cwith|6|6|3|3|cell-rsep|1spc>|<cwith|6|6|3|3|cell-bsep|1spc>|<cwith|6|6|3|3|cell-tsep|1spc>|<cwith|6|6|3|3|cell-rborder|0.5ln>|<cwith|6|6|3|3|cell-bborder|0.5ln>|<cwith|6|6|3|3|cell-lsep|1spc>|<cwith|6|6|3|3|cell-rsep|1spc>|<cwith|6|6|3|3|cell-bsep|1spc>|<cwith|6|6|3|3|cell-tsep|1spc>|<cwith|6|6|2|2|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-halign|c>|<cwith|1|-1|3|3|cell-halign|c>|<table|<row|<cell|Shortcut>|<cell|Result>|<cell|Shortcut>|<cell|Result>>|<row|<cell|<key|math:large
    (>>|<cell|<math|<around*|(|<space|0fn|-0.3fn|0.8fn>|\<nobracket\>>>>|<cell|<key|math:large
    )>>|<cell|<math|<around*|\<nobracket\>|<space|0fn|-0.3fn|0.8fn>|)>>>>|<row|<cell|<key|math:large
    [>>|<cell|<math|<around*|[|<space|0fn|-0.3fn|0.8fn>|\<nobracket\>>>>|<cell|<key|math:large
    ]>>|<cell|<math|<around*|\<nobracket\>|<space|0fn|-0.3fn|0.8fn>|]>>>>|<row|<cell|<key|math:large
    {>>|<cell|<math|<around*|{|<space|0fn|-0.3fn|0.8fn>|\<nobracket\>>>>|<cell|<key|math:large
    }>>|<cell|<math|<around*|\<nobracket\>|<space|0fn|-0.3fn|0.8fn>|}>>>>|<row|<cell|<key|math:large
    \<less\>>>|<cell|<math|<around*|\<langle\>|<space|0fn|-0.3fn|0.8fn>|\<nobracket\>>>>|<cell|<key|math:large
    \<gtr\>>>|<cell|<math|<around*|\<nobracket\>|<space|0fn|-0.3fn|0.8fn>|\<rangle\>>>>>|<row|<cell|<key|math:large
    />>|<cell|<math|<mid|/><space|0fn|-0.3fn|0.8fn>>>|<cell|<key|math:large
    \\>>|<cell|<math|<space|0fn|-0.3fn|0.8fn><mid|\\>>>>>>>
  </big-table|Keyboard shortcuts for large delimiters.>

  Alternatively, you may use <shortcut|(alternate-toggle (focus-tree))> in
  order to toggle between large and small delimiters.

  In <TeXmacs>, large delimiters may either be ``left delimiters'', ``right
  delimiters'' or ``middle delimiters''. By default, <math|(,[,{> and
  <math|\<langle\>> are left delimiters, <math|),],}> and <math|\<rangle\>>
  are right delimiters and <math|\|,/> and <math|\<backslash\>> are middle
  delimiters. But there status can be changed using the <prefix|math:left>,
  <prefix|math:right> and <prefix|math:middle> key combinations. For
  instance, <key|math:left )> produces <math|)>, considered as a large left
  delimiter.

  In <TeX> and <LaTeX>, ``middle delimiters'', or ``separators'' do not
  exist; they are used for producing the vertical bars in formulas like

  <\equation*>
    <around*|\<langle\>|<frac|a|b+c><mid|\|><frac|p|q+r><mid|\|><frac|a|b+c>|\<rangle\>>.
  </equation*>

  There may be as many middle delimiters between a left and a right delimiter
  as one wishes.

  Sometimes you may want large delimiters of a particular size, instead of
  self-adjusting ones. This can be achieved by resizing the expression in
  between the brackets using <menu|Format|Transform|Resize object>.

  <tmdoc-copyright|1998--2010|Joris van der Hoeven>

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