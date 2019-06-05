<TeXmacs|1.99.2>

<style|tmweb2>

<\body>
  <tmweb-current|Contribute|Team><tmweb-title|Miguel de Benito
  Delgado|<tmweb-contribute-links>>

  Miguel de Benito is a mathematician living in Munich who likes to code in
  his spare time. He has fixed (quite?) a few bugs and has contributed to the
  <hlink|<name|Qt>|http://qt-project.org/> interface for <TeXmacs> while
  generally <hlink|pestering everyone|../home/ml.en.tm>. He is interested in
  several subprojects (see below), including the <name|Qt> port, using
  <TeXmacs> to develop for <TeXmacs> and designing a better user interface
  and user experience altogether.

  If you are interested in contributing in any of those areas, you can
  contact him at <rigid|<tmweb-email|mdbenito|texmacs.org>>.

  Miguel drinks his tea without any sugar and can hold his breath for 5 to 10
  seconds in a good day.

  <htab|5mm><image|team-miguel.jpg||150px||>

  <section|Projects, old and new>

  I'm interested (at least) in the following projects. Other than an obvious
  show-off, this list is an attempt to place blame where it is due: many of
  these items are partially or sub-optimally implemented due to lack of time.
  Please contact me with any ideas or suggestions or if you want to help out.
  For bug reports, please use <hlink|the bug
  tracker|https://savannah.gnu.org/projects/texmacs/>.

  <\description>
    <item*|QT port>Based on <tmweb-link|Massimiliano|team-massimiliano>'s
    work I've implemented some new standard widgets (color palettes, embedded
    <TeXmacs> buffers, filtered input widgets, tree views, ...) and
    tweaked/fixed a few old ones. I've also heavily commented the code in the
    hope of fooling some poor soul into helping us.

    <item*|<TeXmacs> as an <abbr|IDE> to itself>(In particular for <scheme>
    code edition). To this purpose I've implemented basic tab completion,
    contextual help popups and easy code browsing (jump to definitions,
    symbol lists, module browsing), bracket matching for all languages,
    customizable syntax highlighting (this still needs an interface, 2014)...
    Proper parsing and indexing of all code is in the queue. The amount of
    room for improvement is overwhelming and the overall result not that
    impressive, I know.

    <item*|Better bibliography management>I've implemented autocompletion for
    bibliographic keys, a simple bibliography dialog and a few other related
    things. I'm also <tmweb-link|toying with the idea|../miguel/task-zotero>
    of a <hlink|<name|Zotero>|https://www.zotero.org/> client and embedding
    bibliographic data into documents (2014).

    <item*|Automatic update mechanism>I wrote the (as of late 2014 yet to be
    used) update notification system for <name|MacOS> and <name|Windows>
    using <hlink|<name|Sparkle>|http://sparkle.andymatuschak.org/> and
    <hlink|<name|WinSparkle>|http://winsparkle.org/>. The <name|Linux> port
    is in the queue (hopefully in 2014).

    <item*|<hlink|<name|MetaWeblog>|https://en.wikipedia.org/wiki/MetaWeblog>
    integration>I played with this idea for a while some time ago (2013).
    <tmweb-link|Here's a document|../miguel/task-metaweblog> with some
    thoughts. Mostly I need someone to want to help out with the definition
    of macros and styles, then I'll write the backend.

    <item*|Documentation>I've mainly written about many of the widgets
    available for user interface design, as well as a bit about the
    <abbr|URL> system, preferences management, the default persistent storage
    mechanism and perhaps a couple other minor things. I've also worked in
    tools for automated extraction of <tmweb-link|documentation for users and
    developers|task-autodocs> (but dropped it because of... the lack of
    actual documentation to display (as of 2012)). <em|[More (and better)
    work has been done by Joris to extract and display macro documentation
    from the manual.]>

    <item*|Printing interface>An old (2010) implementation of a printing
    widget using <shell|lpr> to work around some features of the fixed
    <abbr|OS> default dialogues. It's written in <c++> in
    <shell|src/src/Plugins/QTMPrint*>, and should be deprecated any time now
    (2014) in favour of a pure <scheme> implementation.

    <item*|Bug fixing and minor tweaks>(And cleaning <hlink|the
    tracker|https://savannah.gnu.org/projects/texmacs/> of old junk.) Besides
    from fixing any bugs I can, I developed some tools for the translation of
    strings in the code. In particular one to gather all strings used in the
    <abbr|GUI> (see <menu|Developer|Translations>) and edit/reload them from
    within the editor. <em|[I think there's some overlap with similar
    functionality implemented by Andrey Grozin.]>
  </description>

  <section|Some tutorials>

  I often document the process of developing new features for <TeXmacs> using
  a <TeXmacs> document: a poor-man's literate programming of sorts. I've
  formatted some of these drafts into rough tutorials with the idea that they
  might help the newcomer. Here are a few of them:

  <with|ornament-color|pastel red|<\ornamented>
    <\note*>
      It is best to read the original <TeXmacs> files with interactive
      <scheme> sessions where one may experiment with the code. They can be
      found in the <hlink|project's source
      code|http://svn.savannah.gnu.org/viewvc/trunk/?root=texmacs>, inside
      the directory <shell|web/miguel>.
    </note*>
  </ornamented>>

  <\itemize-dot>
    <item><em|<tmweb-link|Turtle graphics|../miguel/snippet-logo> (Dec.
    2013). >An implementation of a small <name|Logo>-like set of macros to be
    used in <scheme> programs inside <TeXmacs>, featuring a canvas for output
    and nice examples, including some beatiful recursion! This was joint
    work/fun with <hlink|Ana Cañizares García|http://www.mathematik.uni-muenchen.de/~caniz/>
    (more on this below).

    <item><em|<tmweb-link|Evaluating code
    snippets|../miguel/snippet-evaluation> (Jan. 2014). >Evaluation of code
    inside <markup|scm-code> tags using links in the text. This could be
    useful in printed documentation, where framed environments look better
    than embedded <scheme> sessions.

    <item><em|<tmweb-link|Subtree extraction|../miguel/snippet-subtree-extraction>
    (Feb. 2014). >A very small tool to extract environments from a document
    into a new one, e.g. exercises or solutions.

    <item><em|<tmweb-link|Fractal turtles|../miguel/snippet-fractal-1> (Mar.
    2014). >A quick follow-up to the <TeXmacs> pseudo-<name|Logo> including
    some beatiful recursion! This was joint work/fun with Ana Cañizares
    García.

    <item><em|<tmweb-link|Cycling through
    buffers|../miguel/snippet-buffercycle> (Feb. 2015). >An implementation
    walkthrough of a little feature to cycle through buffers with a shortcut.
    This was joint work/fun with <hlink|Luigi Amedeo
    Bianchi|http://www.math.uni-augsburg.de/prof/ana/arbeitsgruppe/bianchi/>.

    <item><em|<tmweb-link|Exporting beamer
    presentations|../miguel/snippet-beamer2pdf> (Mar. 2015). >An
    implementation walkthrough of better PDF export of beamer presentations.
    This was joint work/fun with Ana Cañizares García.
  </itemize-dot>

  <tmdoc-copyright|2014|Miguel de Benito Delgado>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
  </collection>
</initial>