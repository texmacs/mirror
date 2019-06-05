<TeXmacs|1.0.7.12>

<style|tmweb2>

<\body>
  <tmweb-current|Download|General><tmweb-title|Suggestions for packaging
  <TeXmacs>|<tmweb-download-links>>

  In the case that you wish to package <TeXmacs> for some <name|Linux>,
  <name|Unix> or <name|Knoppix> distribution, it may be useful to be aware of
  a few points. Depending on the type of distribution and its physical
  support, this will allow you to optimize as a function of size, speed, or
  required dependencies.

  <paragraph*|General points>

  The development releases of <TeXmacs> carry four numbers, like
  <verbatim|1.0.4.6> or <verbatim|1.0.5.7>. The stable releases either two or
  three, like <verbatim|1.0>, <verbatim|1.0.4> or <verbatim|1.1>. Stable
  releases are rather frequent (twice or thrice a year), so we recommend to
  use them for all major distributions.

  Please send us an email if you maintain a <TeXmacs> package for some
  distribution, so that we can maintain a list with distributions which
  support <TeXmacs>.

  <paragraph*|<TeXmacs> dependencies>

  Theoretically speaking, <TeXmacs> only depends on <name|Qt>, <name|Guile>
  and <name|FreeType2> in order to be built on <name|Linux>. However, several
  more specific features of <TeXmacs> depend on external programs. In
  particular, spell checking makes use of <name|Ispell> or <name|Aspell>, the
  rendering of images depends on <name|Ghostview> and/or <name|Imlib2>, the
  <name|Iconv> library is needed for the <name|Html> converters, and we make
  use of several command-line utilities and <name|ImageMagick> for
  conversions between different image formats. The <TeXmacs> package should
  at least recommend the installation of these other programs.

  From version 1.0.7.12 on, <TeXmacs> no longer depends on <TeX>/<LaTeX>, but
  we added a<nbsp>dependency on the <name|Qt> library. When configuring
  <TeXmacs> using <rigid|<shell|./configure --diable-qt>>, it is still
  possible to build the old X11 version.

  <paragraph*|Font issues>

  Some of the fonts which are present in the official <TeXmacs> sources may
  also be present in the <TeX>/<LaTeX> packages for your distribution. In
  order to reduce the size of your <TeXmacs> package, you might wish to
  factor out those fonts. However, the default fonts which are shipped with
  <TeXmacs> may change from time to time. Therefore, it is probably cleaner
  to distribute <TeXmacs> as a whole, except when about 10 megabytes of
  additional package size really matters.

  <paragraph*|Improving the boot speed>

  On <name|Knoppix> systems, it may be interested to shortcut several things
  which are done when you run <TeXmacs> for the first time, by making use of
  the <TeXmacs> cache. In order to do so, install a<nbsp>brandnew version of
  <TeXmacs> and remove your <verbatim|~/.TeXmacs> directory. Start <TeXmacs>
  once and ask the program to build the complete user manual using
  <menu|Help|Full manuals|User manual>. When <TeXmacs> will be done,
  carefully copy the files

  <\code>
    <\with|par-par-sep|0fn>
      \ \ \ \ ~/.TeXmacs/system/settings.scm

      \ \ \ \ ~/.TeXmacs/system/setup.scm

      \ \ \ \ ~/.TeXmacs/system/cache/*
    </with>
  </code>

  to some location in the <TeXmacs> distributiuon. You may now modify the
  <TeXmacs> script so as to copy these files back whenever the file
  <verbatim|~/.TeXmacs/system/settings.scm> does not exist (before booting
  <TeXmacs> in the usual way). This should reduce the boot time to a few
  seconds.

  <tmdoc-copyright|2005--2011|Joris van der Hoeven>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|language|english>
  </collection>
</initial>