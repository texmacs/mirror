<TeXmacs|1.99.2>

<style|tmweb2>

<\body>
  <tmweb-title|Evaluating <scheme> snippets|<tmweb-list|<tmweb-link|Team|../contribute/team>|<tmweb-link|Miguel's
  home|../contribute/team-miguel>>>

  <\doc-date>
    January 3rd, 2014
  </doc-date>

  <with|ornament-color|pastel red|<\ornamented>
    <\note*>
      It is best to read the original <TeXmacs> file with interactive
      <scheme> sessions where one may experiment with the code. It can be
      found in the <hlink|project's source
      code|http://svn.savannah.gnu.org/viewvc/trunk/?root=texmacs>, inside
      the directory <shell|web/miguel>.
    </note*>
  </ornamented>>

  We'd like to evaluate <scheme> code inside <markup|scm-code> tags. Let's
  first write some example code to use below:

  <\scm-code>
    <label|scm-code:1>(display "hi ")

    (display "there\\n")
  </scm-code>

  \;

  Notice that we put a label at the beginning of the code snippet to
  reference it later (but it could be anywhere inside the <markup|scm-code>).\ 

  We now define a function to take a subtree, extract the text and evaluate
  it using <scm|eval-string>:

  <\session|scheme|default>
    <\input|Scheme] >
      (define (eval-scm-code* t)

      \ \ (if (tree-func? t 'scm-code)

      \ \ \ \ \ \ (begin\ 

      \ \ \ \ \ \ \ \ (map (lambda (x) (eval-string (texmacs-\<gtr\>verbatim
      x)))\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ (tree-children t))

      \ \ \ \ \ \ \ \ #t)

      \ \ \ \ \ \ #f))
    </input>
  </session>

  In order to use this we define a <scm|:secure> routine which we will use in
  <markup|action> tags:

  <\session|scheme|default>
    <\unfolded-io|Scheme] >
      (tm-define (eval-scm-code t)

      \ \ (:secure #t)

      \ \ (let* ((txt (tree-\<gtr\>string t))

      \ \ \ \ \ \ \ \ \ (ltrees (select (buffer-tree) '(:* label)))

      \ \ \ \ \ \ \ \ \ (filt (list-filter ltrees

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (lambda (x) (== (tree-\<gtr\>string
      (tree-ref x 0)) txt)))))

      \ \ \ \ (map (lambda (x) (eval-scm-code* (tree-search-upwards x
      'scm-code)))

      \ \ \ \ \ \ \ \ \ filt)))
    <|unfolded-io>
      \;
    </unfolded-io>
  </session>

  With them we can use the <markup|action> tag to
  <action|evaluate|eval-scm-code x|scm-code:1> that piece of code with a
  click. Neat!

  A nice follow-up would be a way to convert a bunch of <scheme> sessions
  into <markup|scm-code> snippets with automatically generated labels and
  links to execute them (which should only display on-screen, using
  <markup|specific>).

  <tmdoc-copyright|2014|Miguel de Benito Delgado>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
  </collection>
</initial>