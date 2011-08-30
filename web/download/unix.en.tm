<TeXmacs|1.0.7.12>

<style|tmweb>

<\body>
  <tmweb-current|Download|Linux><tmweb-title|Installing <TeXmacs> on Linux
  and Unix systems|<tmweb-download-links>>

  <section|Download the package>

  Before installing the binary version of <TeXmacs> below, you might want to
  check whether your particular <hlink|<name|Linux> distribution|linux.en.tm>
  supports <TeXmacs>. If not, then download the <hlink|most
  recent|<merge|http://www.texmacs.org/Download/ftp/targz/|<merge|<TeXmacs-version-release|tgz>|-static-gnu-linux.tar.gz>>>
  or <hlink|last stable|<merge|http://www.texmacs.org/Download/ftp/targz/|<merge|<TeXmacs-version-release|stgz>|-static-gnu-linux.tar.gz>>>
  static binary distribution of GNU <TeXmacs> for PC's under
  GNU/<name|Linux>. If you have another operating system, then you should
  <hlink|download|http://www.texmacs.org/Download/ftp/targz> the most recent
  version of <TeXmacs> for your system.

  <section|Unpack the package>

  In a shell session, <verbatim|cd> into the directory where you wish to
  install <TeXmacs> and type

  <\shell-code>
    gunzip -c TeXmacs-<with|color|brown|[version]>-<with|color|brown|[your
    system]>.tar.gz \| tar xvf -
  </shell-code>

  All files will be unpacked into the directory
  <with|font-family|tt|TeXmacs-<with|color|brown|[version]>>. Let
  <with|font-family|tt|<with|color|brown|[installation directory]>> be the
  full path of this directory.

  <section|Set the environment variables>

  Depending on your shell, either type

  <\shell-code>
    export TEXMACS_PATH=<with|color|brown|[installation directory]>

    export PATH=$TEXMACS_PATH/bin:$PATH
  </shell-code>

  or

  <\shell-code>
    setenv TEXMACS_PATH <with|color|brown|[installation directory]>

    setenv PATH $TEXMACS_PATH/bin:$PATH
  </shell-code>

  where <with|font-family|tt|<with|color|brown|[installation directory]>> is
  as in step 2. We recommend to put these lines in your personal startup
  script, such as <with|font-family|tt|.bash_profile>.

  <section|Happy <TeXmacs>-ing!>

  You should now be able to run the program:

  <\code>
    \ \ \ \ texmacs &
  </code>

  If you like the program, then please consider
  <hlink|donating|../contribute/donations.en.tm> money or services to us. Of
  course, you may also <hlink|contribute|../contribute/contribute.en.tm>
  yourself. In case of problems, please <hlink|subscribe|../home/ml.en.tm> to
  the <verbatim|texmacs-dev> or <verbatim|texmacs-users> mailing lists and
  ask your questions there. You may also directly
  <hlink|contact|../contact/contact.en.tm> us, but you might need to be more
  patient.

  <tmdoc-copyright|1999--2011|Joris van der Hoeven>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|language|english>
  </collection>
</initial>