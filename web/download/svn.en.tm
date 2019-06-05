<TeXmacs|1.0.7.12>

<style|tmweb2>

<\body>
  <tmweb-current|Download|Sources><tmweb-title|The SVN archive for
  <TeXmacs>|<tmweb-download-links>>

  Since <TeXmacs>-1.0.7.1, the development of <TeXmacs> is done using the
  <hlink|Subversion|http://subversion.tigris.org/> concurrent versioning
  system.

  <\itemize>
    <item><hlink|Browse|http://svn.savannah.gnu.org/viewvc/trunk/?root=texmacs>
    the <TeXmacs> sources on the web and follow the recent changes.

    <item><hlink|Download|#checkout> the most recent, but unofficial
    development version of <TeXmacs>.

    <item>Easily submit <hlink|patches|../contact/patches.en.tm> to
    <TeXmacs>.

    <item>Directly <hlink|make changes|#commit> in certain parts of
    <TeXmacs>.
  </itemize>

  <vspace*|1fn><paragraph*|Downloading the SVN version of
  <TeXmacs>><label|checkout>

  In order to download the current SVN version of <TeXmacs> in read-only
  mode, you should do

  <\verbatim>
    \ \ \ \ svn co svn://svn.savannah.gnu.org/texmacs/trunk/src
  </verbatim>

  In a similar way, you may check out the <TeXmacs> web site

  <\verbatim>
    \ \ \ \ svn co svn://svn.savannah.gnu.org/texmacs/trunk/doc
  </verbatim>

  and some miscellaneous files:

  <\verbatim>
    \ \ \ \ svn co svn://svn.savannah.gnu.org/texmacs/trunk/misc
  </verbatim>

  <vspace*|1fn><paragraph*|Committing changes by SVN><label|commit>

  In order to commit changes by SVN, you first need a user account on
  <hlink|Savannah|http://savannah.gnu.org> and send a request to join the
  <TeXmacs> developers team. You may then check out and commit changes as
  described on <hlink|the subversion page for
  <TeXmacs>|https://savannah.gnu.org/svn/?group=texmacs>.

  <tmdoc-copyright|1999--2008|Joris van der Hoeven>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|language|english>
  </collection>
</initial>