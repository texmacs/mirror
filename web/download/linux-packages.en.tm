<TeXmacs|1.99.7>

<style|<tuple|tmweb|english|old-spacing>>

<\body>
  <tmweb-current|Download|Linux><tmweb-title|Binary GNU/<name|Linux> packages
  for <TeXmacs>|<tmweb-download-links>>

  We provide our own binary <TeXmacs> packages for the following
  GNU/<name|Linux> distributions:

  <\itemize>
    <item><hlink|CentOS|#centos>.

    <item><hlink|Debian|#debian>.

    <item><hlink|Fedora|#fedora>.

    <item><hlink|Scientific Linux|#scientificlinux>.

    <item><hlink|Open Suse|#suse>.

    <item><hlink|Ubuntu|#ubuntu>.
  </itemize>

  <section*|CentOS><label|centos>

  In order to install <TeXmacs>, please follow the steps below:

  <\enumerate>
    <item>Download the latest version that corresponds to your version of
    CentOS and your processor:

    <\itemize>
      <item><hlink|<TeXmacs> package for CentOS-6 with a 32 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/CentOS_6/|<merge|<TeXmacs-version-release|devel>|.i686.rpm>>>

      <item><hlink|<TeXmacs> package for CentOS-6 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/CentOS_6/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>
    </itemize>

    <item>Install the package using

    <\shell-code>
      yum??? <merge|<TeXmacs-version-release|devel>|-*.rpm>
    </shell-code>
  </enumerate>

  <section*|Debian><label|debian>

  <section*|Fedora><label|fedora>

  <section*|Scientific Linux><label|scientificlinux>

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