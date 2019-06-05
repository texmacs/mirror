<TeXmacs|1.99.2>

<style|tmweb2>

<\body>
  <tmweb-title|Shortcut to cycle open buffers|<tmweb-list|<tmweb-link|Team|../contribute/team>|<tmweb-link|Miguel's
  home|../contribute/team-miguel>>>

  <\hide-preamble>
    \;

    <assign|convention-text|<macro|<localize|Contract>>>

    <assign|convention*|<\macro|body>
      <compound|render-remark|<compound|convention-unnumbered|<compound|convention-text>>|<arg|body>>
    </macro>>
  </hide-preamble>

  <doc-date|February, 2015>

  <with|ornament-color|pastel red|<\ornamented>
    <\note*>
      It is best to read the original <TeXmacs> file with interactive
      <scheme> sessions where one may experiment with the code. It can be
      found in the <hlink|project's source
      code|http://svn.savannah.gnu.org/viewvc/trunk/?root=texmacs>, inside
      the directory <shell|web/miguel>.
    </note*>
  </ornamented>>

  <subsection|What?>

  It would be a much appreciated feature to have a keyboard shortcut to cycle
  through all open buffers in a <TeXmacs> session. Of course, there is the
  <menu|Go> menu, but is there ever a mouse to be found when you need one? We
  provide this much sought after feature.

  <subsection|Why?>

  Well, we would very much like it. And at least one of us wants to learn how
  to improve his coding skills and get to know <TeXmacs>. So here it is.
  (Because we can is another valid motivation).

  <subsection|How?>

  <\warning*>
    First things first: you will need a working source installation of
    <TeXmacs>, meaning you will need to compile the sources to test these
    things out. <strong|Unless> you already have <TeXmacs> version 1.99.3 or
    an <name|svn> revision greater than 89??, which will most likely include
    / includes these features.
  </warning*>

  We proceed in five steps:

  <\enumerate>
    <item>Add the information on when buffers were opened to the internal
    data structure representing them.

    <item>Implement a <c++> function to return this value for any given
    buffer (by <name|url>).

    <item>Export (a.k.a. ``glue'') this function to the <scheme> interpreter.

    <item>Actually implement the feature ``go to next/previous buffer''.

    <item>Add shortcuts <todo|and menu items> to use this feature.
  </enumerate>

  <paragraph|A bit of plumbing (steps 1-2)>

  <\note*>
    Indications of line numbers are based on an <name|svn> revision around
    8840. If you have any other version of the sources there might be
    differences.
  </note*>

  We first need to add a routine to <TeXmacs> which returns the time at which
  a buffer was opened. This is going to be the default ordering of the
  buffers in our swapping list and serves the purpose of consistently sorting
  it regardless of recent activity, as opposed to what is currently done in
  the <menu|Go> menu.

  First we need to save this information. In the file
  <verbatim|src/Texmacs/Data/new_buffer.hpp> add the following (~line 31):

  <\cpp-code>
    time_t open_time; \ \ \ \ \ \ // time that the buffer was opened
  </cpp-code>

  We want that the timestamp is added (as metadata) to the buffer when the
  buffer is created so we need to modify the last line of the constructor
  <cpp|inline new_buffer_rep (url name2)> to read:

  <\cpp-code>
    last_visit (texmacs_time ()), open_time (texmacs_time()) {}
  </cpp-code>

  We now add the declaration of the method which will return the data we just
  initialized. Define (~line 90):

  <\cpp-code>
    double buffer_open_time (url name);
  </cpp-code>

  This function is made mimicking <cpp|buffer_last_visit> and will be the one
  which the scheme interpreter calls when the scheme command
  <scm|buffer-open-time> is called. In the file
  <verbatim|src/Texmacs/Data/new_buffer.cpp> add the following (~line 350):

  <\cpp-code>
    double

    buffer_open_time (url name) {

    \ \ \ \ tm_buffer buf= concrete_buffer (name);

    \ \ \ \ if (is_nil (buf)) return (double) 0;

    \ \ \ \ return (double) buf-\<gtr\>buf-\<gtr\>open_time;

    }
  </cpp-code>

  All these files and places within files were found by searching for
  occurrences of <verbatim|last_visited>.

  The following part is some auto-magic: we use a script to export our <c++>
  code for the <scheme> interpreter.

  <paragraph|Gluing it (step 3)>

  Now that we have the infrastructure, we may add it to the ``glue'', that
  is, we export it to the <scheme> interpreter. In the file
  \ <verbatim|src/Scheme/Glue/build-glue-basic.scm> add the following (~line
  565, where <scm|buffer-last-visited> is declared):

  <\scm-code>
    (buffer-open-time buffer_open_time (double url))
  </scm-code>

  Now go to <verbatim|src/Scheme/Glue> and do the following:

  <verbatim|./build-glue build-glue-basic.scm glue_basic.cpp>

  <paragraph|<scheme> implementation (steps 4-5)>

  For this section we will be looking for inspiration in
  <verbatim|file-menu.scm>, which we found investigating how the menu
  <menu|Go> is created and modified.

  The first thing we need is to be able to order the buffers from the oldest
  to the newest, hence we start with the routine ordering them.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (buffer-first-opened? b1 b2)

      \ \ (\<gtr\>= (buffer-open-time b1)

      \ \ \ \ \ \ (buffer-open-time b2)))
    </input>
  </session>

  Here we used the routine <scm|buffer-open-time> which we just exported via
  the glue. Now we want to actually sort the list of open buffers which is
  the same used in the <menu|Go> menu, but without truncating it to a fixed
  number and sorting it with the previous routine. We do this with the
  following function.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (buffer-sorted-list)

      \ \ (with l (list-filter (buffer-list) buffer-in-menu?)

      \ \ \ \ (list-sort l buffer-first-opened?)))
    </input>
  </session>

  Now we have to cycle through the list looking for our buffer (the current
  one) and returning the next one. We will create an auxiliary function
  <scm|find-next*> with an extra parameter to hold the first item of the
  list, but we will actually be using <scm|find-next>.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (find-next* l first what)

      \ \ (cond ((null? l) first)

      \ \ \ \ \ \ \ \ ((== what (car l)) (if (nnull? (cdr l)) (cadr l)
      first))

      \ \ \ \ \ \ \ \ (else (find-next* (cdr l) first what))))
    </input>

    <\input|Scheme] >
      (define (find-next l what)

      \ \ (if (null? l) "" (find-next* l (car l) what)))
    </input>
  </session>

  Now, if we want to move forwards then we cycle the list of current buffers
  starting from the current one, otherwise we revert the list and we cycle in
  the same way. Do not forget the last line, telling the function what to do
  with the buffer it gets.

  <\session|scheme|default>
    <\input|Scheme] >
      (define (buffer-cycle forwards?)

      \ \ (with b (current-buffer)

      \ \ \ \ (with next

      \ \ \ \ \ \ \ \ (if forwards?

      \ \ \ \ \ \ \ \ \ \ \ \ (find-next (buffer-sorted-list) b)

      \ \ \ \ \ \ \ \ \ \ \ \ (find-next (reverse (buffer-sorted-list)) b))

      \ \ \ \ \ \ (switch-to-buffer next))))
    </input>

    <\input|Scheme] >
      (buffer-cycle #f)
    </input>
  </session>

  Finally we actually define the shortcuts.

  <\session|scheme|default>
    <\folded-io|Scheme] >
      (kbd-map

      \ \ ("M-A-left" (buffer-cycle #f))

      \ \ ("M-A-right" (buffer-cycle #t)))
    <|folded-io>
      ("M-A-right")
    </folded-io>
  </session>

  <\note*>
    If you want to extract the code from this document, activate
    <menu|Tools|Developer tools> and with the cursor inside a session click
    on <menu|Developer|Export sessions...>
  </note*>

  <tmdoc-copyright|2015|Luigi Amedeo Bianchi and Miguel de Benito Delgado>

  <tmweb-license>
</body>

<initial|<\collection>
</collection>>