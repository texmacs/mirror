<TeXmacs|1.0.7.6>

<style|tmdoc>

<\body>
  <tmdoc-title|Typing mathematical symbols>

  The Greek characters are obtained in <TeXmacs> using the
  <prefix|math:greek>-key. For instance, <key|math:greek a>
  yields<nbsp><math|\<alpha\>> and <key|math:greek G> yields
  <math|\<Gamma\>>. Similarly, <prefix|math:bold>, <prefix|math:cal>,
  <prefix|math:frak> and <prefix|math:bbb> can be used in order to type bold,
  calligraphic, fraktur and blackboard bold characters. For instance,
  <shortcut|\<frak-m\>> yields<nbsp><with|mode|math|\<frak-m\>>, <key|S-F6 R>
  yields<nbsp><with|mode|math|\<bbb-R\>> and <shortcut|\<b-cal-Z\>> yields
  <with|mode|math|\<b-cal-Z\>>.

  Greek characters can also be obtained as ``variants'' of Latin characters
  using the <key|var>-key. For instance, <key|p var> yields
  <with|mode|math|\<pi\>>. The <key|var>-key is also used for obtaining
  variants of the Greek letters themselves. For instance, both
  <key|math:greek p var> and <key|p var var> yield
  <with|mode|math|\<varpi\>>.

  Many other mathematical symbols are obtained by ``natural''
  key-combinations. For instance, <key|- \<gtr\>> yields
  <with|mode|math|<op|\<rightarrow\>>>, <key|- - \<gtr\>> yields
  <with|mode|math|<op|\<longrightarrow\>>> and <key|\<gtr\> => yields
  <with|mode|math|<op|\<geqslant\>>>. Similarly, <key|\| -> yields
  <with|mode|math|<op|\<vdash\>>>, <key|\| - \<gtr\>> yields
  <with|mode|math|<op|\<mapsto\>>> and <key|- \<gtr\> \<less\> -> yields
  <with|mode|math|<op|\<rightleftarrows\>>>. Some general rules hold in order
  to obtain variants of symbols:

  <\description>
    <item*|<key|tab>>is the main key for obtaining variants. For instance,
    <key|\<gtr\> => yields <with|mode|math|<op|\<geqslant\>>>, but
    <key|\<gtr\> = var> yields<nbsp><with|mode|math|<op|\<geq\>>>. Similarly,
    <key|\<less\> var> yields <with|mode|math|<op|\<prec\>>>, <key|\<less\>
    var => yields <with|mode|math|<op|\<preccurlyeq\>>> and <key|\<less\> var
    = var> yields <with|mode|math|<op|\<preceq\>>>. Also, <key|P var> yields
    <with|mode|math|\<wp\>> and <key|e var> yields the constant
    <with|mode|math|\<mathe\>=exp(1)>. You may ``cycle back''
    using<nbsp><key|S-var>.

    <item*|<key|@>>is used for putting symbols into circles or boxes. For
    instance, <key|@ +> yields <with|mode|math|<op|\<oplus\>>> and <key|@ x>
    yields <with|mode|math|<op|\<otimes\>>>. Similarly, <key|@ var +> yields
    <with|mode|math|<op|\<boxplus\>>>.

    <item*|<key|/>>is used for negations. For instance, <key|= /> yields
    <with|mode|math|<op|\<neq\>>> and <key|\<less\> = /> yields
    <with|mode|math|<neg|\<leqslant\>>>. Notice that <key|\<less\> = var var
    /> yields <with|mode|math|<op|\<nleqq\>>>, while <key|\<less\> = var var
    / var> yields <with|mode|math|<op|\<lneqq\>>>.

    <item*|<key|!>>is used after arrows in order to force scripts to be
    placed above or below the arrow. For instance, <key|- - \<gtr\> ^ x>
    yields <with|mode|math|<op|\<longrightarrow\><rsup|x> >>, but <key|- -
    \<gtr\> ! ^ x> yields <with|mode|math|\<longrightarrowlim\><rsup|x>>.
  </description>

  Several other symbols which cannot be entered naturally in the above way
  are obtained using the <prefix|symbol> prefix. Here follows a short table
  of such symbols:

  <big-table|<descriptive-table|<tformat|<cwith|1|-1|2|2|cell-halign|c>|<cwith|1|-1|4|4|cell-halign|c>|<cwith|1|-1|2|2|cell-rborder|1ln>|<table|<row|<cell|Shortcut>|<cell|Symbol>|<cell|Shortcut>|<cell|Symbol>>|<row|<cell|<key|symbol
  a>>|<cell|<with|mode|math|<op|\<amalg\>>>>|<cell|>|<cell|>>|<row|<cell|<key|symbol
  n>>|<cell|<with|mode|math|<op|\<cap\>>>>|<cell|<key|symbol
  u>>|<cell|<with|mode|math|<op|\<cup\>>>>>|<row|<cell|<key|symbol
  v>>|<cell|<with|mode|math|<op|\<vee\>>>>|<cell|<key|symbol
  w>>|<cell|<with|mode|math|<op|\<wedge\>>>>>>>>|Some symbols which cannot be
  obtained using general rules in a natural way.>

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