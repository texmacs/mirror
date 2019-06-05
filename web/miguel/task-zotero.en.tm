<TeXmacs|1.99.2>

<style|tmweb2>

<\body>
  <tmweb-title|Interfacing <TeXmacs> and <name|Zotero>|<tmweb-list|<tmweb-link|Team|../contribute/team>|<tmweb-link|Miguel's
  home|../contribute/team-miguel>>>

  <doc-date|January 6<rsup|th>, 2014>

  <\note*>
    Jump to section <reference|sec:implementation> to see the current
    progress (updated on January 6th, 2014). Notice that most of this stuff
    is <strong|in my private BitBucket> repository. <hlink|Contact
    me|team-miguel.en.tm> if you want to help or have any ideas.
  </note*>

  Some links: <hlink|<name|Zotero> server
  <abbr|API>|http://www.zotero.org/support/dev/server_api/v2/write_requests>
  and <hlink|several implementations|https://github.com/fcheslack/libZotero>.
  The <name|JSON> parser we use: <hlink|<name|JsonCpp>|http://jsoncpp.sourceforge.net/>,
  and the <name|XML> parser: <hlink|<name|TinyXML>2|https://github.com/leethomason/tinyxml2>.

  <section|Desired features>

  At the very minimum we'd like to:

  <\enumerate>
    <item>List all collections in a <name|Zotero> library and select one as
    the bibliography for a <TeXmacs> document. Clicking on
    <menu|Document|Update|Bibliography> should retrieve the latest version
    and format it using the user's preferences.

    <item>View and edit notes in <TeXmacs> and <abbr|HTML> formats.
  </enumerate>

  Other interesting (?) features:

  <\enumerate>
    <item>Create <name|Zotero> reports as <TeXmacs> documents (to correctly
    see math inside titles, abstracts, etc.)

    <item>Manage a ``Drafts'' category with the user's current work. \ Maybe
    allow the selection of individual bibliographic items and create
    collections/tags (corresponding to <TeXmacs> documents) automatically for
    them.

    <item><strike-through|Organize items into collections and organize
    collections (useful while writing a paper).> (Don't: this is already done
    in <name|Zotero>).
  </enumerate>

  There are several <with|font-series|bold|levels of integration> of
  <TeXmacs> with <name|Zotero> and its standalone client.

  <\enumerate>
    <item><label|goal:read-only><em|Read-only access> to the <em|local cache>
    of the standalone client. Select some bibliographic entries as the
    bibliography for some document, then <menu|Document|Update|Bibliography>
    would retrieve and format them (either first exporting as <name|BibTex>
    or using a <abbr|CSL> interpreter or...).

    <item><label|goal:read-write><em|Read-write access> to the <em|local
    cache> of the standalone client. Allows for the previous feature, as well
    as edition of attached notes, etc.

    <item><label|goal:rw-server><em|Read-write access> to the
    <em|<name|Zotero> database on the server>. Implements all of the above
    and works without a local client running, directly updates the online
    version, may be integrated with the groups feature, etc. Obviously won't
    work offline unless we keep a local database.
  </enumerate>

  As we will next see, it only makes sense to implement item
  <reference|goal:rw-server>. You may now skip to Ÿ<reference|sec:rw-access
  server>.

  <\note>
    I should be careful not to let this get out of hand: it's tempting to
    implement a full-fledged <name|Zotero> client but that's not what I need.
  </note>

  <subsection|Read-only access (local)>

  Item <reference|goal:read-only> would be easy using the recent
  <name|SQLite> plugin to read the local cache of the standalone
  <name|Zotero> client. There are several implementations available (in
  <name|Python>, mostly) which encapsulate the required <name|SQL> queries,
  e.g. the <hlink|one bundled in <name|Qnotero>|https://github.com/smathot/qnotero/tree/master/libzotero>.
  However it doesn't make much sense, because this cannot be used as a first
  step before item <reference|goal:read-write>.

  <subsection|Read-write access (local)>

  Item <reference|goal:read-write> seems a good starting point, but it cannot
  be developed starting with the code for item <reference|goal:read-only>.
  Write access to the local database should be left to the standalone client
  or <name|Firefox> plugin in order to avoid database corruption or problems
  due to simultaneous access to the database or internal changes in the
  database schema. We should use instead some public <abbr|API>. Currently
  (Dec. 2013) the <name|Zotero> standalone client supports some <abbr|HTTP>
  requests to a local mini-server started at port 23119.<\footnote>
    Notice that partial and direct write access with <name|SQLite> (e.g. only
    to notes) is not a good idea: it would skip internal integrity checks,
    might lead to data loss, etc. We may have a standalone client or a
    <name|Firefox> plugin running.
  </footnote> The payloads are formatted using <name|JSON>.

  However, the feature subset made available through this system is very
  small. Specifically, only those methods required for the so-called
  <em|connectors> (for <name|Chrome> and <name|Safari>) are available. For
  some examples see <shell|zotero-master/chrome/content/zotero/xpcom/server_connector.js>
  and <shell|zotero-master/chrome/content/zotero/xpcom/connector/*>.

  Several discussions at <hlink|zotero-dev|https://groups.google.com/forum/#!forum/zotero-dev>
  (e.g. <hlink|this one|https://groups.google.com/forum/#!searchin/zotero-dev/standalone$20api/zotero-dev/clN0V9J77i4/2DrWwJph1ZoJ>)
  mention the need for an implementation of an analogue of
  <hlink|<name|Zotero>'s server <abbr|API>|http://www.zotero.org/support/dev/server_api/v2/start>
  for the standalone client. One possible approach is to try to implement
  (some of) this for them first, then use it from <TeXmacs>. However, the
  clients are written <name|Javascript>, making this difficult and tiresome.

  <\note>
    A bonus of this approach is that once communications with the local
    client are implemented, and given that it provides the same <abbr|API> as
    the <name|Zotero> server itself, it'd be a matter of changing a
    <abbr|URL> to have server access.
  </note>

  <subsection|Read-write access (server)><label|sec:rw-access server>

  Because of the limitations of item <reference|goal:read-only> and the work
  needed extending the exported <abbr|API> of the standalone client for item
  <reference|goal:read-write>, item <reference|goal:rw-server> might be the
  right starting point. <hlink|<name|Zotero>'s server
  <abbr|API>|http://www.zotero.org/support/dev/server_api/v2/start> provides
  a full feature set including nifty things like exporting to many formats
  (including <name|BibTex>) and <abbr|CSL> formatting of bibliographic
  entries (see <hlink|this forum post|https://groups.google.com/forum/#!topic/zotero-dev/1rnPjSjj7pQ>).

  There are several full implementations of the <name|Zotero> server
  <abbr|API>, e.g. <hlink|libZotero|https://github.com/fcheslack/libZotero/tree/master/lib/py/libZotero>.
  All the <abbr|API> details are <hlink|here|http://www.zotero.org/support/dev/server_api/v2/start>.

  At the very least, we need the following to start with:

  <\enumerate-numeric>
    <item>A way to make <abbr|HTTPS> requests to the server. Authentication
    is made using <name|Oauth> or a key generated by the user in her online
    <name|Zotero> preferences (let's stick to this for now) which is then
    attached as a parameter to the request.

    The easiest solution is a wrapper class around system calls to
    <shell|curl>, as in:<\footnote>
      Or to use <name|libCURL> with <name|OpenSSL> support, but departs from
      current practices within <TeXmacs>.
    </footnote>

    <\shell-code>
      curl -H 'Zotero-API-Version: 2' \\

      \ \ \ \ \ 'https://api.zotero.org/users/\<less\>user-id\<gtr\>/items?key=\<less\>app-key\<gtr\>'
    </shell-code>

    This wrapper must also implement <hlink|caching of
    entries|http://www.zotero.org/support/dev/server_api/v2/read_requests#caching>,
    using the header\ 

    <verbatim|If-Modified-Since-Version: \<less\>libraryVersion\<gtr\>>

    as well as a long list of other things.

    <item>An <abbr|XML> parser to compose requests to and parse replies from
    the server. To this end I've included <name|TinyXML2> in
    <shell|src/Plugins/TinyXML2>. It consists of one header and one source
    <c++> file.

    <item>A <name|Json> parser to read the <em|payload> of some replies from
    and compose write requests to the server. To this purpose I've included
    the ``amalgamated'' version of <name|JsonCpp> in
    <shell|src/Plugins/Json>. Again, it consists of just two files.

    <item><name|SQLite> for the local cache. I must decide whether the
    current interface with <cpp|tree sql_exec (url db_name, string cmd)> is
    enough. It uses <cpp|sqlite3_get_table()> to convert all types to strings
    then returns a tree of lists, whose first item contains the column names,
    as in:

    <\scm-code>
      (tuple (tuple "Col1" "Col2" "Col3") (tuple "value 1" "2" "value 3"))
    </scm-code>

    <em|As of Jan 2014, caching is not implemented.>
  </enumerate-numeric>

  <subsection|User interface>

  We have the choice between:

  <\itemize-dot>
    <item>A document-based interface with all its advantages but the problems
    posed by delayed tree and database accesses and updates together with the
    ``unusual'' feeling about it.

    <item>A widget-based interface (with flaws like no mathematical output in
    list widgets, but ...). To this end I recently (Dec. 2013) implemented a
    <scm|tree-view> widget in <scheme>.

    <item>A balance of both: a tree widget for the browsing and a side pane
    with a <scm|texmacs-input> widget for the data.

    <item>...
  </itemize-dot>

  <section|Implementation details (Jan. 06, 2014)><label|sec:implementation>

  <with|ornament-color|pastel red|<\ornamented>
    <\note>
      The following implementation has been dropped in favor of a thinner
      <c++> layer (which simply issues one-shot asynchronous <name|Http>
      requests) with <with|font-series|bold|all> the logic written in
      <scheme> code.
    </note>
  </ornamented>>

  For the <scheme> examples in this section we assume the following:

  <\scm-code>
    ; Basic configuration variables

    (define server "https://api.zotero.org")

    (define userid "insert your user id here")

    (define apikey "insert your api key here")
  </scm-code>

  A delicate issue is to achieve the right balance between <c++> and <scheme>
  code. Requests will be issued from <name|scheme> code. Callbacks will be
  <scheme> code to update the interface, etc.

  Conventions:

  <\itemize-dot>
    <item>All <c++> code is in the <cpp|namespace tmz>.

    <item>All exported <scheme> routines have the prefix <scm|tmz->
  </itemize-dot>

  <subsection|Creating a connection>

  The first step is creating an object of type <cpp|connection>. This starts
  (not yet) the <name|OAuth> exchange and obtains an authentication token or
  (for now) accepts a <em|user key>, which the user may create through
  <name|Zotero>'s web interface.

  <paragraph|<scheme> example>

  <\scm-code>
    ; Connect (no actual online connection)

    (define cn (tmz-connect server userid apikey))
  </scm-code>

  <subsection|Making requests (Deprecated)>

  Requests to the server are implemented as a two-stage process with objects
  of type <cpp|request> and <cpp|command>

  <\enumerate>
    <item>Every <cpp|request> has an associated <cpp|connection> (for the
    authentication token) and an associated <cpp|command> to be executed upon
    completion. To ensure order of <em|completion> of requests, these are
    queued (and started if need be) with <cpp|connection::push (request
    req)>. One may use <cpp|connection::push_after (request what, request
    where)> to place a request at a specific point in the queue.

    <item>One request is started asynchronously as an external process
    (<shell|curl>) registered with the <cpp|tm_link> infrastructure as a
    <cpp|pipe_link>. The latter requires a <cpp|command> which will be called
    periodically (several times per second) by
    <cpp|tm_server_rep::interpose_handler()>. The command must read back from
    the pipe and call <cpp|tm_link_rep::stop()> when it's done to close the
    link (i.e. pipe).

    This setup is done at <cpp|request_rep::start()> which sets the handler
    for available data in the pipe to <cpp|request_rep::this>, meaning that
    <cpp|request_rep::apply()> will get called.

    <item>Calls to <cpp|request_rep::apply()> return inmediately until the
    link is dead (all data has been transmitted), then <cpp|stop()> it and
    call the virtual <cpp|request_rep::parse()> to parse the results. When
    this is done (possibly with errors) the request calls
    <cpp|connection::complete(this)> to detach itself from the queue. The
    <cpp|connection> decides then whether the command is to be called.
  </enumerate>

  After a <cpp|connection> is made, a <cpp|request> of type
  <cpp|privileges_request> must be instantiated and pushed to the queue. It
  reads back from the server the access rights associated with the given key
  and user id, then calls its <cpp|command>. Completion commands will be
  called with a <scm|tree> object containing the results.

  <paragraph|<scheme> example>

  First we define the callbacks, then connect and proceed to some requests.

  <\scm-code>
    ; Our storage:

    (define _privileges #f)

    (define _item #f)

    (define _group #f)

    (define _user-groups #f)

    (define _collection-list #f)

    (define _item-list #f)

    \;

    ; Commands to be called when the requests are done:

    \;

    (define (receive-privileges t) (set! _privileges t))

    (define (receive-item t) (set! _item t))

    (define (receive-group t) (set! _group t))

    (define (receive-user-groups t) (set! _user-groups t))

    (define (receive-collection-list t) (set! _collection-list t))

    (define (receive-item-list t) (set! _item-list t))

    \;

    (tmz-request-privileges cn receive-privileges)

    (tmz-request-item cn receive-item "some item identifier")

    (tmz-request-group cn receive-group "239896")

    (tmz-request-user-groups cn receive-user-groups userid "atom")

    (tmz-request-collection-list cn receive-collection-list\ 

    \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ \ "collection"
    "collection id")

    (tmz-request-item-list cn receive-item-list "collection-top" "collection
    id")
  </scm-code>

  <subsection|Error handling>

  There is little done yet:

  <\itemize-dot>
    <item>Errors parsing <name|Xml> or <name|Json> throw exceptions.

    <item>Network or server errors are handled but fail silently instead of
    returning appropriate messages to the <scheme> caller.
  </itemize-dot>

  <tmdoc-copyright|2014|Miguel de Benito Delgado>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|framed-hsep|2spc>
    <associate|global-title|Interfacing TeXmacs and Zotero>
    <associate|page-medium|paper>
    <associate|page-screen-margin|true>
  </collection>
</initial>