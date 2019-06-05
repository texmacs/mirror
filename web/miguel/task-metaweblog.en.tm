<TeXmacs|1.99.1>

<style|tmweb2>

<\body>
  <tmweb-title|<name|MetaWeblog> for <TeXmacs>:
  draft|<tmweb-list|<tmweb-link|Team|../contribute/team>|<tmweb-link|Miguel's
  home|../contribute/team-miguel>>>

  <doc-date|June 12<rsup|th>, 2013>

  <center|<with|font-series|bold|Some rough ideas for a simple blog client.>>

  Quick links:

  <\itemize-dot>
    <item><hlink|Wordpress' implementation of
    <name|MetaWeblog>|http://codex.wordpress.org/XML-RPC_MetaWeblog_API>.

    <item><hlink|Wordpress' comments API via
    <name|XML-RPC>|http://codex.wordpress.org/XML-RPC_WordPress_API/Comments>.

    <item><c++> lightweight implementation of <name|XML-RPC>:
    <hlink|<name|Xmlrpc_c>|http://xmlrpc-c.sourceforge.net/>.
  </itemize-dot>

  <section|Basics>

  <subsection|Configuration and connection>

  We need some dialog to configure server, user and password allowing to add
  as many configurations as needed. The work in <menu|Tools|Server> and
  <menu|Tools|Client> seems not to be of great use. It should look something
  like this:

  <big-figure||The configuration dialog.>

  Connection with any given config may be performed either with the previous
  dialog or via menu items (we must still heed the preference ``Complex
  actions through menus'').

  Some sort of ping should be executed to test the config after accepting it.

  <subsection|Retrieval>

  We should retrieve the <math|n> latest posts (configurable option) and
  store them in a temporary local cache. We will need to be able to
  selectively re-read or update items in this cache.

  <\note>
    Persistent caching of posts may be pointless since they seem to be always
    retrieved in full with <name|MetaWeblog>.
    <with|font-series|bold|However>, the user may want to keep his local
    modifications for a while (quitting <TeXmacs> in the meantime) before
    committing them to the blog, therefore we need to provide facilities to
    keep the local cache and update/delete it when necessary.
  </note>

  We should be able to retrieve comments when an extension of
  <name|MetaWeblog>'s <abbr|API> is available, e.g. <hlink|the comments
  <abbr|API> of WordPress|http://codex.wordpress.org/XML-RPC_WordPress_API/Comments>.

  <\convention>
    We will assume that the comments <abbr|API> is available.
  </convention>

  <subsection|Display and edition>

  We use a <name|tmfs> handler which is given a handle to the local cache
  with the posts previously retrieved and open a buffer using it. The
  contents could look something like this (maybe more compact, e.g. placing
  the edition links next to post titles, etc.):

  <with|ornament-shape|rounded|<\ornamented>
    <with|font-series|bold|<center|YetAnotherUselessAndNoisyBlog>>

    <\unfolded>
      <with|font-series|bold|Title of post #1> (4 comments)
    <|unfolded>
      Blah blah contents and stuff.

      <right-aligned|<hlink|Click to update post|>, <hlink|Click to undo
      edition|>.>

      <\folded-std>
        <with|font-series|bold|Author name>, <with|font-shape|italic|(date,
        time)>
      <|folded-std>
        I think that blah blah blah

        <right-aligned|<hlink|Click to delete comment|>.>

        <\folded-std>
          <with|font-series|bold|Reply...>
        <|folded-std>
          The user types the reply here.

          <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click to
          cancel|>.>
        </folded-std>

        <\folded-std>
          <with|font-series|bold|Author name>, <with|font-shape|italic|(date,
          time)>
        <|folded-std>
          I think that blah blah blah

          <right-aligned|<hlink|Click to delete comment|>.>

          <\folded-std>
            <with|font-series|bold|Reply...>
          <|folded-std>
            The user types the reply here.

            <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click to
            cancel|>.>
          </folded-std>

          <\folded-std>
            <with|font-series|bold|Author name>,
            <with|font-shape|italic|(date, time)>
          <|folded-std>
            I think that blah blah blah

            <right-aligned|<hlink|Click to delete comment|>.>

            <\folded-std>
              <with|font-series|bold|Reply...>
            <|folded-std>
              The user types the reply here.

              <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click
              to cancel|>.>
            </folded-std>
          </folded-std>
        </folded-std>

        <\folded-std>
          <with|font-series|bold|Author name>, <with|font-shape|italic|(date,
          time)>
        <|folded-std>
          I think that blah blah blah

          <right-aligned|<hlink|Click to delete comment|>.>

          <\folded-std>
            <with|font-series|bold|Reply...>
          <|folded-std>
            The user types the reply here.

            <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click to
            cancel|>.>
          </folded-std>
        </folded-std>
      </folded-std>
    </unfolded>

    <\unfolded>
      <with|font-series|bold|Title of post #2> (2 comments)
    <|unfolded>
      Blah blah contents and stuff.

      <right-aligned|<hlink|Click to update post|>, <hlink|Click to undo
      edition|>.>

      <\folded-std>
        <with|font-series|bold|Author name>, <with|font-shape|italic|(date,
        time)>
      <|folded-std>
        I think that blah blah blah

        <right-aligned|<hlink|Click to delete comment|>.>

        <\folded-std>
          <with|font-series|bold|Reply...>
        <|folded-std>
          The user types the reply here.

          <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click to
          cancel|>.>
        </folded-std>

        <\folded-std>
          <with|font-series|bold|Author name>, <with|font-shape|italic|(date,
          time)>
        <|folded-std>
          I think that blah blah blah

          <right-aligned|<hlink|Click to delete comment|>.>

          <\folded-std>
            <with|font-series|bold|Reply...>
          <|folded-std>
            The user types the reply here.

            <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click to
            cancel|>.>
          </folded-std>
        </folded-std>
      </folded-std>
    </unfolded>

    <\folded>
      <with|font-series|bold|Title of post #3> (2 comments)
    <|folded>
      Blah blah contents and stuff.

      <right-aligned|<hlink|Click to update post|>, <hlink|Click to undo
      edition|>.>

      <\folded-std>
        <with|font-series|bold|Author name>, <with|font-shape|italic|(date,
        time)>
      <|folded-std>
        I think that blah blah blah

        <right-aligned|<hlink|Click to delete comment|>.>

        <\folded-std>
          <with|font-series|bold|Reply...>
        <|folded-std>
          The user types the reply here.

          <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click to
          cancel|>.>
        </folded-std>

        <\folded-std>
          <with|font-series|bold|Author name>, <with|font-shape|italic|(date,
          time)>
        <|folded-std>
          I think that blah blah blah

          <right-aligned|<hlink|Click to delete comment|>.>

          <\folded-std>
            <with|font-series|bold|Reply...>
          <|folded-std>
            The user types the reply here.

            <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click to
            cancel|>.>
          </folded-std>
        </folded-std>
      </folded-std>
    </folded>

    <\folded>
      <with|font-series|bold|Title of post #4> (2 comments)
    <|folded>
      Blah blah contents and stuff.

      <right-aligned|<hlink|Click to update post|>, <hlink|Click to undo
      edition|>.>

      <\folded-std>
        <with|font-series|bold|Author name>, <with|font-shape|italic|(date,
        time)>
      <|folded-std>
        I think that blah blah blah

        <right-aligned|<hlink|Click to delete comment|>.>

        <\folded-std>
          <with|font-series|bold|Reply...>
        <|folded-std>
          The user types the reply here.

          <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click to
          cancel|>.>
        </folded-std>

        <\folded-std>
          <with|font-series|bold|Author name>, <with|font-shape|italic|(date,
          time)>
        <|folded-std>
          I think that blah blah blah

          <right-aligned|<hlink|Click to delete comment|>.>

          <\folded-std>
            <with|font-series|bold|Reply...>
          <|folded-std>
            The user types the reply here.

            <right-aligned|<hlink|Click to update reply|>, \ <hlink|Click to
            cancel|>.>
          </folded-std>
        </folded-std>
      </folded-std>
    </folded>

    <\right-aligned>
      <with|font-shape|italic|Posts 1..4 of 76, retrieved on Thu. 28 Nov.
      2013 at 23:56 GMT+1>

      <hlink|Show next 4|>
    </right-aligned>
  </ornamented>>

  In a first stage we may implement a two-stage posting process. After
  editing the contents of a post, the user may:

  <\enumerate>
    <item>Undo all his actions: we replace the contents with the cached copy.
    <with|font-series|bold|Does this make any sense?> After all the user may
    just undo the editions in the document.

    <item>Choose to update the post: we store the changes locally and the
    user must later ``Commit'' them to upload all modifications.
  </enumerate>

  <\note>
    Requiring the user to click ``Update'' is cumbersome and error-prone: one
    might edit a post for two hours just to see <TeXmacs> crash... Best would
    be to <with|font-series|bold|implement auto-save> or use the facilities
    already in place.
  </note>

  <subsection|Committing>

  <with|font-series|bold|This basically sucks.>

  Committing is again a two-stage process. Clicking the appropriate menu item
  / link on the page pops up a dialog with a simplified list of changes for
  review, together with buttons ``Ok'', ``Cancel'', ``Revert all'', ``Keep
  local copy for later''. The dialog should look something like this:

  <big-figure||The commit dialog.>

  <section|Implementation>

  <\note>
    We already have asynchronous communication with pipes.
  </note>

  <subsection|Communicating with the server>

  <name|MetaWeblog> is implemented on top of <name|XML-RPC> which is no more
  than <abbr|XML> documents encoding requests and replies being sent over
  <abbr|HTTP>. We have therefore the choice: use a well-established and
  tested backend like <hlink|<name|Xmlrpc_c>|http://xmlrpc-c.sourceforge.net/>
  (which depends on other libraries like <name|Curl>) or try to roll out our
  own (at least using something like the one-file <abbr|XML> parser
  <name|TinyXML>). <with|font-series|bold|Update: >the requirements for the
  <name|Linux> autoupdater might have non-empty intersection with this
  (<abbr|XML> parsing, <abbr|HTTP> requests...)

  In any case we will want to encapsulate this functionality in two layers:

  <\enumerate>
    <item><with|font-shape|italic|One layer for the <name|XML-RPC> calls
    themselves.> If, for instance, we use <name|Xmlrpc_c>, then this will be
    little more than a wrapper class providing memory management and
    translation of some types (e.g. <TeXmacs> strings to <cpp|std::string>,
    and so on). However this effectively means writing the whole interface
    for the protocol, which seems wasteful.

    <with|font-shape|italic|<item>One layer for the <name|MetaWeblog> and
    comments <abbr|API> calls.> This is unavoidable and should translate
    server replies into e.g. <scheme> lists.
  </enumerate>

  <subsection|Caching>

  The cache could in principle be a <TeXmacs> document. This would instantly
  provide auto-saving (following the user preferences) and crash recovery,
  and would greatly simplify the posting interface (no need for an ``update''
  button and builtin undo management). However it could get slow if there are
  many posts and comments to store and parse (needs testing). We would need
  dedicated tags to store the metadata and status flags for each item.

  <name|SQLite> is another choice. Autosaving could (could it?) made be more
  atomic and crash recovery would work out of the box: open <TeXmacs>, open
  the blog edition <name|tmfs> handler and it will use the latest data in the
  database.

  <subsection|Commit and rollback>

  Keeping the local copy of the changes might not be enough to easily perform
  these tasks. We might also need to keep a list of the actions to be
  performed on the server: ``delete this comment'', ``update this post'',
  etc.

  A simple approach might be to add a status flag to each entry in the local
  cache with three values: <with|font-shape|italic|pristine>,
  <with|font-shape|italic|modifed> and <with|font-shape|italic|deleted>. This
  is enough to:

  <\itemize-dot>
    <item>Decide which items must be acted upon and do so.

    <item>Rollback to the contents of the server: simply re-download the
    content.

    <\remark>
      Re-downloading of content via a link in the document may be unpractical
      or simply ugly, since we block the whole interface. If we don't allow
      this, in order to provide a link for posts ``Undo all changes'' which
      works after we've modified the local copy (because the user clicked on
      ``Update post'') we would have to have two local copies...
    </remark>
  </itemize-dot>

  <tmdoc-copyright|2013|Miguel de Benito Delgado>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|11>
    <associate|page-medium|papyrus>
  </collection>
</initial>