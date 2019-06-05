<TeXmacs|1.99.2>

<style|tmweb2>

<\body>
  <tmweb-title|Extracting environments to another
  buffer|<tmweb-list|<tmweb-link|Team|../contribute/team>|<tmweb-link|Miguel's
  home|../contribute/team-miguel>>>

  <doc-date|February 15<rsup|th>, 2014>

  <with|ornament-color|pastel red|<\ornamented>
    <\note*>
      It is best to read the original <TeXmacs> file with interactive
      <scheme> sessions where one may experiment with the code. It can be
      found in the <hlink|project's source
      code|http://svn.savannah.gnu.org/viewvc/trunk/?root=texmacs>, inside
      the directory <shell|web/miguel>.
    </note*>
  </ornamented>>

  We'd like to extract the following content to different files, one with the
  question another with the answer:

  <with|ornament-shape|rounded|<\ornamented>
    <\question>
      Let <math|f:<with|math-font|Bbb*|R>\<to\><with|math-font|Bbb*|C>> be
      measurable with <math|<around|\<\|\|\>|f<around|(|x|)>|\<\|\|\>><rsub|p>\<leqslant\>1>
      and <math|<around|\<\|\|\>|f<around|(|x|)>|\<\|\|\>><rsub|q>\<leqslant\>1>
      for some <math|0\<less\>p\<less\>q\<less\>\<infty\>>. Show that

      <\equation*>
        <big|int><rsub|<with|math-font|Bbb*|R>><around|\||f<around|(|x|)>|\|><rsup|r>*\<mathd\>x\<leqslant\>1
      </equation*>

      for all <math|p\<less\>r\<less\>q>.
    </question>

    <\answer>
      Notice that <math|<around|\||f<around|(|x|)>|\|><rsup|r>\<less\><around|\||f<around|(|x|)>|\|><rsup|q>>
      if <math|<around|\||f<around|(|x|)>|\|>\<geqslant\>1>, and
      <math|<around*|\||f<around*|(|x|)>|\|><rsup|r>\<less\><around|\||f<around|(|x|)>|\|><rsup|p>>
      if <math|<around|\||f<around|(|x|)>|\|>\<leqslant\>1>. Therefore, for
      all <math|x> we have <math|<around|\||f<around|(|x|)>|\|><rsup|r>\<leqslant\><around|\||f<around|(|x|)>|\|><rsup|p>+<around|\||f<around|(|x|)>|\|><rsup|q>>
      no matter what <math|<around*|\||f<around*|(|x|)>|\|>> is. This leads
      to the rough estimate <math|<big|int><rsub|<with|math-font|Bbb*|R>><around|\||f<around|(|x|)>|\|><rsup|r>*\<mathd\>x\<leqslant\>2>.
      We may improve this with...
    </answer>
  </ornamented>>

  First we define a helper routine to create the contents of the new buffers:

  <\session|scheme|default>
    <\input|Scheme] >
      (define (new-document from doc)

      \ \ "Returns a document with the same style as the given one"

      \ \ (with l (select (buffer-get from) '(:* style 0))

      \ \ \ \ (with tup (if (nnull? l) (tree-\<gtr\>stree (car l)) '(tuple
      "generic"))

      \ \ \ \ \ \ `(document

      \ \ \ \ \ \ \ \ \ (TeXmacs ,(texmacs-version))

      \ \ \ \ \ \ \ \ \ (style ,tup)

      \ \ \ \ \ \ \ \ \ (body ,doc)))))
    </input>
  </session>

  Now, the routine which will actually extract the contents. Notice how we
  use the selector <scm|:*> to indicate that we want subtrees at any depth in
  the document.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (pick-env env from to)

      \ \ "Selects all subtrees of type @env in @from and sets @to's
      contents"

      \ \ (with l (select (buffer-get from) `(:* ,env))

      \ \ \ \ (with doc (if (nnull? l)\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (append '(document) l)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ '(document "No subtrees found of
      the type given"))

      \ \ \ \ (buffer-set to (new-document from doc)))))
    </input>
  </session>

  Here are two examples of how we may use the preceding stuff. A more general
  solution, maybe with a nice dialog box would be better.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (pick-questions from)

      \ \ "Creates a new buffer with all questions from a given one"

      \ \ (with u (new-buffer)

      \ \ \ \ (pick-env 'question from u)

      \ \ \ \ (switch-to-buffer u)))
    </input>

    <\input|Scheme] >
      (define (pick-answers from)

      \ \ "Creates a new buffer with all cuestions"

      \ \ (with u (new-buffer)

      \ \ \ \ (pick-env 'answer from u)

      \ \ \ \ (switch-to-buffer u)))
    </input>

    <\input|Scheme] >
      (pick-questions (current-buffer))
    </input>

    <\input|Scheme] >
      (pick-answers (current-buffer))
    </input>
  </session>

  And finally here's an example inserting those two commands in a new menu
  <menu|Tools|Extract>:

  <\session|scheme|default>
    <\folded-io|Scheme] >
      (menu-bind extract-menu

      \ \ ("Questions" (choose-file pick-questions\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "Choose
      questions file" "texmacs"))

      \ \ ("Answers" (choose-file pick-answers\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "Choose answers
      file" "texmacs")))
    <|folded-io>
      \;
    </folded-io>

    <\folded-io|Scheme] >
      (menu-bind tools-menu

      \ \ (-\<gtr\> "Extract" (link extract-menu))

      \ \ (former))
    <|folded-io>
      \;
    </folded-io>
  </session>

  <tmdoc-copyright|2014|Miguel de Benito Delgado>

  <tmweb-license>
</body>

<initial|<\collection>
</collection>>