<TeXmacs|1.99.9>

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

  Further distributions may be added progressively
  <hlink|here|ftp://ftp.texmacs.org/TeXmacs/tmftp/Linux/>.

  <strong|Important>: In some cases you should have to install the guile
  additional package manually. You can dowmload it
  <hlink|here|ftp://ftp.texmacs.org/TeXmacs/tmftp/Linux/>.

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

      <item><hlink|<TeXmacs> package for CentOS-7 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/CentOS_7/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>
    </itemize>

    <item>Install the package using

    <\shell-code>
      yum install <merge|<TeXmacs-version-release|devel>|-*.rpm>
    </shell-code>
  </enumerate>

  <section*|Debian><label|debian>

  In order to install <TeXmacs>, please follow the steps below:

  <\enumerate>
    <item>Download the latest version that corresponds to your version of
    Debian and your processor:

    <\itemize>
      <item><hlink|<TeXmacs> package for Debian-7 with a 32 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_7.0/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

      <item><hlink|<TeXmacs> package for Debian-7 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_7.0/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

      <item><hlink|<TeXmacs> package for Debian-8 with a 32 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_8.0/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

      <item><hlink|<TeXmacs> package for Debian-8 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_8.0/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

      <item><hlink|<TeXmacs> package for Debian-9 with a 32 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_9.0/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

      <item><hlink|<TeXmacs> package for Debian-9 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_9.0/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>
    </itemize>

    <item>Install the package using

    <\shell-code>
      dpkg -i <merge|<TeXmacs-version-release|devel>|-*.deb>
    </shell-code>
  </enumerate>

  <section*|Fedora><label|fedora>

  In order to install <TeXmacs>, please follow the steps below:

  <\enumerate>
    <item>Download the latest version that corresponds to your version of
    Debian and your processor:

    <\itemize>
      <item><hlink|<TeXmacs> package for Fedora-24 with a 32 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Fedora_24/|<merge|<TeXmacs-version-release|devel>|.i686.rpm>>>

      <item><hlink|<TeXmacs> package for Fedora-24 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Fedora_24/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>

      <item><hlink|<TeXmacs> package for Fedora-25 with a 32 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Fedora_25/|<merge|<TeXmacs-version-release|devel>|.i686.rpm>>>

      <item><hlink|<TeXmacs> package for Fedora-25 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Fedora_25/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>

      <item><hlink|<TeXmacs> package for Fedora-26 with a 32 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Fedora_26/|<merge|<TeXmacs-version-release|devel>|.i686.rpm>>>

      <item><hlink|<TeXmacs> package for Fedora-26 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Fedora_26/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>

      <item><hlink|<TeXmacs> package for Fedora-27 with a 32 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Fedora_27/|<merge|<TeXmacs-version-release|devel>|.i686.rpm>>>

      <item><hlink|<TeXmacs> package for Fedora-27 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Fedora_27/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>

      <item><hlink|<TeXmacs> package for Fedora-28 with a 64 bits Intel/AMD
      processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Fedora_28/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>
    </itemize>

    <item>Install the package using

    <\shell-code>
      dnf install <merge|<TeXmacs-version-release|devel>|-*.rpm>
    </shell-code>
  </enumerate>

  <section*|Scientific Linux><label|scientificlinux>

  In order to install <TeXmacs>, please follow the steps below:

  <\enumerate>
    <item>Download the latest version that corresponds to your version of
    Debian and your processor:

    <\itemize>
      <item><hlink|<TeXmacs> package for Scientific Linux-6 with a 32 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/ScientificLinux_6/|<merge|<TeXmacs-version-release|devel>|.i386.rpm>>>

      <item><hlink|<TeXmacs> package for Scientific Linux-6 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/ScientificLinux_6/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>

      <item><hlink|<TeXmacs> package for Scientific Linux-7 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/ScientificLinux_7/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>
    </itemize>

    <item>Install the package using

    <\shell-code>
      yum install <merge|<TeXmacs-version-release|devel>|-*.rpm>
    </shell-code>
  </enumerate>

  <section*|Open Suse><label|suse>

  In order to install <TeXmacs>, please follow the steps below:

  <\enumerate>
    <item>Download the latest version that corresponds to your version of
    Debian and your processor:

    <\itemize>
      <item><hlink|<TeXmacs> package for Open Suse Leap-42.2 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/openSUSE_Leap_42.2/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>

      <item><hlink|<TeXmacs> package for Open Suse Leap-42.3 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/openSUSE_Leap_42.3/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>

      <item><hlink|<TeXmacs> package for Open Suse Tumbleweed with a 32 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/openSUSE_Tumbleweed/|<merge|<TeXmacs-version-release|devel>|.i586.rpm>>>

      <item><hlink|<TeXmacs> package for Open Suse Tumbleweed with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/openSUSE_Tumbleweed/|<merge|<TeXmacs-version-release|devel>|.x86_64.rpm>>>
    </itemize>

    <item>Install the package using

    <\shell-code>
      dpkg -i <merge|<TeXmacs-version-release|devel>|-*.deb>
    </shell-code>
  </enumerate>

  <section*|Ubuntu><label|ubuntu>

  In order to install <TeXmacs>, please follow the steps below:

  <\enumerate>
    <item>Download the latest version that corresponds to your version of
    Ubunu and your processor:

    <\itemize>
      <item><hlink|<TeXmacs> package for xUbuntu_12.04 with a 32 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_12.04/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_12.04 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_12.04/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_14.04 with a 32 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_14.04/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_14.04 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_14.04/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_16.04 with a 32 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_16.04/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_16.04 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_16.04/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_16.10 with a 32 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_16.10/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_16.10 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_16.10/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_17.04 with a 32 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_17.04/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_17.04 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_17.04/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_17.10 with a 32 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_17.10/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_17.10 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_17.10/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_18.04 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_18.04/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

      <item><hlink|<TeXmacs> package for xUbuntu_18.10 with a 64 bits
      Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/xUbuntu_18.10/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>
    </itemize>

    <item>Install the package using

    <\shell-code>
      dpkg -i <merge|<TeXmacs-version-release|devel>|-*.deb>
    </shell-code>
  </enumerate>

  <tmdoc-copyright|1999--2018|Denis Raux|Joris van der Hoeven>

  <tmweb-license>
</body>

<initial|<\collection>
</collection>>