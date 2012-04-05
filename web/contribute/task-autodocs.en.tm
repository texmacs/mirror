<TeXmacs|1.0.7.15>

<style|tmweb>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|Task: Automatic and
  on-line documentation|<tmweb-contribute-links>>

  <section|Description and participants>

  The purpose of this task is to add documentation to the interface in a
  programmatic way using <scheme>: some candidates are keyboard shortcuts,
  menu items and scheme code. The documentation should be both compiled
  dynamically and extracted from reference guides.

  Current members are <hlink|Miguel de Benito Delgado|team-miguel.en.tm> and
  Álvaro Tejero Cantero. We embrace open discussion (as long as it suits us)
  and abhor hierarchies so we have no leader and welcome any contributors.

  <section|Current work>

  Here are some notes taken while thinking about the problems related to this
  task.

  <subsection|Keyboard Shortcuts>

  In a first approximation, a list of the available shortcuts should be
  compiled depending on the current mode and presented in a new buffer.
  Besides each shortcut, the corresponding menu entry (see below for some
  comments on the menu tag) should be displayed along with a little
  explanation and link to relevant documentation. Although highly desirable,
  this feature is far from optimal: it would be best to allow configuration
  of the shortcuts at the same place where they are displayed. Maybe
  implement a shorcut editor?

  <subsection|Menu items>

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
    <menu|Document|Update|All>. Ideally, clicking on this tag would popup the
    menu and display the item.

    <item>A new ``What's this?'' mode should be added to the editor:

    <\itemize-minus>
      <item><key|S+F1> should pop up the ``What's this?'' balloon for the
      widget under the pointer or at least enter the mode and let the user
      click on anything he wants explained.

      <item><key|ESC> or some key to exit it.

      <item>The mouse pointer should change to an arrow with a question mark
      or something similar.
    </itemize-minus>

    <item>Support for the feature must be added to abstract widgets, widkit
    and the qt port. This is needed to better document dialogs, since items
    in dialogs have no meaning isolated from the others or aren't even linked
    to commands, as is the case for forms.

    <\itemize-minus>
      <item>There is already a <scm|balloon> widget which provides a tooltip
      for the widgets it encloses. Like this:

      <\session|scheme|default>
        <\unfolded-io|Scheme] >
          (tm-widget (tooltip)

          \ \ (balloon (text "Some nice text") "Some nice tooltip"))
        <|unfolded-io>
          \;
        </unfolded-io>

        <\input|Scheme] >
          (show tooltip)
        </input>
      </session>

      But as you can see, that doesn't work, so we need to make it work.

      <item>We want a <verbatim|SLOT_WHATSTHIS> (do we?). How do we implement
      it, exactly?

      <item>Maybe new properties for widgets: <verbatim|string whatsthis; url
      docs;>

      <item><with|font-series|bold|Problem:> things will inevitably go out of
      sync. A possibility is to add a timestamp check on the module
      definition file and the documentation file, then warn the user in the
      help page or even in the popup that the docs might be outdated (ugly).
    </itemize-minus>
  </enumerate-numeric>

  <subsection|Scheme code>

  A first step has been taken with the help page <menu|Help|Scheme
  extensions|List all commands>, but this is not only slow and ugly, it is
  incomplete and mostly useless. Ideally we want:

  <\enumerate-numeric>
    <item><label|scm:det_docs>Detailed documentation of each exported
    function and each module in <TeXmacs>.

    <item><label|scm:context>Contextual help inside scheme sessions and open
    scheme files.

    <item><label|scm:edit_docs>This includes seeing the documentation as well
    as being able to edit it, for example adding a menu item to help buffers:
    "Save documentation". This would really help to improve the docs.

    <item><label|scm:search>Add some "Search in public functions..." which
    does not grep. It <with|font-series|bold|has> to be fast.

    <item><label|scm:tab_completion>Tab completion inside scheme sessions and
    open scheme files. This includes a list with the arguments of functions
    and their type (extra markup needed in the docs to tag this).

    <item><label|scm:hyperlinks>In the documentation, make hyperlinks of
    everything (?) inside <verbatim|scm> tags, maybe <verbatim|scm-code> as
    well. Do not change their color or it will suck.
  </enumerate-numeric>

  Some steps towards achieving <reference|scm:det_docs> and
  <reference|scm:context> are:

  <\enumerate-numeric>
    <item>We add a short synopsis in the code (but with some more meaning
    than the three words in the comments at the top) for each module, using
    some keyword for <scm|tm-module>, for instance.

    <item>We automatically generate an index for all modules, in a similar
    way to that drafty function index already written. We could use the
    synopsis here.

    <item>We manually fill documentation pages for each module with
    introduction, examples and generalities. Then list all <scm|tm-define>d
    functions in that module. See below for an example following the usual
    conventions. Some new markup will be needed.

    <item>It is to be decided whether some things will be dynamically created
    or not. Either:

    <\enumerate-roman>
      <item>Upon loading of module documentation pages, some mechanism fills
      in with templates and/or marks stuff as not documented or outdated when
      needed,

      <item>Or we have some "Check/Rebuild documentation" button somewhere at
      sometime.
    </enumerate-roman>

    <item>The same applies for the indices: automatic or not.
  </enumerate-numeric>

  This is an example of the format the module documentation could have:

  \;

  <tmdoc-title|Some module's reference file>

  This is the documentation for module <scm|some.module-path.some-module>
  which can be found in <hlink|progs/some/module-path/some-module.scm|<hlink|$TEXMACS_PATH/progs|>/some/module-path/some-module.scm>.
  Only public, <scm|tm-define>'d, symbols are listed in this document.

  \;

  <\explain>
    <scm|(absolute-function with args)><explain-synopsis|uselessly short
    synopsis>
  <|explain>
    This function takes argumens <src-arg|with>, and <src-arg|args> which
    must be of type <scm|flop>. Then it computes the fulminator of the
    conpolution and approximates the curve spectrum of its resolvent with an
    exhaustive breadth first algorithm on <math|\<bbb-R\><rsup|n>> of
    arbitrary metroscopic precision. The megalomaniac flow inverter is left
    unchanged.

    <\unfolded-std>
      <with|color|dark green|<em|Example...>>
    <|unfolded-std>
      <\scm-code>
        (with bla (absolute-function some arg)

        \ \ (do this and that))
      </scm-code>
    </unfolded-std>

    <\unfolded-std>
      <with|color|dark green|<em|Source code...>>
    <|unfolded-std>
      <\scm-code>
        (tm-define (absolute-function some arg)

        \ \ (perform-ultimate-computation)

        \ \ 42)
      </scm-code>
    </unfolded-std>
  </explain>

  \;

  <\explain>
    <scm|(absolute-function2 with args)><explain-synopsis|short synopsis>
  <|explain>
    This function takes argumens <src-arg|with>, and <src-arg|args> which
    must be of type <scm|flip>. Then it computes the fulminator of the
    conpolution and approximates the curve spectrum of its resolvent with an
    exhaustive breadth first algorithm on <math|\<bbb-R\><rsup|n>> of
    arbitrary metroscopic precision. The megalomaniac flow inverter is left
    unchanged.
  </explain>

  <subsection|Other ideas>

  Some of those are first steps to <TeXmacs> as an IDE to itself, with other
  desirable features being:

  <\itemize-minus>
    <item>Jump to code when clicking on an item in the GUI.

    <item>Setting breakpoints inside open scheme files

    <item>Having a scheme session in a split window (almost there with the
    new widgets).

    <item>Reliable mechanism to reload modules.\ 
  </itemize-minus>

  \;

  <tmdoc-copyright|2012|Miguel de Benito Delgado>

  <tmweb-license>
</body>