<TeXmacs|1.99.7>

<style|<tuple|tmweb|english|old-spacing>>

<\body>
  <tmweb-current|Download|Linux><tmweb-title|<TeXmacs> inside
  GNU/<name|Linux> distributions|<tmweb-download-links>>

  The following GNU/<name|Linux> distributions provide packages or third-part
  packages for <TeXmacs>:

  <\itemize>
    <item><hlink|Gentoo|#gentoo>.

    <item><hlink|Knoppix|knoppix.en.tm>.

    <item><hlink|Open Suse|#suse>.

    <item><hlink|Ubuntu|#ubuntu>.
  </itemize>

  Please report any other distributions with sufficiently up-to-date
  <TeXmacs> packages to us. The <hlink|up-to-date
  list|http://www.inp.nsk.su/~grozin/TeXmacs/> of distributions with
  <TeXmacs> is maintained by <hlink|<name|Andrey
  Grozin>|http://www.inp.nsk.su/~grozin/>.

  <section*|Gentoo><label|gentoo>

  The portage tree of <hlink|Gentoo|http://www.gentoo.org/> usually contains
  an outdated version of <TeXmacs>. An up-to-date version can be found in the
  <hlink|Gentoo science overlay|https://wiki.gentoo.org/wiki/Project:Science/Overlay>.

  First time installation:

  <\enumerate>
    <item><verbatim|emerge layman>

    <item><verbatim|layman -a science>

    <item>Add the line: <verbatim|source /usr/portage/local/layman/make.conf>
    to your <verbatim|/etc/make.conf>

    <item><verbatim|emerge layman>

    <item>Add the line: <verbatim|app-office/texmacs ~x86> to your
    <verbatim|/etc/portage/packages.keywords> (of course, assuming your
    computer is x86)

    <item><verbatim|emerge texmacs>
  </enumerate>

  Updating <TeXmacs>

  <\enumerate>
    <item><verbatim|layman -s science>

    <item><verbatim|emerge texmacs>
  </enumerate>

  <section*|Open Suse><label|suse>

  Recent versions of <hlink|OpenSUSE|http://www.opensuse.org/> contain rather
  up-to-date <TeXmacs>. Just use <verbatim|yast> to install it.

  <section*|Ubuntu><label|ubuntu>

  <hlink|Ubuntu|http://www.ubuntu.com/> is based on <hlink|Debian|#debian>
  "<verbatim|unstable>", and therefore contains <TeXmacs>. You can (probably)
  install an up-to-date TeXmacs from Debian "<verbatim|experimental>".

  <tmdoc-copyright|1999--2007|Andrey Grozin|Joris van der Hoeven>

  <tmweb-license>
</body>

<initial|<\collection>
</collection>>