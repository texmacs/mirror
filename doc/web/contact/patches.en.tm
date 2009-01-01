<TeXmacs|1.0.7>

<style|tmweb>

<\body>
  <tmweb-current|Contact|Patches><tmweb-title|Submitting patches for
  <TeXmacs>|<tmweb-contact-links>>

  You may contribute patches for <TeXmacs> using the <hlink|patch
  manager|http://savannah.gnu.org/patch/?group=texmacs> on
  <hlink|<name|Savannah>|http://savannah.gnu.org/projects/texmacs/>. In order
  to <hlink|submit a patch|http://savannah.gnu.org/patch/?func=addpatch&group=texmacs>,
  we recommend you to use the <hlink|SVN version|../download/svn.en.tm> of
  <TeXmacs>. In that case, after checking out the source code of a particular
  version of <TeXmacs> using

  <verbatim| \ \ \ svn co -r TeXmacs-<em|version> src>

  and making your changes, you may use the command

  <verbatim| \ \ \ svn diff -r TeXmacs-<em|version> src \<gtr\> diffs>

  in order to obtain a patch ready to be submitted in the file
  <verbatim|diffs>. Here <verbatim|<em|version>> stands for the usual version
  number, with ``<verbatim|.>'' replaced by ``<verbatim|_>'' (example:
  <verbatim|TeXmacs-1_0_2_7>). When <hlink|submitting your
  patch|http://savannah.gnu.org/patch/?func=addpatch&group=texmacs>, don't
  forget to carefully select a category and to fill out a summary.

  <tmdoc-copyright|1999--2003|Joris van der Hoeven>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|language|english>
  </collection>
</initial>