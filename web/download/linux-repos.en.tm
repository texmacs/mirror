<TeXmacs|1.99.11>

<style|tmweb2>

<\body>
  <tmweb-current|Download|Linux><tmweb-title|GNU/<name|Linux> repositories
  for <TeXmacs>|<tmweb-download-links>>

  On certain <name|Linux> distributions, it is possible to add a <TeXmacs>
  repository to your package manager. This makes it possible to manage
  <TeXmacs> in the same way as any other packages on your system. In
  particular, you can automatically check for updates and install new
  versions as soon as they become available. We implemented <TeXmacs>
  repositories for the following distributions:

  <\itemize>
    <item><hlink|Debian|#debian>.

    <item><hlink|Ubuntu|#ubuntu>.
  </itemize>

  <section*|Debian><label|debian>

  Retrieve your distribution name (<abbr|e.g.> <name|stretch>) using

  <\shell-code>
    lsb_release -cs
  </shell-code>

  Download the <TeXmacs> public key (into the auxiliary
  <verbatim|apt-texmacs.asc>):

  <\shell-code>
    curl --insecure https://ftp.texmacs.org/TeXmacs/tmftp/repos/apt/apt-texmacs.asc
  </shell-code>

  Obtain root privileges:

  <\shell-code>
    sudo bash
  </shell-code>

  Import the key in the <name|apt> keyring using

  <\shell-code>
    apt-key add apt-texmacs.asc
  </shell-code>

  Remove the temporary key file:

  <\shell-code>
    rm apt-texmacs.asc
  </shell-code>

  Add the texmacs repository in

  <\shell-code>
    add-apt-repository "deb http://ftp.texmacs.org/TeXmacs/tmftp/repos/apt/
    stretch universe"
  </shell-code>

  Update the package list:

  <\shell-code>
    apt-get update
  </shell-code>

  Install TeXmacs:

  <\shell-code>
    apt-get install texmacs
  </shell-code>

  Return to your regular account:

  <\shell-code>
    exit
  </shell-code>

  <section*|Ubuntu><label|ubuntu>

  Retrieve your distribution name (<abbr|e.g.> <name|yakkety>) using

  <\shell-code>
    lsb_release -cs
  </shell-code>

  Download the <TeXmacs> public key (into the auxiliary
  <verbatim|apt-texmacs.asc>):

  <\shell-code>
    curl --insecure https://ftp.texmacs.org/TeXmacs/tmftp/repos/apt/apt-texmacs.asc
  </shell-code>

  Obtain root privileges:

  <\shell-code>
    sudo bash
  </shell-code>

  Import the key in the <name|apt> keyring using

  <\shell-code>
    apt-key add apt-texmacs.asc
  </shell-code>

  Remove the temporary key file:

  <\shell-code>
    rm apt-texmacs.asc
  </shell-code>

  Add the texmacs repository in

  <\shell-code>
    add-apt-repository "deb http://ftp.texmacs.org/TeXmacs/tmftp/repos/apt/
    yakkety universe"
  </shell-code>

  Update the package list:

  <\shell-code>
    apt-get update
  </shell-code>

  Install TeXmacs:

  <\shell-code>
    apt-get install texmacs
  </shell-code>

  Return to your regular account:

  <\shell-code>
    exit
  </shell-code>

  <tmdoc-copyright|1999--2018|Denis Raux|Joris van der Hoeven>

  <tmweb-license>
</body>

<initial|<\collection>
</collection>>