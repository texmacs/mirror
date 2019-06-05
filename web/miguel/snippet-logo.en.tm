<TeXmacs|1.99.2>

<style|tmweb2>

<\body>
  <\hide-preamble>
    \;
  </hide-preamble>

  <tmweb-title|Turtle schemes|<tmweb-list|<tmweb-link|Team|../contribute/team>|<tmweb-link|Miguel's
  home|../contribute/team-miguel>>>

  <\hide-preamble>
    \;

    <assign|convention-text|<macro|<localize|Contract>>>

    <assign|convention*|<\macro|body>
      <compound|render-remark|<compound|convention-unnumbered|<compound|convention-text>>|<arg|body>>
    </macro>>
  </hide-preamble>

  <doc-date|December, 2013>

  <with|ornament-color|pastel red|<\ornamented>
    <\note*>
      It is best to read the original <TeXmacs> file with interactive
      <scheme> sessions where one may experiment with the code. It can be
      found in the <hlink|project's source
      code|http://svn.savannah.gnu.org/viewvc/trunk/?root=texmacs>, inside
      the directory <shell|web/miguel>.
    </note*>
  </ornamented>>

  <section|The what, why and how>

  <strong|What? >We will be implementing a version of turtle graphics for
  <TeXmacs>. For the uninitiated, turtle graphics is the graphics mode of the
  <hlink|<name|Logo> programming language|https://en.wikipedia.org/wiki/Logo_(programming_language)>,
  and features an artist turtle with a pen walking around on a canvas and
  accepting (at least) the following commands: <scm|forward, backward, left,
  right, home, show, hide, clear, clearscreen>. Because we can, we'll add a
  few more: <scm|colorize, style, zoom, look, ...>

  <strong|Why? >Because it's fun!

  <strong|How? >We'll define a canvas widget and a set of <scheme> routines
  to draw on it. The canvas will be a window containing a
  <scm|texmacs-output> widget with a <markup|graphics> tag in it. This will
  get a bit technical but it means that all we have to do is use the graphics
  primitives already available: <markup|point>, <markup|line>, <markup|carc>,
  as well as their formatting properties (types of lines, colors, etc.). With
  very little effort everything may be later adapted to draw on any given
  <markup|graphics> object in a document.

  <strong|A word of caution:> even though some editing has been done, the
  code and text here were written without much planning in a couple of
  micro-hackatons. Things work but (as always) might have been done better.
  In particular our use of globals to store state and relying on side effects
  is <em|ugly> and the source of inconsistencies. Ideally <scm|draw> below
  should parse the list of drawing commands and keep its local position,
  angle, etc.

  <section|Basic drawings>

  This is how things will work: all our procedures will produce <scheme>
  lists representing the <TeXmacs> graphical primitives needed to paint what
  we wish. We will later convert these to <TeXmacs> trees and either display
  them inline or set them as the contents of a dedicated canvas.

  Our first building block is the point. Given two coordinates <math|x,y> the
  procedure <scm|point> scales the coordinates with a global zoom (we start
  with 0.1, to be able to use reasonable units in our drawings) and produces
  the list <scm|(point "x" "y")> (see the example below). This is the
  <scheme> representation of the <TeXmacs> graphical primitive <markup|point>
  which we will later pipe it to another procedure to convert it to a tree
  and add it to the contents of the canvas.

  We next define some state variables with the turtle's current position and
  direction vector. The two first <scm|posx> and <scm|posy> should be
  self-explaining (but remember that the scaling with <scm|_zoom> is done
  internally, so the coordinates <scm|posx, posy> are ``world'' coordinates)
  and <scm|ang> is the angle between the director vector of the turtle and
  the <math|x>-axis, given in degrees <math|\<in\><around*|[|0,360|)>>.
  Finally, the convenience procedure <scm|pos> builds a <markup|point> using
  the current position.

  <\session|scheme|default>
    <\input|Scheme] >
      (define _zoom 0.1)
    </input>

    <\input|Scheme] >
      (define _posx 0)
    </input>

    <\input|Scheme] >
      (define _posy 0)
    </input>

    <\input|Scheme] >
      (define _ang 0)
    </input>

    <\input|Scheme] >
      (define (zoom zm)

      \ \ (if (number? zm) (set! _zoom zm)))
    </input>

    <\input|Scheme] >
      (define (point x y)

      \ \ ; number-\<gtr\>string is necessary for TeXmacs to understand
      decimal numbers

      \ \ `(point ,(number-\<gtr\>string (* x _zoom)) ,(number-\<gtr\>string
      (* y _zoom))))
    </input>

    \;

    <\input|Scheme] >
      (define (pos) (point _posx _posy))
    </input>
  </session>

  The next procedure <scm|go> tells the turtle to move to a specific point
  <math|<around*|(|x,y|)>> painting along its way. As every other turtle of
  its kind, ours has a pen it uses to paint the canvas. The turtle has its
  pen down by default but we will see later how to change this. Finally,
  <scm|home> is just a handy shortcut to be able to tell the turtle to
  <scm|(go home)>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (go where)

      \ \ (let* ((xfinal (car where))

      \ \ \ \ \ \ \ \ \ (yfinal (cadr where))

      \ \ \ \ \ \ \ \ \ (ret `(line ,(pos) ,(point xfinal yfinal))))

      \ \ \ \ (set! _posx xfinal)

      \ \ \ \ (set! _posy yfinal)

      \ \ \ \ ret))
    </input>

    <\input|Scheme] >
      (define home '(0 0))
    </input>
  </session>

  Our turtle must turn too. We can tell it to with <scm|(turn
  <scm-arg|angle>)>, where <scm-arg|angle> is measured in degrees and taken
  in positive direction: a positive <scm-arg|angle> rotates to the left
  --counterclockwise-- and a negative one to the right --clockwise--.
  Nevertheless, the turtle prefers the simpler instructions <scm|(right
  <scm-arg|angle>)>, <scm|(left <scm-arg|angle>)>. You can also force the
  turtle to point in a given direction with <scm|(look <scm-arg|angle>)> and
  use any of <scm|north>, <scm|south>, <scm|east>, <scm|west>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (turn a)

      \ \ (if (number? a)

      \ \ \ \ \ \ (with b (modulo (+ _ang a) 360)

      \ \ \ \ \ \ \ \ (set! _ang b)))

      \ \ '())
    </input>

    <\input|Scheme] >
      (define (right a) (turn (* -1 a)))
    </input>

    <\input|Scheme] >
      (define (left a) (turn a))
    </input>

    <\input|Scheme] >
      (define (look where)

      \ \ (if (number? where) (set! _ang (modulo where 360)))

      \ \ '())
    </input>

    <\input|Scheme] >
      (define north 90)
    </input>

    <\input|Scheme] >
      (define south 270)
    </input>

    <\input|Scheme] >
      (define east 0)
    </input>

    <\input|Scheme] >
      (define west 180)
    </input>
  </session>

  You might have noticed that we explictly return the empty list after some
  procedures. This is because we will later be sending the output of all our
  drawing and positioning routines to a procedure called <scm|to-canvas> used
  to write to the canvas. This follows the following:

  <\convention*>
    Every drawing function must return something. If the procedure
    <scm|to-canvas> receives no argument the contents of the canvas will be
    deleted. We agree to return a list with new content to be added or the
    empty list <scm|'()> if nothing must be drawn
  </convention*>

  The commands <scm|(forward <scm-arg|distance>)>, <scm|(backward
  <scm-arg|distance>)> move the turtle (forwards or backwards) this distance
  in the direction it is currently looking. These functions use <scm|go>, and
  to compute the final coordinates we use custom trigonometric functions
  <scm|_sin>, <scm|_cos> using <scm|rationalize>, that finds the nearest
  rational number differing less than a given constant <scm|eps>. Compare
  <scm|(_sin pi)> with the horrible <scm|(sin pi)> and you'll understand.
  However, the difference between the drawings using the normal trigonometric
  functions and the custom ones is negligible. In the default scale the
  diameter of a pixel is less than <math|0.01> units and the deviation after
  some movement is of the order <math|steps\<times\>eps\<times\>0.1=steps\<times\>10<rsup|-15>>.
  That is, the turtle would have to walk more than <math|10<rsup|12>> units
  before we could notice any difference.

  <\session|scheme|default>
    <\input|Scheme] >
      (define pi 3.14159265358979323846264338328)
    </input>

    <\input|Scheme] >
      (define eps 1e-15)
    </input>

    <\input|Scheme] >
      (define (_sin rad) (rationalize (sin rad) eps))
    </input>

    <\input|Scheme] >
      (define (_cos rad) (rationalize (cos rad) eps))
    </input>

    <\input|Scheme] >
      (define (forward dist)

      \ \ (let* ((rad (/ (* _ang pi) 180))

      \ \ \ \ \ \ \ \ \ (xdist (+ _posx (* dist (_cos rad))))

      \ \ \ \ \ \ \ \ \ (ydist (+ _posy (* dist (_sin rad)))))

      \ \ \ \ (go (list xdist ydist))))
    </input>

    <\input|Scheme] >
      (define (backward dist)

      \ \ (forward (* -1 dist)))
    </input>
  </session>

  Let's now write some extra routines for drawing figures. We start with a
  rectangle using the <TeXmacs> graphics primitive <markup|line>, then in
  <scm|circle> we compute three suitable points to draw a circle centered at
  the current position of the turtle and radius r, using the primitive
  <markup|carc>, which draws the circle defined by three points.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (rectangle n m)

      \ \ (let ((p1 (pos))

      \ \ \ \ \ \ \ \ (p2 (point (+ _posx n) _posy))

      \ \ \ \ \ \ \ \ (p3 (point (+ _posx n) (+ _posy m)))

      \ \ \ \ \ \ \ \ (p4 (point _posx (+ _posy m))))

      \ \ \ \ `(line ,p1 ,p2 ,p3 ,p4 ,p1)))
    </input>

    <\input|Scheme] >
      (define (circle r)

      \ \ (let ((p1 (point (+ _posx r) _posy))

      \ \ \ \ \ \ \ \ (p2 (point _posx (+ _posy r)))

      \ \ \ \ \ \ \ \ (p3 (point (- _posx r) _posy)))

      \ \ \ \ `(carc ,p1 ,p2 ,p3)))
    </input>
  </session>

  Let's try these out! First we need to build a <TeXmacs> <scm|tree> out of
  our lists. This we do with the routine <scm|(plot <scm-arg|draw>)>, which
  takes the output of a drawing routine as its argument to <scm-arg|draw>. If
  you don't see the results, remember that you have to activate
  <menu|Focus|Output options|Pretty tree output> while inside the <scheme>
  session.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (plot l) (stree-\<gtr\>tree l))
    </input>

    <\folded-io|Scheme] >
      (plot (rectangle 1 2))
    <|folded-io>
      <text|<line|<point|0|0>|<point|0.1|0>|<point|0.1|0.2>|<point|0|0.2>|<point|0|0>>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot (circle 1))
    <|folded-io>
      <text|<carc|<point|0.1|0>|<point|0|0.1>|<point|-0.1|0>>>
    </folded-io>
  </session>

  This is already looking good, but we need some color! We will now define
  <scm|fill> to set a background color, <scm|colorize> for a foreground
  color. But first there are some technicalities to be dealt with: because of
  the way attributes are set for graphical primitives, using <markup|with>
  tags, we have to take care of the following issue:
  <with|font-shape|italic|What happens when we nest attribute assignments?>
  This is solved with <scm|merge-with>. Then we define <scm|decorate> to set
  any attributes:

  <\session|scheme|default>
    <\input|Scheme] >
      (define (merge-with l par val subs)

      \ \ (cond ((== (length l) 0) '())

      \ \ \ \ \ \ \ \ ((== (length l) 1) (append (list par val) l))

      \ \ \ \ \ \ \ \ ((== par (car l))

      \ \ \ \ \ \ \ \ \ (if subs (set-car! (cdr l) val)) l)

      \ \ \ \ \ \ \ \ (else\ 

      \ \ \ \ \ \ \ \ \ \ (let ((t (list (car l) (cadr l))))

      \ \ \ \ \ \ \ \ \ \ \ \ (append t (merge-with (cddr l) par val
      subs))))))
    </input>

    <\input|Scheme] >
      (define (decorate l par val subs)

      \ \ (cond ((or (nlist? l) (null? l)) '())

      \ \ \ \ \ \ \ \ ((list? (car l))\ 

      \ \ \ \ \ \ \ \ \ (append (list (decorate (car l) par val subs))\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (decorate (cdr l) par val subs)))

      \ \ \ \ \ \ \ \ ((== (car l) 'with)\ 

      \ \ \ \ \ \ \ \ \ (append '(with) (merge-with (cdr l) par val subs)))

      \ \ \ \ \ \ \ \ ((or (== (car l) 'line) (== (car l) 'carc) (== (car l)
      'point))

      \ \ \ \ \ \ \ \ \ (append '(with) (merge-with (list l) par val
      subs)))))
    </input>

    <\input|Scheme] >
      (define (fill fig bc)

      \ \ (decorate fig "fill-color" bc #f))
    </input>

    <\input|Scheme] >
      (define (force-fill fig bc)

      \ \ (decorate fig "fill-color" bc #t))
    </input>

    <\input|Scheme] >
      (define (colorize fig fc)

      \ \ (decorate fig "color" fc #f))
    </input>

    <\input|Scheme] >
      (define (force-colorize fig fc)

      \ \ (decorate fig "color" fc #t))
    </input>

    <\input|Scheme] >
      (define (width fig n)

      \ \ (if (\<gtr\> n 0)\ 

      \ \ \ \ \ \ (decorate fig\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "line-width"\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (string-append (number-\<gtr\>string n)
      "ln")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ #f)

      \ \ \ \ \ \ \ '()))
    </input>

    <\input|Scheme] >
      (define (force-width fig n)

      \ \ (if (\<gtr\> n 0)\ 

      \ \ \ \ \ \ \ \ (decorate fig\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "line-width"\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (string-append
      (number-\<gtr\>string n) "ln")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ #t)

      \ \ \ \ \ \ \ '()))
    </input>
  </session>

  After some reverse-engineering of <TeXmacs> graphics we find how to change
  line styles as well. There seems to be no code number for the normal pen;
  as a consequence one cannot force this style.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (style fig n)

      \ \ (cond ((== n 0) fig)

      \ \ \ \ \ \ \ \ ((== n 1) (decorate fig "dash-style" "10" #f))

      \ \ \ \ \ \ \ \ ((== n 2) (decorate fig "dash-style" "11100" #f))

      \ \ \ \ \ \ \ \ ((== n 3) (decorate fig "dash-style" "1111010" #f))

      \ \ \ \ \ \ \ \ (else '())))
    </input>

    <\input|Scheme] >
      (define (force-style n)

      \ \ (cond ((== n 0) fig)

      \ \ \ \ \ \ \ \ ((== n 1) (decorate fig "dash-style" "10" #t))

      \ \ \ \ \ \ \ \ ((== n 2) (decorate fig "dash-style" "11100" #t))

      \ \ \ \ \ \ \ \ ((== n 3) (decorate fig "dash-style" "1111010" #t))

      \ \ \ \ \ \ \ \ (else '())))
    </input>
  </session>

  We may finally test the colors:

  <\session|scheme|default>
    <\folded-io|Scheme] >
      (plot (fill (circle 2) "red"))
    <|folded-io>
      <text|<with|fill-color|red|<carc|<point|0.2|0>|<point|0|0.2>|<point|-0.2|0>>>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot (colorize (circle 2) "green"))
    <|folded-io>
      <text|<with|color|green|<carc|<point|0.2|0>|<point|0|0.2>|<point|-0.2|0>>>>
    </folded-io>

    <\folded-io|Scheme] >
      (plot (colorize (width (style (circle 4) 2) 2) "purple"))
    <|folded-io>
      <text|<with|dash-style|11100|line-width|2ln|color|purple|<carc|<point|0.4|0>|<point|0|0.4>|<point|-0.4|0>>>>
    </folded-io>
  </session>

  One last routine. Use it like all the others.

  <\session|scheme|default>
    <\input>
      Scheme]\ 
    <|input>
      (define (text str)

      \ \ `(with "text-at-valign" "center" "text-at-halign" "center"\ 

      \ \ \ \ \ \ \ \ \ (text-at ,str ,(pos))))
    </input>
  </session>

  <section|The artist>

  It is time now for formal introductions. Here is our artist:

  <\session|scheme|default>
    <\input|Scheme] >
      (define show-turtle? #t)
    </input>

    <\input|Scheme] >
      (define (turtle x y ang sz)

      (let ((points (map (lambda (t)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (go (list x y))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (look (+ ang t))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (forward sz)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (pos))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ '(0 135 225 0))))

      \ \ \ \ \ (go (list x y))

      \ \ \ \ \ (append '(line) points)))
    </input>

    <\input|Scheme] >
      (define (show-turtle)

      \ \ (set! show-turtle? #t)

      \ \ (refresh-canvas))
    </input>

    <\input|Scheme] >
      (define (hide-turtle)

      \ \ (set! show-turtle? #f)

      \ \ (refresh-canvas))
    </input>
  </session>

  As you can see, you may hide the turtle if it's bothering you or show it
  again by using <verbatim|hide-turtle> or <verbatim|show-turtle>. But notice
  those <scm|refresh-canvas>: we need to have somewhere to draw and that we
  do in the next section.

  Before we get into that we deal with a few more technicalities: first we
  provide a way to tell the turtle not to draw while moving. As announced
  this is done ``moving the pen up'', which we achieve enclosing any drawing
  instructions within a call to <scm|up>. This can be undone with a call to
  <scm|down>. However this requires us to handle nested <scm|up>s and
  <scm|down>s. Meet <scm|simplify>: this procedure takes as argument a list
  (of lists) <scm-arg|l> and flattens it into a simpler one (it takes some
  brackets away). It also uses a counter <scm-arg|i> to add all the <scm|up>s
  and <scm|down>s corresponding to an item in the list (<math|+1> for each
  <scm|up> and <math|-1> for each <scm|down>). If the final sum is positive
  the corresponding item must not be draw and is thefore deleted from the
  list. The fact that we need such a function is probably a symptom of bad
  design: our drawing routines should have cleaner output (exercise for the
  reader!).

  Finally we define the convenience routine <scm|draw>, which calls
  <scm|simplify> and <scm|to-canvas>. <scm|draw> accepts an arbitrary number
  of arguments, all interpreted as drawing commands.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (up l)

      \ \ (cons 'up (list l)))
    </input>

    <\input|Scheme] >
      (define (down l)

      \ \ (cons 'down (list l)))
    </input>

    <\input|Scheme] >
      (define (simplify l i)

      \ \ (cond ((or (null? l) (nlist? l)) '())

      \ \ \ \ \ \ \ \ ((nlist? (car l))

      \ \ \ \ \ \ \ \ \ (cond ((== (car l) 'up) (simplify (cdr l) (+ i 1)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ ((== (car l) 'down) (simplify (cdr l) (-
      i 1)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (else (if (\<less\>= i 0) (list l)
      '()))))

      \ \ \ \ \ \ \ \ (else (append (simplify (car l) i)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (simplify (cdr l) i)))))
    </input>

    <\input|Scheme] >
      (define (draw . l)

      \ \ (if (nnull? l) (to-canvas (simplify l 0))))
    </input>
  </session>

  <section|The canvas>

  <with|ornament-color|pastel red|<\ornamented>
    <\note*>
      This section is merely technical and unrelated to the drawing stuff. If
      you are not interested in the creation of user interfaces just skip
      this (after executing the code!).
    </note*>
  </ornamented>>

  We finally move on to the canvas and some nice drawings. This requires some
  magic to open a new viewer window which involves defining a widget and a
  few functions. A walkthrough of this code is left for another time.

  <\session|scheme|default>
    <\input|Scheme] >
      (define _content '())
    </input>

    <\input|Scheme] >
      (define _bgcolor "#fdfdfd")
    </input>

    <\input|Scheme] >
      (define _canvas-zoom 100) ; Percentage
    </input>

    <\input|Scheme] >
      (define (_head)\ 

      \ \ (if show-turtle?

      \ \ \ \ \ \ `(colorize ,(turtle _posx _posy _ang (* 30 _zoom)) "dark
      green")

      \ \ \ \ \ \ '()))
    </input>

    <\input|Scheme] >
      (define (canvas-scale)

      \ \ (string-append (number-\<gtr\>string (exact-\<gtr\>inexact (/
      _canvas-zoom 100)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "cm"))
    </input>

    <\input|Scheme] >
      (define (logo-canvas-content content head)

      \ \ `(with "bg-color" ,_bgcolor

      \ \ \ \ \ (document\ 

      \ \ \ \ \ \ \ (with

      \ \ \ \ \ \ \ \ \ \ \ "gr-frame" (tuple "scale" ,(canvas-scale)\ 

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (tuple
      "0.5gw" "0.5gh"))

      \ \ \ \ \ \ \ \ \ \ \ "gr-geometry" (tuple "geometry" "1par" "1par"
      "center")

      \ \ \ \ \ \ \ \ \ (graphics "" ,@content ,@head)))))
    </input>

    <\folded-io|Scheme] >
      (tm-define (refresh-canvas)

      \ \ (refresh-now "logo-canvas"))
    <|folded-io>
      \;
    </folded-io>

    <\folded-io|Scheme] >
      (tm-define (clear-canvas)

      \ \ (set! _content '()))
    <|folded-io>
      \;
    </folded-io>

    <\input|Scheme] >
      (define (set-canvas-bg col)

      \ \ (set! _bgcolor col)

      \ \ (refresh-canvas))
    </input>

    <\input|Scheme] >
      (define (set-canvas-zoom s refresh-enum?)

      \ \ (set! _canvas-zoom (min 400 (max 1 (string-\<gtr\>number s))))

      \ \ (refresh-canvas)

      \ \ (if refresh-enum? (refresh-now "logo-canvas-zoom")))
    </input>

    <\folded-io|Scheme] >
      (tm-define (reset-canvas)

      \ \ (go home)

      \ \ (look north)

      \ \ (clear-canvas)

      \ \ (set-canvas-zoom "100" #t))
    <|folded-io>
      \;
    </folded-io>

    <\input|Scheme] >
      (define (save-canvas u)

      \ \ (with file (url-\<gtr\>unix u)

      \ \ \ \ (if (!= (string-take-right file 3) ".ps")

      \ \ \ \ \ \ \ \ (set! file (string-append file ".ps")))

      \ \ \ \ (with t (stree-\<gtr\>tree (logo-canvas-content _content
      (_head)))

      \ \ \ \ \ \ (print-snippet file t))))
    </input>

    <\input|Scheme] >
      (define (toggle-turtle show?)

      \ \ (if show? (show-turtle) (hide-turtle))

      \ \ (refresh-canvas))
    </input>

    <\folded-io|Scheme] >
      (menu-bind canvas-background-color-menu

      \ \ ("Default" (set-canvas-bg "#fdfdfd"))

      \ \ ---

      \ \ (pick-background "" (set-canvas-bg answer))

      \ \ ---

      \ \ ("Palette" (interactive-background

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ (lambda (col) (set-canvas-bg col)) '())))
    <|folded-io>
      \;
    </folded-io>

    <\input|Scheme] >
      (tm-widget (logo-canvas-extra) // ) ; placeholder for user extension
    </input>

    <\unfolded-io|Scheme] >
      (tm-widget (logo-canvas quit)

      \ \ (resize ("400px" "800px" "4000px") ("300px" "600px" "4000px")

      \ \ \ \ (vlist

      \ \ \ \ \ \ (refreshable "logo-canvas"

      \ \ \ \ \ \ \ \ (texmacs-output\ 

      \ \ \ \ \ \ \ \ \ (stree-\<gtr\>tree (logo-canvas-content _content
      (_head)))

      \ \ \ \ \ \ \ \ \ '(style "generic")))

      \ \ \ \ \ \ (hlist

      \ \ \ \ \ \ \ \ ///

      \ \ \ \ \ \ \ \ (text "Background:") //

      \ \ \ \ \ \ \ \ (=\<gtr\> (balloon (icon "tm_color.xpm") "Change
      backround")

      \ \ \ \ \ \ \ \ \ \ \ \ (link canvas-background-color-menu))

      \ \ \ \ \ \ \ \ ///

      \ \ \ \ \ \ \ \ (text "Turtle:") //\ 

      \ \ \ \ \ \ \ \ (toggle (toggle-turtle answer) show-turtle?)

      \ \ \ \ \ \ \ \ /// //

      \ \ \ \ \ \ \ \ (text "Zoom (%):") //

      \ \ \ \ \ \ \ \ (refreshable "logo-canvas-zoom"

      \ \ \ \ \ \ \ \ \ \ (enum ((cut set-canvas-zoom \<less\>\<gtr\> #f)
      answer)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ '("10" "20" "50" "70" "80" "90" "100"
      "150" "200" "400")

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (number-\<gtr\>string _canvas-zoom)
      "4em"))

      \ \ \ \ \ \ \ \ ///

      \ \ \ \ \ \ \ \ (dynamic (logo-canvas-extra))

      \ \ \ \ \ \ \ \ \<gtr\>\<gtr\>\<gtr\>

      \ \ \ \ \ \ \ \ (explicit-buttons

      \ \ \ \ \ \ \ \ \ \ ("Save" (choose-file save-canvas "Save PostScript"
      "ps"))\ 

      \ \ \ \ \ \ \ \ \ \ ///

      \ \ \ \ \ \ \ \ \ \ ("Reset" (reset-canvas)) ///

      \ \ \ \ \ \ \ \ \ \ ("Close" (quit)))))))
    <|unfolded-io>
      \;
    </unfolded-io>

    <\folded-io|Scheme] >
      (tm-define (to-canvas l)

      \ \ ; Remember the drawing contract:

      \ \ ; Drawing functions such as turn that do not change _content return
      '()

      \ \ (cond ((nlist? l) (set! _content '()))

      \ \ \ \ \ \ \ \ ((== l '()))

      \ \ \ \ \ \ \ \ ((list? (car l)) (set! _content (append _content l)))

      \ \ \ \ \ \ \ \ (else (set! _content (append _content (list l)))))

      \ \ (refresh-now "logo-canvas"))
    <|folded-io>
      \;
    </folded-io>

    <\folded-io|Scheme] >
      (tm-define (new-canvas . s)

      \ \ (if (nnull? s) (set! s (car s)) (set! s "Turtle's playground"))

      \ \ (set! _content '())

      \ \ (dialogue-window logo-canvas noop s))
    <|folded-io>
      \;
    </folded-io>
  </session>

  The way one uses this is: first create a canvas with <scm|new-canvas>, then
  paint any drawing lists using <scm|to-canvas>. In order to return to the
  original setup, we use <scm|(go home)> then <scm|(look north)> and finally
  <scm|(clear-canvas)>. A bit cumbersome, so we implemented a button for
  that.

  We can finally test everything using <scm|new-canvas> and sending the
  output of any of our drawing routines to the procedure <scm|to-canvas>:

  <\session|scheme|default>
    <\input|Scheme] >
      (new-canvas)
    </input>

    <\input|Scheme] >
      (to-canvas (fill (circle 2) "blue"))
    </input>
  </session>

  <section|Examples>

  We finally have all the tools to start crating some nice drawings. The next
  function uses <verbatim|map> to create a colorful petal. Since on each step
  we want to draw two figures (a <scm|circle> and a <scm|line>), we need to
  enclose them in a list (othewise only the list corresponding to last one
  would be returned). In this case we must apply <scm|simplify> to the final
  result before we can send it to the canvas, but this is already handled by
  <scm|draw>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (petal)

      \ \ (map (lambda (x y)

      \ \ \ \ \ \ \ \ \ (right x)

      \ \ \ \ \ \ \ \ \ (list (colorize (forward 10) (string-append "dark "
      y))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ (colorize (circle 1) y)))

      \ \ \ \ \ \ \ '(20 40 60 80 60 40)

      \ \ \ \ \ \ \ '("red" "green" "blue" "yellow" "orange" "magenta")))
    </input>

    <\input|Scheme] >
      (draw (petal))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  With the next procedure <scm|(reps <scm-arg|fun> <scm-arg|count>)> we can
  iterate a function <scm-arg|fun> a number <scm-arg|count> of times. Using
  <scm|reps> with <scm|petal> we have a nice flower-sort-of-thing.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (reps fun count)

      \ \ (if (and (number? count) (\<gtr\> count 0))

      \ \ \ \ \ \ (append (fun) (reps fun (- count 1)))

      \ \ \ \ \ \ '()))
    </input>

    <\input|Scheme] >
      (draw (reps petal 6))
    </input>
  </session>

  Colors and iterations can turn every <scm|flip> into someting really
  nice...

  <\session|scheme|default>
    <\input|Scheme] >
      (define (flip sz col)

      \ \ (map (lambda (a b)

      \ \ \ \ \ \ \ (right a)

      \ \ \ \ \ \ \ (colorize (forward (* sz (sin (/ (* b pi) 180)))) col))

      \ \ \ \ \ \ \ '(-30 90 -120 -90)

      \ \ \ \ \ \ \ '(60 30 30 60)))
    </input>

    \;

    <\input|Scheme] >
      (define (biflip col1 col2 sz)

      \ \ (append (flip sz col1) (flip sz col2)))
    </input>

    \;

    <\input|Scheme] >
      (define (flower col1 col2 sz)

      \ \ (reps (lambda () (biflip col1 col2 sz)) 12))
    </input>

    <\input|Scheme] >
      (define (mosaic sz)

      \ \ (map (lambda (col1 col2 sz)

      \ \ \ \ \ \ \ \ \ (right 72)

      \ \ \ \ \ \ \ \ \ (forward sz)

      \ \ \ \ \ \ \ \ \ (flower col1 col2 sz))

      \ \ \ \ \ \ \ '("blue" "red" "green" "magenta" "yellow")

      \ \ \ \ \ \ \ '("dark blue" "dark red" "dark green" "dark magenta"
      "dark yellow")

      \ \ \ \ \ \ \ '(10 10 10 10 10)))
    </input>

    <\input|Scheme] >
      (draw (mosaic 10))
    </input>

    <\input|Scheme] >
      \;
    </input>
  </session>

  Another time we'll draw some classics with our turtle.

  <section|To do>

  These are left as exercise for the reader:

  <\itemize-dot>
    <item>Replace turtle with ugly gnu with bulging eyes!

    <item>Compute the bounding box of any list to be able to stack/align
    arbitrary drawings.

    <item>Simplify the interface and maybe properly document it?

    <item>Create multiple canvases. Problem: <scm|draw> receives an already
    evaluated list, but this list depends on the canvas on which we want to
    draw... so we need to delay the execution of the functions. Macros?

    <item>Improve the drawing window, add options, maybe add a gallery...
  </itemize-dot>

  <tmdoc-copyright|2013|Ana Cañizares García and Miguel de Benito Delgado>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
    <associate|preamble|false>
  </collection>
</initial>