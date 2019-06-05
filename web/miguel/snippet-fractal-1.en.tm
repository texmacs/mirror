<TeXmacs|1.99.2>

<style|tmweb2>

<\body>
  <tmweb-title|Fractal turtles|<tmweb-list|<tmweb-link|Team|../contribute/team>|<tmweb-link|Miguel's
  home|../contribute/team-miguel>>>

  <\hide-preamble>
    \;

    <assign|convention-text|<macro|<localize|Contract>>>

    <assign|convention*|<\macro|body>
      <compound|render-remark|<compound|convention-unnumbered|<compound|convention-text>>|<arg|body>>
    </macro>>
  </hide-preamble>

  <doc-date|March, 2014<specific|texmacs|<strong|<htab|5mm>(MathJax loading
  macro here)>><assign|html-head-javascript-src|http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=MML_HTMLorMML>>

  <with|ornament-color|pastel red|<\ornamented>
    <\note*>
      It is best to read the original <TeXmacs> files with interactive
      <scheme> sessions where one may experiment with the code. It can be
      found in the <hlink|project's source
      code|http://svn.savannah.gnu.org/viewvc/trunk/?root=texmacs>, inside
      the directory <shell|web/miguel>.
    </note*>
  </ornamented>>

  Here we build upon what we previously did in <tmweb-link|``Turtle
  schemes''|snippet-logo>. In order to quickly load it a good method is to
  use <menu|Developer|Export sessions> (your cursor will have to be inside
  one session to be enable this action) to save the contents of all <scheme>
  sessions to a <scheme> file, then load it from this file using <scm|(load
  "path/to/file.scm")>. From now on, we assume all the functions defined in
  <tmweb-link|``Turtle schemes''|snippet-logo> are available.

  For our first example we start with a simple case: we paint dots at each of
  the vertices of an equilateral triangle.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (three-dots sz)

      \ \ (let ((x _posx)

      \ \ \ \ \ \ \ \ (y _posy))

      \ \ \ \ (map (lambda (ang)

      \ \ \ \ \ \ \ \ \ (go (list x y))

      \ \ \ \ \ \ \ \ \ (look ang)

      \ \ \ \ \ \ \ \ \ (forward sz)

      \ \ \ \ \ \ \ \ \ (fill (circle 1) "black"))

      \ \ \ \ \ \ \ '(90 -30 210))))
    </input>

    <\input|Scheme] >
      (draw (three-dots 4))
    </input>
  </session>

  It is obvious that one could paint anything at the vertices. For instance
  an ugly gnu (<image|local:$TEXMACS_PATH/misc/images/tm_gnu3.ps||1fn||>) or
  the figure resulting of a recursion step as we next do. First we slightly
  generalize the previous code to draw any three things (this in turn may be
  easily generalized to an arbitrary regular polygon). Then we do the
  recursion in the function <scm|pinski>: the argument <scm-arg|fig> is the
  figure which is drawn on each vertex of the triangle, <scm-arg|count> the
  number of iterations and <scm-arg|sz> the distance between figures. Play
  with the parameters, but before increasing the number of iterations save
  your document! An increment of one unit dramatically increases the number
  of dots.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (three-things thing sz)

      \ \ (let ((x _posx)

      \ \ \ \ \ \ \ \ (y _posy))

      \ \ \ \ (map (lambda (ang)

      \ \ \ \ \ \ \ \ \ \ \ (go (list x y))

      \ \ \ \ \ \ \ \ \ \ \ (look ang)

      \ \ \ \ \ \ \ \ \ \ \ (forward sz)

      \ \ \ \ \ \ \ \ \ \ \ (thing))

      \ \ \ \ \ \ \ \ \ '(90 -30 210))))
    </input>

    <\input|Scheme] >
      (define (pinski fig count sz)

      \ \ (if (\<gtr\> count 1)

      \ \ \ \ \ \ (three-things\ 

      \ \ \ \ \ \ \ (lambda () (pinski fig (- count 1) (* sz 0.5))) sz)

      \ \ \ \ \ \ (three-things fig sz)))
    </input>

    \;

    <\input|Scheme] >
      (draw (pinski (lambda () (fill (circle 0.2) "black")) 5 25))
    </input>
  </session>

  Yes, that was (or should've been) the Sierpinsky triangle. As promised, we
  now generalize the previous code to a general regular polygon with <math|n>
  vertices. We want to place these polygons recursively at the vertices of
  the previous polygon and for this we need a little computation for the
  scaling factor <math|c> (the <math|0.5> that we silently introduced in
  <scm|pinsky>). If you feel lazy just trust this formula and its
  implementation in <scm|n-factor>:

  <\equation*>
    c=<around*|(|2*<big|sum><rsub|k=0><rsup|<around*|\<lfloor\>|n/4|\<rfloor\>>>cos<around*|(|2*\<mathpi\>*k/n|)>|)><rsup|-1>.
  </equation*>

  We also implement in a straightforward way the generalizations to <math|n>
  polygons.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (n-factor n)

      \ \ (with a_k (lambda (k) (cos (/ (* 2 pi k) n)))

      \ \ \ \ (/ 1 (* 2 (apply + (map a_k (.. 0 (+ 1 (floor (/ n 4))))))))))
    </input>

    <\input|Scheme] >
      (define (n-angles n)

      \ \ (with ang (/ 360 n)

      \ \ \ \ (map (lambda (x) (floor (+ (- 90 ang) x)))

      \ \ \ \ \ \ \ \ \ (map (lambda (x) (* x ang)) (.. 1 (+ 1 n))))))
    </input>

    <\input|Scheme] >
      (define (n-things n thing sz)

      \ \ (let ((x _posx)

      \ \ \ \ \ \ \ \ (y _posy))

      \ \ \ \ (map (lambda (ang)

      \ \ \ \ \ \ \ \ \ \ \ (go (list x y))

      \ \ \ \ \ \ \ \ \ \ \ (look ang)

      \ \ \ \ \ \ \ \ \ \ \ (forward sz)

      \ \ \ \ \ \ \ \ \ \ \ (thing))

      \ \ \ \ \ \ \ \ \ (n-angles n))))
    </input>

    <\input|Scheme] >
      (define (n-pinski n fig cnt sz)

      \ \ (with nextfig (lambda ()(n-pinski n fig (- cnt 1) (* sz (n-factor
      n))))

      \ \ \ \ (if (\<gtr\> cnt 1)

      \ \ \ \ \ \ \ \ (n-things n nextfig sz)

      \ \ \ \ \ \ \ \ (n-things n fig sz))))
    </input>

    <\input|Scheme] >
      (draw (n-pinski 7 (lambda () (fill (circle 0.2) "black")) 4 30))
    </input>
  </session>

  Just one more thing: you might want your output inline, but our previous
  <scm|plot> will not work with complex drawings because they have to be
  simplified. Here's (yet another) quick hack:

  <\session|scheme|default>
    <\input>
      Scheme]\ 
    <|input>
      (define (plot* . l)

      \ \ ; Remember the drawing contract:

      \ \ ; Drawing functions (such as turn) with no graphics output return
      '()

      \ \ (cond ((nlist? l) '(graphics "" ""))

      \ \ \ \ \ \ \ \ ((== l '()) (noop))

      \ \ \ \ \ \ \ \ ((list? (car l)) `(graphics "" ,@(car l)))

      \ \ \ \ \ \ \ \ (else `(graphics "" ,@l))))
    </input>

    <\input|Scheme] >
      (define (plot l)

      \ \ (stree-\<gtr\>tree (plot* (simplify l 0))))
    </input>

    <\input|Scheme] >
      (plot (n-pinski 5 (lambda () (fill (circle 0.2) "black")) 5 30))
    </input>
  </session>

  Now try your own figures. Have fun!

  <with|font-series|bold|Bonus:> try redefining <scm|logo-canvas-extra> to
  add a menu to pick the number of iterations and redraw.

  <tmdoc-copyright|2014|Ana Cañizares García and Miguel de Benito Delgado>

  <tmweb-license>
</body>

<initial|<\collection>
</collection>>