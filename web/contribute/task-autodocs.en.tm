<TeXmacs|1.99.2>

<style|tmweb2>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|Task: Automatic and
  on-line documentation|<tmweb-contribute-links>>

  The purpose of this task is to add documentation to the interface and
  internals in a programmatic way using <scheme>: this means documenting
  keyboard shortcuts, menu items and <scheme> code. The documentation should
  be both compiled dynamically and extracted from reference guides. You can
  contact <hlink|Miguel de Benito Delgado|team-miguel.en.tm> with ideas,
  praise or hate for the bugs in his code. Any offer for help will be
  especially welcome.

  <\note>
    As of <TeXmacs> 1.99.1 some of the features described here are
    implemented in a rather <em|alpha> state. However, code browsing, tab
    completion and contextual help (gathered on the fly and cached from the
    manual) inside any <scheme> tag (i.e. <markup|scm>, <markup|scm-code>,
    <scheme> sessions) should be more or less usable. If it doesn't work for
    you, please contact\ 
  </note>

  Here are some notes taken in 2012 while thinking about the problems related
  to this task. Please note that they might not be up to date. In particular
  some of these ideas might have already been implemented or dropped.

  <section|Keyboard Shortcuts>

  In a first approximation, a list of the available shortcuts should be
  compiled depending on the current mode and presented in a new buffer.
  Besides each shortcut, the corresponding menu entry (see below for some
  comments on the menu tag) should be displayed along with a little
  explanation and link to relevant documentation. Although highly desirable,
  this feature is far from optimal: it would be best to allow configuration
  of the shortcuts at the same place where they are displayed. Maybe
  implement a shortcut editor?

  <section|Menu items>

  Every action the user can take using the interface should be documented.
  Besides the obvious tooltip, one mechanism to achieve it is a ``What's
  this?'' feature. Here are some requirements and ideas related to it.

  <\enumerate-numeric>
    <item>Popups should be full <scm|texmacs-output> widgets (to allow for
    markup and math) and include links to more extensive documentation.

    <item>All menu items should be documented in a standard location for
    documentation: <verbatim|"doc/some/module/maindoc.tm#funcname">, for
    instance. The documentation should be command dependent: relocating the
    commands in new menus or widgets should have no effect.

    <item>The documentation of a particular item should reflect the places
    where this item is accesible. For instance, the documentation for
    ``Update all'' should include the fact that the command is accessible via
    <menu|Document|Update|All>. Ideally, clicking on this very tag
    <markup|menu> would popup the menu and display the item.

    <item>A new ``What's this?'' mode should be added to the editor:

    <\itemize-minus>
      <item><key|S+F1> should pop up the ``What's this?'' balloon for the
      widget under the pointer or at least enter the mode and let the user
      click on anything he wants explained. Then <key|ESC> or some key to
      exit it.

      <item><with|font-series|bold|Better:> just pressing some modifier key
      activates this mode: any click over a widget should tell it to display
      its ``What's this'' information. This can be sent up the chain of
      widgets until someone catches it.

      <item>The mouse pointer should change to an arrow with a question mark
      or something similar.
    </itemize-minus>

    <item>Support for the feature must be added to abstract widgets, WidKit
    and the Qt port. This is needed to better document dialogs, since items
    in dialogs have no meaning isolated from the others or aren't even linked
    to commands, as is the case for forms.

    <\itemize-minus>
      <item>There is already a <scm|balloon> widget which provides a tooltip
      for buttons. Like this:

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (tm-widget (tooltip)

          \ \ (balloon "Some nice text" "Some nice tooltip"))
        <|unfolded-io>
          ((guile-user) (guile-user))
        </unfolded-io>

        <\input|Scheme] >
          (show tooltip)
        </input>
      </session>

      But what we'd like is balloon to provide a tooltip for the widget it
      encloses

      <item>We want a <verbatim|SLOT_WHATSTHIS> (do we?). How do we implement
      it, exactly? Keep in mind that the popup must support full texmacs
      trees.

      <item>Maybe new properties for widgets: <verbatim|string whatsthis; url
      docs;>

      <item><with|font-series|bold|Problem:> things will inevitably go out of
      sync. A possibility is to add a timestamp check on the module
      definition file and the documentation file, then warn the user in the
      help page or even in the popup that the docs might be outdated (ugly).
    </itemize-minus>
  </enumerate-numeric>

  <section|Scheme code>

  Some steps have been taken with the items in the menu <menu|Developer>, but
  its quite lacking. Ideally we want:

  <\enumerate-numeric>
    <item><label|scm:det_docs>Detailed documentation of each exported
    function and each module in <TeXmacs>. This should include functions in
    the glue. <with|color|orange|In progress, but this is a huge task.>

    <item><label|scm:context>Contextual help inside scheme tags and sessions
    and open scheme files. Either using right click and a menu, or some
    modifer + click to jump directly to the docs (use the same as in the
    ``what's this?'' feature). See <tt|link-navigate.scm>. A side panel could
    be showing them constantly. <with|color|dark green|(Done, but the list of
    symbols is not complete. Needs a real parser.)>

    <item><label|scm:edit_docs>This includes seeing the documentation as well
    as being able to edit it, for example adding a menu item to help buffers:
    "Save documentation". This would really help to improve the docs.

    <item><label|scm:search>Add some "Search in public functions..." which
    does not grep. It <with|font-series|bold|has> to be fast.
    <with|color|dark green|(Done with the widget in <menu|Developer|Open
    symbol browser..>., but again the list is incomplete)>

    <item><label|scm:tab_completion>Tab completion inside scheme sessions and
    open scheme files. This includes a list with the arguments of functions
    and their type (extra markup needed in the docs to tag this).
    <with|color|orange|(In progress: the list is incomplete (no glued
    functions, no builtin functions) and no parameters. Needs a real
    parser.)>

    <item><label|scm:hyperlinks>Make everything inside <verbatim|scm>,
    <verbatim|scm-code> tags clickable using something like <key|cmd>+Click
    to navigate. <with|color|dark green|Done.>
  </enumerate-numeric>

  <paragraph|Problems>

  <\itemize-dot>
    <item>Things will go out of sync. Some time-stamping or checksum is
    necessary to check whether the docs might be outdated. Alternatively,
    developers should be very careful of updating their documentation.

    <item>The list of available modules and exported functions is huge.
    Keeping the documentation in conventional files organized in directories
    can become a mess. But a central database can be bad for version control.
  </itemize-dot>

  <\subsection>
    Modules documentation
  </subsection>

  This is an example of the format the module documentation has (we make
  extensive use of folds and links which won't display on the web). To see it
  in <TeXmacs> use the <menu|Developer> or <menu|Help|Scheme extensions>
  menus.

  <tmdoc-title|<scm|some-module>'s reference documentation>

  \;

  <tabular|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|1|1|cell-hyphen|t>|<cwith|1|1|1|1|cell-halign|l>|<cwith|1|1|1|1|cell-lborder|1px>|<cwith|1|1|1|1|cell-rborder|1px>|<cwith|1|1|1|1|cell-bborder|1px>|<cwith|1|1|1|1|cell-tborder|1px>|<cwith|1|1|1|1|cell-lsep|0.5em>|<cwith|1|1|1|1|cell-rsep|0.5em>|<cwith|1|1|1|1|cell-bsep|0.5em>|<cwith|1|1|1|1|cell-tsep|0.5em>|<cwith|1|1|1|1|cell-background|#f2fffc>|<table|<row|<\cell>
    <\explain>
      <scm|some-module> <explain-synopsis|synopsis for the module, as found
      in the code>
    <|explain>
      <with|font-series|bold|Module family:><htab|><scm|some.module-family>

      <with|font-series|bold|Dependencies:><htab|><hlink|<scm|another-module>|>,
      <hlink|<scm|yet-another-module>|>

      <with|font-series|bold|Source:><htab|><hlink|progs/some/module-family/some-module.scm|<hlink|$TEXMACS_PATH/progs|>/some/module-family/some-module.scm>

      <with|font-series|bold|Total exported
      symbols:><htab|><with|font-series|bold|35>

      <with|font-series|bold|Undocumented
      symbols:><htab|><with|font-series|bold|<with|color|red|33>>

      The amazing tasks performed by the functions in this module can be
      succintly described as follows: first they do things, then other
      things. They specifically check the flux capacitor and the inverted
      space compressor in a recursive, non-regressive but intrinsically
      aggresive way.
    </explain>
  </cell>>>>>

  \;

  <paragraph*|Exported symbols>

  <\explain>
    <scm|(absolute-function <scm-arg|with>
    <scm-arg|args>)><explain-synopsis|uselessly short synopsis>
  <|explain>
    This function takes argumens <src-arg|with>, and <src-arg|args> which
    must be of type <scm|flop>. Then it computes the fulminator of the
    conpolution and approximates the curve spectrum of its resolvent with an
    exhaustive breadth first algorithm on <math|\<bbb-R\><rsup|n>> of
    arbitrary metroscopic precision. The megalomaniac flow inverter is left
    unchanged.

    <\unfolded-explain>
      <with|color|dark green|<em|Example...>>
    <|unfolded-explain>
      <\scm-code>
        (with bla (absolute-function some arg)

        \ \ (do this and that))
      </scm-code>
    </unfolded-explain>

    <\unfolded-explain>
      <with|color|dark green|<em|Source code...>>
    <|unfolded-explain>
      <\scm-code>
        (tm-define (absolute-function some arg)

        \ \ (perform-ultimate-computation)

        \ \ 42)
      </scm-code>
    </unfolded-explain>
  </explain>

  \;

  <\explain>
    <scm|(absolute-function2 <scm-arg|with>
    <scm-arg|args>)><explain-synopsis|short synopsis>
  <|explain>
    This function takes argumens <src-arg|with>, and <src-arg|args> which
    must be of type <scm|flip>. Then it computes the fulminator of the
    conpolution and approximates the curve spectrum of its resolvent with an
    exhaustive breadth first algorithm on <math|\<bbb-R\><rsup|n>> of
    arbitrary metroscopic precision. The megalomaniac flow inverter is left
    unchanged.
  </explain>

  <paragraph*|Fixmes and To-dos><with|color|red|Not implemented.>

  <\unfolded>
    <tt|FIXME: why does this not work?><htab|><hlink|(line 111 of
    some-module.scm)|>
  <|unfolded>
    Click the link to jump to that line in the file. Here you have
    <math|\<pm\>3> lines of context:

    <\scm-code>
      \ \ \ \ \ \ \ \ \ \ \ (list ,@(map (lambda (m)

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \0(list
      ,@(compile-interface-spec m)))

      \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ modules))))

      \ \ \ \ \ \ ;; FIXME: why does this not work?

      \ \ \ \ \ \ ;; (define-macro (import-from . modules)

      \ \ \ \ \ \ ;; \ \ (define (import-from-body module)

      \ \ \ \ \ \ ;; \ \ \ \ \0(module-use! (current-module) (resolve-module
      ',module)))
    </scm-code>
  </unfolded>

  <\unfolded-std>
    <tt|FIXME: why can't we use procedure-\<gtr\>macro><htab|><hlink|(line 59
    of some-module.scm)|>

    Click the link to jump to that line in the file. Here you have
    <math|\<pm\>3> lines of context:
  <|unfolded-std>
    <\scm-code>
      (if (guile-a?)

      \ \ \ \ (define-macro (define-public-macro head . body)

      \ \ \ \ \ \ \0(define-public ,(car head)

      \ \ \ \ \ \ \ \ \ ;; FIXME: why can't we use procedure-\<gtr\>macro

      \ \ \ \ \ \ \ \ \ ;; for a non-memoizing variant?

      \ \ \ \ \ \ \ \ \ (procedure-\<gtr\>memoizing-macro

      \ \ \ \ \ \ \ \ \ \ (lambda (cmd env)

      \ \ \ \ \ \ \ \ \ \ \ \ (apply (lambda ,(cdr head) ,@body) (cdr
      cmd)))))))

      \;
    </scm-code>
  </unfolded-std>

  <section|Other ideas>

  <paragraph|Help for writing documentation>

  <\enumerate>
    <item>Add a menu entry with the "documentation tree". Clicking on an item
    should add a link to that section in the current document. Maybe a tree
    representation in the side panel would be better.

    <\enumerate>
      <item>The link shouldn't be a simple hlink tag. Use a specific tag
      which substitutes either the title of the section (while browsing the
      manual online) or the chapter/section number (if in book mode).

      <item><with|font-series|bold|Problem:> the current help menu is built
      manually in <tt|help-menu.scm>, no tree is available, so we'd have to
      traverse the docs first and build it (maybe check the manual generation
      routines).
    </enumerate>
  </enumerate>

  <paragraph|<TeXmacs> as an <abbr|IDE> to itself>

  Some of the things considered above are first steps to <TeXmacs> as an IDE
  to itself, with other desirable features being:

  <\itemize-dot>
    <item>Jump to code when clicking on an item in the GUI.

    <item>Setting breakpoints inside open scheme files.

    <item>Having a scheme session in a split window. This is already
    achievable with the new widgets, but having a REPL acting on the ``main''
    buffer would be cool.

    <item>Reliable mechanism to reload modules.\ 

    <item>Jump to the definition of any symbol clicking on it.
    <with|color|dark green|Done, but needs a real parser. Yes, yes...>
  </itemize-dot>

  <tmdoc-copyright|2012, 2013|Miguel de Benito Delgado>

  <tmweb-license>
</body>

<initial|<\collection>
</collection>>