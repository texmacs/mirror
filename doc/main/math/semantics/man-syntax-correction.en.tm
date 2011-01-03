<TeXmacs|1.0.7.9>

<style|tmdoc>

<\body>
  <tmdoc-title|Common errors and syntax correction>

  By default, the semantic editing mode ``understands'' most classical
  mathematical notations. This is achieved through the use of a carefully
  designed grammar for mainstream mathematics. Obviously, the use of a fixed
  grammar may cause the following problems:

  <\itemize>
    <item>Mathematical formulas frequently contain <em|ad hoc> notations. For
    instance, the formulas might contain some text or meaningful whitespace.
    Another example of an <em|ad hoc> notation is the sign sequence
    <math|++-+-+>. In such cases, the user should <hlink|explicitly
    annotate|man-semantic-annotation.en.tm> the appropriate parts of the
    formula in order to make them semantically meaningful.

    <item>The <TeXmacs> grammar used for the interpretation of mathematical
    formulas may be incomplete or inadequate for certain situations. It is
    possible to customize or extend the grammar using the standard <TeXmacs>
    macro mechanism. Notations for specific areas may be grouped together in
    dedicated style packages.
  </itemize>

  Besides these intrinsically hard to avoid problems, the following common
  and ``easy-to-make'' mistakes are a further source of trouble for
  associating semantics to mathematical formulas:

  <\itemize>
    <item>Since <TeXmacs> is a wysiwyg editor, some of the structure of the
    document is invisible for the user. For instance, the presence of a
    mathematical formula <math|x+y> is indicated through the use of an italic
    slant and special spacing. However, in the formula
    <math|f<around*|(|x|)>> it is easy to type the closing bracket outside
    the formula, with no visual difference.

    <item>Various mathematical notations are visually ambiguous. For
    instance, <math|a*<around*|(|b+c|)>> would usually be understood as
    <math|a\<cdot\><around*|(|b+c|)>>, whereas <math|f<around*|(|x+y|)>>
    usually corresponds to a function application. Similarly, the
    <math|\<wedge\>> glyph could be the ``logical and'' or the ``wedge
    product''. This ``homoglyph'' issue will be adressed in the section on
    the <hlink|semantics of mathematical symbols|man-semantics-symbols.en.tm>.
    The multiply/apply ambiguity is one of the major sources

    <item>It could be that a text was originally written in <LaTeX> or an old
    version of <TeXmacs>. In that case, the document contains no special
    indication on matching brackets or the scopes of big operators. For
    instance, in the formula <math|<around*|[|x,y|[>>, should we interpret
    the second bracket as a closing bracket? This is indeed the standard
    french notation for an interval with an open right end. More generally,
    all problems that we have mentioned so far tend to be present
    simultaneously when trying to associate semantics to existing documents.
  </itemize>

  mathematical formulas contain various kinds of common syntactical mistakes,
  some of which can be corrected automatically by <TeXmacs>.

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