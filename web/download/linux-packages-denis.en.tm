<TeXmacs|1.99.9>

<style|generic>

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

  In order to install <TeXmacs>, you can choose one of the two followinf
  methods :

  <\with|par-mode|left>
    <\enumerate>
      <item>Install with automatique update possibility relaying on
      repository updates

      Retrieve your distribution name (i.e <name|stretch>) using
      <verbatim|lsb_release -cs>

      <with|par-mode|left|Get the TeXmacs public key with your broser a>t
      https://ftp.texmacs.org/TeXmacs/tmftp/repos/apt/apt-texmacs.asc and
      save it into a file (i.e /tmp/apt-texmacs.asc). If your root
      certificats are outdated you can receive some security warnings due to
      the https usage.

      Go to the root user account: <verbatim|sudo bash>

      Import the key in the <name|apt> keyring using <verbatim|apt-key add
      /tmp/apt-texmacs.asc>

      Remove the useless key file: <verbatim|rm /tmp/apt-texmacs.asc>

      Add the texmacs repository in <verbatim|add-apt-repository "deb
      http://ftp.texmacs.org/TeXmacs/tmftp/repos/apt/ stretch universe">

      Update the package list: <verbatim|apt-get update>

      Install TeXmacs: <verbatim|apt-get install texmacs>

      Return to your regular account: <verbatim|exit>

      <item>One shot manual install if you prefer update manually, please
      follow the steps below:

      <\enumerate>
        <item>Download the latest version that corresponds to your version of
        Debian and your processor:

        <\itemize>
          <item><hlink|<TeXmacs> package for Debian-7 with a 32 bits
          Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_7.0/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

          <item><hlink|<TeXmacs> package for Debian-7 with a 64 bits
          Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_7.0/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

          <item><hlink|<TeXmacs> package for Debian-8 with a 32 bits
          Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_8.0/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

          <item><hlink|<TeXmacs> package for Debian-8 with a 64 bits
          Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_8.0/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>

          <item><hlink|<TeXmacs> package for Debian-9 with a 32 bits
          Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_9.0/|<merge|<TeXmacs-version-release|devel>|.i386.deb>>>

          <item><hlink|<TeXmacs> package for Debian-9 with a 64 bits
          Intel/AMD processor|<merge|http://www.texmacs.org/Download/ftp/tmftp/Linux/Debian_9.0/|<merge|<TeXmacs-version-release|devel>|.amd64.deb>>>
        </itemize>

        <item>Install the package using

        <\shell-code>
          dpkg -i <merge|<TeXmacs-version-release|devel>|-*.deb>
        </shell-code>
      </enumerate>
    </enumerate>
  </with>

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
    <\with|par-mode|left>
      <item>Install with automatique update possibility relaying on
      repository updates

      Retrieve your distribution name (i.e <name|yakkety>) using
      <verbatim|lsb_release -cs>

      <with|par-mode|left|Get the TeXmacs public key with your broser a>t
      https://ftp.texmacs.org/TeXmacs/tmftp/repos/apt/apt-texmacs.asc and
      save it into a file (i.e /tmp/apt-texmacs.asc). If your root
      certificats are outdated you can receive some security warnings due to
      the https usage.

      Go to the root user account: <verbatim|sudo bash>

      Import the key in the <name|apt> keyring using <verbatim|apt-key add
      /tmp/apt-texmacs.asc>

      Remove the useless key file: <verbatim|rm /tmp/apt-texmacs.asc>

      Add the texmacs repository in <verbatim|add-apt-repository "deb
      http://ftp.texmacs.org/TeXmacs/tmftp/repos/apt/ yakkety universe">

      Update the package list: <verbatim|apt-get update>

      Install TeXmacs: <verbatim|apt-get install texmacs>

      Return to your regular account: <verbatim|exit>

      <item>One shot manual install if you prefer update manually. Please
      download the latest version that corresponds to your version of Ubuntu
      and your processor:

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
    </with>
  </enumerate>

  <tmdoc-copyright|1999--2018|Denis Raux|Joris van der Hoeven>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|b|?>>
    <associate|auto-4|<tuple|2|?>>
    <associate|auto-5|<tuple|2|?>>
    <associate|auto-6|<tuple|2|?>>
    <associate|centos|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|debian|<tuple|2|?>>
    <associate|fedora|<tuple|b|?>>
    <associate|scientificlinux|<tuple|2|?>>
    <associate|suse|<tuple|2|?>>
    <associate|ubuntu|<tuple|2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|CentOS>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Debian>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Fedora>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Scientific
      Linux> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Open
      Suse> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|Ubuntu>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6><vspace|0.5fn>
    </associate>
  </collection>
</auxiliary>