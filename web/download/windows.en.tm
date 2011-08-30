<TeXmacs|1.0.7.12>

<style|tmweb>

<\body>
  <tmweb-current|Download|Windows><tmweb-title|Installing <TeXmacs> under
  <name|Windows>|<tmweb-download-links>>

  <section|Standard installation>

  In order to install the <name|Qt>-based version of <TeXmacs> on Windows,
  you should:

  <\enumerate>
    <item>Download <hlink|<scm|texmacs-installer.exe>|http://www.texmacs.org/Download/ftp/windows/qt/texmacs-installer.exe>.

    <item>Execute the downloaded <verbatim|texmacs-installer.exe> and follow
    the installation instructions.

    <item>Click on the <TeXmacs> icon on your desktop in order to launch
    <TeXmacs>.
  </enumerate>

  If you like the program, then please consider
  <hlink|donating|../contribute/donations.en.tm> money or services to us. Of
  course, you may also <hlink|contribute|../contribute/contribute.en.tm>
  yourself. In case of problems, please <hlink|subscribe|../home/ml.en.tm> to
  the <verbatim|texmacs-dev> or <verbatim|texmacs-users> mailing lists and
  ask your questions there. You may also directly
  <hlink|contact|../contact/contact.en.tm> us, but you might need to be more
  patient.

  <section|Notes>

  <\itemize>
    <item>If you are using <hlink|<name|Cygwin>|http://www.cygwin.com/>, then
    you may run <verbatim|setup.exe>, select the <verbatim|texmacs> package
    and install it.

    <item>From version 1.0.7.5 on, <TeXmacs> is completely independent from
    <TeX>/<LaTeX>. The last remaining dependency on <name|Bib><TeX> has been
    removed in this version: you may use <verbatim|tm-plain>,
    <verbatim|tm-alpha>, <abbr|etc.> for your bibliography styles. The native
    bibliography support is still a bit unstable though; it will be further
    improved in upcoming versions.

    <item>If you installed <hlink|<name|Mik><TeX>|http://www.miktex.org/> in
    addition to <TeXmacs>, then, due to the availability of some additional
    font templates, certain fonts may be generated automatically. This
    results in a<nbsp>significant slow-down of <TeXmacs>. Don't panic: the
    fonts have to be generated only once. Subsequent runs of <TeXmacs> will
    be fast.

    <item>The current <name|Windows> version of <TeXmacs> does not yet
    support any plug-ins.
  </itemize>

  <tmdoc-copyright|1999--2011|Joris van der Hoeven|David Michel>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|language|english>
  </collection>
</initial>