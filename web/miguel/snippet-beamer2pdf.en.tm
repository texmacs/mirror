<TeXmacs|1.99.2>

<style|tmweb2>

<\body>
  <tmweb-title|Exporting beamer presentations|<tmweb-list|<tmweb-link|Team|../contribute/team>|<tmweb-link|Miguel's
  home|../contribute/team-miguel>>>

  <\hide-preamble>
    \;

    <assign|convention-text|<macro|<localize|Contract>>>

    <assign|convention*|<\macro|body>
      <compound|render-remark|<compound|convention-unnumbered|<compound|convention-text>>|<arg|body>>
    </macro>>
  </hide-preamble>

  <doc-date|March, 2015>

  <with|ornament-color|pastel red|<\ornamented>
    <\note*>
      It is best to read the original <TeXmacs> file with interactive
      <scheme> sessions where one may experiment with the code. It can be
      found in the <hlink|project's source
      code|http://svn.savannah.gnu.org/viewvc/trunk/?root=texmacs>, inside
      the directory <shell|web/miguel>.
    </note*>
  </ornamented>>

  \;

  Currently (SVN 8900) exporting documents in beamer style to PDF is not
  always quite what one would like. Folds, unrolls & co. are all flattened
  out before export happens, which is great when one wants to distribute a
  presentation, but no so much if one needs a PDF to actually do the
  presentation. Also, page numbering does not work and nested switches fail
  to export correctly. In this short document we set to fix this.

  <\note*>
    \ Chances are we will be committing most of this code soon, so if you are
    running the latest SVN version or a version <math|\<gtr\>1.99.2> when it
    comes out, then this document is no more than a walk through the
    implementation details of something you already have.
  </note*>

  <\render-remark|tl;dr>
    1. Run all the code in this file. 2. Open your presentation. 3. Click on
    <menu|Tools|Execute|Evaluate scheme expression>, enter the command
    <scm|(create-slides (current-buffer))> and run it. 4. A new buffer opens
    with the slides: create a preamble and add the macros listed below. 5.
    Click on <menu|File|Export|Pdf...>
  </render-remark>

  The implementation is easy (though not exactly optimized). We assume that a
  buffer is open which contains a <markup|screens> tree.

  <\enumerate-alpha>
    <item>Create a new buffer <math|B<rprime|'>> with a root node
    <markup|screens>.<\footnote>
      This is needed in order for the slide numbers to be correctly computed,
      since the routines doing it rely on the existence of a <markup|screens>
      tree.
    </footnote> Copy the styles, metadata, preamble and initial environment
    from the original buffer <math|B>.

    <item>Rewind the tree of <math|B> (i.e. emulate a click in
    <menu|Dynamic|First>).

    <item>For each child of <markup|screens> (which we call a <dfn|screen>)
    in <math|B> do the following:

    <\enumerate-numeric>
      <item><label|step:output>Output a <markup|slide> with the current
      screen to <math|B<rprime|'>>.

      <item>Advance buffer <math|B> (i.e. emulate a click in
      <menu|Dynamic|Next>).

      <item>Are there any more steps in the current screen?

      If not, then <strong|stop> (and process the next screen), otherwise
      <strong|go to <reference|step:output>>.
    </enumerate-numeric>

    <item>If we came from <menu|File|Export|Pdf...>, then write the PDF, then
    kill <math|B<rprime|'>>. Otherwise <scm|switch-to-buffer> <math|B> and
    let the user decide.
  </enumerate-alpha>

  The reason why we go screen by screen is to produce a new document with a
  <markup|screens> tag with the same number of children as the original one.
  This is needed for the page count.

  <big-figure|<tree|<math|B>|<tree|<markup|screens>|<markup|hidden>|<markup|shown>|<math|<above|\<ldots\>|<wide*|n|\<breve\>>>>|<markup|hidden>>><space|4em><tree|<math|B<rprime|'>>|<tree|<markup|screens>|<tree|<markup|document>|<markup|slide>|<math|\<cdots\>><compound|markup|>|<markup|slide>>|<math|<above|\<ldots\>|<wide*|n|\<breve\>>>>|<tree|<markup|document>|<markup|slide>|<math|\<cdots\>><compound|markup|>|<markup|slide>>>>|The
  original buffer <math|B> and the result <math|B<rprime|'>> after the
  <markup|slide>s have been created.>

  First of all a couple of handy macros:

  <\session|scheme|default>
    <\input|Scheme] >
      (define-public-macro (nnull-with var val . body)

      \ \ ; assign @val to @var and execute @body only if @val is not a null
      list

      \ \ `(with ,var ,val

      \ \ \ \ \ (if (nnull? ,var) (begin ,@body) #f)))
    </input>

    <\input|Scheme] >
      (define (list-\<gtr\>tree label l)

      \ \ (tree-insert (tree label) 0 l))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <subsection|Removing hidden children>

  Although not strictly necessary, we prune hidden children of
  <markup|switch> tags (and related ones) in order to reduce the complexity
  of the document we produce in the end. Note that this function is run on
  the children of <markup|screens>, so we don't risk erasing the hidden ones.
  Furthermore, <scm|alternative-context?> excludes tags like <markup|unroll>
  or <markup|overlay> whose hidden children should tipically not be deleted.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (keep-shown! t)

      \ \ (if (alternative-context? t)

      \ \ \ \ \ \ (map ; Prune hidden children

      \ \ \ \ \ \ \ (lambda (i) (if (tm-func? (tree-ref t i) 'hidden)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (tree-remove! t i 1)))

      \ \ \ \ \ \ \ (reverse (.. 0 (tm-arity t)))))

      \ \ (if (and (tm-compound? t) (\<gtr\> (tm-arity t) 0))

      \ \ \ \ \ \ (for-each keep-shown! (tree-children t))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <subsection|The stop condition>

  How do we know when we are done ``clicking'' <menu|Dynamic|Next>? A simple
  way is the following: at each processing step (i.e. after each ``click'')
  we check whether the current screen being processed has just been hidden.
  This leaves the problem of the last screen though, and a (admittedly a bit
  hackish) solution is to add a fake last child to the original
  <markup|screens> which will be <markup|hidden> to start with. Then we
  exclude this one from the list of screens to process and all is well.

  <subsection|Creating the individual slides>

  There isn't much to say here which we hadn't said already. As usual, start
  reading at the last function.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (create-slide scr)

      \ \ (if (not (tree? scr)) (tree 'slide '(document "")) ; just in case

      \ \ \ \ \ \ (with t (tree-copy scr)

      \ \ \ \ \ \ \ \ (keep-shown! t)

      \ \ \ \ \ \ \ \ (tree-assign-node! t 'slide)

      \ \ \ \ \ \ \ \ t)))
    </input>

    <\input|Scheme] >
      (define (process-screen scr)

      \ \ (cons (create-slide scr)

      \ \ \ \ \ \ \ \ (begin

      \ \ \ \ \ \ \ \ \ \ (dynamic-traverse-buffer :next)

      \ \ \ \ \ \ \ \ \ \ (if (tm-func? scr 'hidden) '()

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (process-screen scr)))))
    </input>

    <\input|Scheme] >
      (define (screens-\<gtr\>slides t)

      \ \ (if (not (tm-func? t 'screens)) (tree 'document "")

      \ \ \ \ \ \ (with f (lambda (scr) (list-\<gtr\>tree 'document
      (process-screen scr)))

      \ \ \ \ \ \ \ \ (system-wait "Generating slides" "please wait")

      \ \ \ \ \ \ \ \ ; Insert fake screen at the end

      \ \ \ \ \ \ \ \ (tree-insert! t (tree-arity t)\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (list (tree 'hidden
      '(document ""))))

      \ \ \ \ \ \ \ \ (dynamic-operate-on-buffer :first)

      \ \ \ \ \ \ \ \ ; Notice that we don't process the last (fake) screen

      \ \ \ \ \ \ \ \ (list-\<gtr\>tree 'screens (map f (cDr (tree-children
      t)))))))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <subsection|Bringing it all together>

  Recall that we intend to create a new buffer with the slides. In order to
  preserve the preamble and other attributes of the original document we copy
  all of it, then edit out what we don't want. The copying is done in
  <scm|buffer-copy> below, and <scm|create-slides> uses it and adds the
  finishing touches.

  <\session|scheme|default>
    <\input|Scheme] >
      (use-modules (utils library cursor)) ; defines with-buffer
    </input>

    <\input|Scheme] >
      (define (buffer-copy buf)

      \ \ "Creates a copy of @u and returns the new url."

      \ \ (with-buffer buf

      \ \ \ \ (let* ((u (buffer-new))

      \ \ \ \ \ \ \ \ \ \ \ (styles (get-style-list))

      \ \ \ \ \ \ \ \ \ \ \ (init (get-all-inits))

      \ \ \ \ \ \ \ \ \ \ \ (body (tree-copy (buffer-get-body buf))))

      \ \ \ \ \ \ (view-new u) ; needed by buffer-focus, used in with-buffer

      \ \ \ \ \ \ (buffer-set-body u body)\ 

      \ \ \ \ \ \ (with-buffer u

      \ \ \ \ \ \ \ \ (set-style-list styles)

      \ \ \ \ \ \ \ \ (init-env "global-title" (buffer-get-metadata buf
      "title"))

      \ \ \ \ \ \ \ \ (init-env "global-author" (buffer-get-metadata buf
      "author"))

      \ \ \ \ \ \ \ \ (init-env "global-subject" (buffer-get-metadata buf
      "subject"))

      \ \ \ \ \ \ \ \ (for-each

      \ \ \ \ \ \ \ \ \ (lambda (t)

      \ \ \ \ \ \ \ \ \ \ \ (if (tree-func? t 'associate)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (with (var val) (list (tree-ref t 0)
      (tree-ref t 1))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (init-env-tree (tree-\<gtr\>string
      var) val))))

      \ \ \ \ \ \ \ \ \ (tree-children init)))

      \ \ \ \ \ \ u)))
    </input>

    <\unfolded-io|Scheme] >
      (tm-define (create-slides buf)

      \ \ (nnull-with l (select (buffer-\<gtr\>tree buf) '(screens))

      \ \ \ \ (let* ((scrns (car l))

      \ \ \ \ \ \ \ \ \ \ \ (new-buf (buffer-copy buf))

      \ \ \ \ \ \ \ \ \ \ \ (saved (tree-copy (buffer-get-body buf)))

      \ \ \ \ \ \ \ \ \ \ \ (slides (screens-\<gtr\>slides scrns))) ;
      modifies buf

      \ \ \ \ \ \ (buffer-set-body buf saved) \ \ ; restore original buf

      \ \ \ \ \ \ (with t (car (select (buffer-\<gtr\>tree new-buf)
      '(screens)))

      \ \ \ \ \ \ \ \ (tree-set! t slides)) \ \ \ \ \ \ \ ; Replace body with
      new content

      \ \ \ \ \ \ (switch-to-buffer new-buf)

      \ \ \ \ \ \ (init-env "page-medium" "paper")

      \ \ \ \ \ \ (add-style-package "slides"))))
    <|unfolded-io>
      ((guile-user))
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  <subsection|Not quite there yet>

  Before you can use <scm|(create-slides (current-buffer))> there are two
  things to be done. First you'll want to add a couple of definitions to the
  style file <tt|packages/beamer/slides.ts>. Alternatively you can just add
  them to the preamble of the new buffer. Notice that the first one disables
  the grey bar of links to the slide numbers.

  <\tm-fragment>
    <\inactive*>
      <assign|screens-bar|<macro|body|>>

      <assign|page-odd-footer|>

      <assign|page-even-footer|>

      <assign|page-odd-header|>

      <assign|page-even-header|>
    </inactive*>
  </tm-fragment>

  Second, we need to skip some hardcoded behaviour. Currently, there's <c++>
  code in the routine exporting to PDF which checks whether we are using the
  beamer style, and if we are it creates a copy of the buffer, runs
  <scm|dynamic-make-slides> on it, then prints the results. But
  <scm|dynamic-make-slides> (who flattens out the <markup|unroll>s,
  <markup|fold>s, etc.) is precisely what we wanted to avoid! You can work
  around this problem using <TeXmacs>' nice contextual overloading:

  <\session|scheme|default>
    <\input|Scheme] >
      (define disable-dynamic-make-slides #t)
    </input>

    <\unfolded-io|Scheme] >
      (tm-define (dynamic-make-slides)

      \ \ (:require disable-dynamic-make-slides)

      \ \ (noop))
    <|unfolded-io>
      ((guile-user) (dynamic fold-edit))
    </unfolded-io>

    <\input|Scheme] >
      \;
    </input>
  </session>

  If you want the old functionality back, just set
  <scm|disable-dynamic-make-slides> to <scm|#f>.

  <subsection|Where to go from here>

  There are a few things which might be cool to do:

  <\enumerate>
    <item>A table of contents for the generated PDF would be great.

    <item>Fine grained control of what environments should be flattened out,
    if any.

    <item>Right now images linked in the original document using relative
    paths will not display properly in the new buffer unless it is saved in
    the same folder as the original. We could fix this either including the
    images or pre-saving the buffer in the right folder.
  </enumerate>

  <tmdoc-copyright|March 2015|Ana Cañizares García|Miguel de Benito Delgado>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|page-even-footer|<htab|5mm>>
    <associate|page-even-header|>
    <associate|page-medium|papyrus>
    <associate|page-odd-footer|<htab|5mm>>
    <associate|page-odd-header|1>
  </collection>
</initial>