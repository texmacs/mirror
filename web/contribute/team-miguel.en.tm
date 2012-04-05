<TeXmacs|1.0.7.14>

<style|tmweb>

<\body>
  <tmweb-current|Contribute|Team><tmweb-title|Miguel de Benito
  Delgado|<tmweb-contribute-links>>

  Miguel de Benito is a mathematician (or is trying to) living in Munich who
  likes to program in his free time. He has fixed a few bugs and has
  contributed a bit with the QT port of <TeXmacs> while generally pestering
  everyone. He is interested in several subprojects, including the QT port,
  error handling, automated documentation of the code and designing a better
  user interface and user experience altogether. If you are interested in
  contributing to <TeXmacs> in any of those areas, you can contact him at
  <tmweb-email|mdbenito|texmacs.org>. Miguel drinks his tea without any sugar
  and can hold his breath for 10 to 15 seconds in a good day.

  <htab|5mm><image|team-miguel.jpg||150px||>

  <section|Current tasks>

  In no particular order: cleaning <hlink|the
  tracker|https://savannah.gnu.org/projects/texmacs/>, revamping the printing
  interface, tinkering with QT widgets, filling this page, creating automated
  documentation for developers, fixing bugs, avoiding my real duties...

  <section|Bag of tricks>

  A few examples to place in your <verbatim|my-init-texmacs.scm> or
  elsewhere. As it's customary, I must warn you that I wrote these things for
  myself, don't complain if your computer bursts into flames.

  Here's a very handy one when you are tinkering with your setup:

  <\scm-code>
    (menu-bind tools-menu

    \ \ (former)

    \ \ ---

    \ \ ("Edit my-init-texmacs.scm"\ 

    \ \ \ \ (load-buffer (url-concretize "$TEXMACS_HOME_PATH/progs/my-init-texmacs.scm"))))
  </scm-code>

  But you'll probably want to save that buffer without destroying it! By
  default buffers are saved in the <TeXmacs> format, so you want to
  contextually overload <scm|save-buffer>:

  <\scm-code>
    (tm-define (is-scheme-buffer?)

    \ \ (:synopsis "A very lame check")

    \ \ (and (== "scm" (string-take-right (url-\<gtr\>string
    (current-buffer)) 3))

    \ \ \ \ \ \ \ (in-scheme?)))

    \;

    (tm-define (save-buffer . l)

    \ \ (:require (is-scheme-buffer?))

    \ \ (cond ((= (length l) 0) (save-buffer (current-buffer)))

    \ \ \ \ \ \ \ \ ((= (length l) 1) (texmacs-save-buffer (car l)
    "verbatim"))))
  </scm-code>

  \;

  \ You'll surely also want to be able to reload that file:

  <\scm-code>
    (tm-define (execute-current-buffer)

    \ \ (:synopsis "Tries to execute the currently open buffer.")

    \ \ (if (is-scheme-buffer?)

    \ \ \ \ (catch #t \ \ \ \ ; Catch everything

    \ \ \ \ \ \ (lambda ()\ 

    \ \ \ \ \ \ \ \ (load (url-\<gtr\>string (current-buffer))))\ 

    \ \ \ \ \ \ ; To do: parse other exception parameters. We understand:

    \ \ \ \ \ \ ;("open-file" "~A: ~S" ("No such file or directory" "blah")
    (2))

    \ \ \ \ \ \ ;(#f "Unbound variable: ~S" (somesyntaxerrorinthefile) #f)

    \ \ \ \ \ \ (lambda (key . parameters)

    \ \ \ \ \ \ \ \ (cond\ 

    \ \ \ \ \ \ \ \ \ \ ((== (car parameters) "open-file")

    \ \ \ \ \ \ \ \ \ \ \ \ (set-temporary-message "Load failed:"\ 

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "The
    file could not be opened"

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4000))

    \ \ \ \ \ \ \ \ \ \ ((== (car parameters) #f)

    \ \ \ \ \ \ \ \ \ \ \ \ (set-temporary-message "Execution failed:"\ 

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "Probably
    some syntax error"

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ 4000)))))))

    \;

    (menu-bind tools-menu

    \ \ (former)

    \ \ (when (is-scheme-buffer?)

    \ \ \ \ ("Execute current buffer" (execute-current-buffer))))

    \;

    (kbd-map ("M-enter" (execute-current-buffer)))

    \;
  </scm-code>

  <tmdoc-copyright|2012|Miguel de Benito Delgado>

  <tmweb-license>
</body>