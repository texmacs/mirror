<TeXmacs|1.0.7.12>

<style|tmweb>

<\body>
  <tmweb-current|Download|Sources><tmweb-title|Compile <TeXmacs> from the
  source code|<tmweb-download-links>>

  On this page, we explain how to compile <TeXmacs> from the source code on
  <name|Unix>-like system, including <name|MacOS> and <name|Windows> with
  <name|Mingw> or <name|Cygwin>. In the case of <name|Windows>, you may first
  want to install the appropriate build environment and follow our
  <hlink|instructions for compilation on <name|Windows>|winqt.en.tm>.

  <section|Verify the <TeXmacs> dependencies>

  Before you install <TeXmacs> on your system, you have to make sure that the
  other programs on which <TeXmacs> depends, namely:

  <\description>
    <item*|<hlink|<name|Qt>|http://qt.nokia.com/products/>>A cross-platform
    library for the development of user interfaces.

    <item*|<hlink|<name|Guile>|http://www.gnu.org/s/guile/>>The GNU
    implementation of <name|Scheme>, which is used as an extension language.

    <item*|<hlink|<name|Freetype2>|http://www.freetype.org/freetype2/index.html>>A
    library for font rendering.
  </description>

  Some other softwares that you might wish to install for more functionality
  and better performance are <hlink|<name|Ghostscript>|http://pages.cs.wisc.edu/~ghost/>,
  <hlink|<name|Aspell>|http://aspell.net/>,
  <hlink|<name|Libiconv>|http://www.gnu.org/s/libiconv/index.html>,
  <hlink|<name|Netpbm>|http://netpbm.sourceforge.net/> and
  <hlink|<name|ImageMagick>|www.imagemagick.org/>.

  <section|Download and unpack the source code>

  <paragraph|Download the latest version>

  Download the <hlink|latest version|<merge|http://www.texmacs.org/Download/ftp/targz/|<merge|<TeXmacs-version-release|devel>|-src.tar.gz>>>
  of the source code, or the <hlink|latest stable
  version|<merge|http://www.texmacs.org/Download/ftp/targz/|<merge|<TeXmacs-version-release|stable>|-src.tar.gz>>>,
  <verbatim|cd> into the directory where you wish to compile <TeXmacs> and
  type

  <\shell-code>
    tar -zxvf <merge|<TeXmacs-version-release|devel>|-src.tar.gz>
  </shell-code>

  All files will be unpacked into the directory
  <with|font-family|tt|<merge|<TeXmacs-version-release|devel>|-src>>, which
  is the 'installation directory'.

  <paragraph|Download the current development version>

  Since <TeXmacs>-1.0.7.1, the development of <TeXmacs> is done using the
  <hlink|Subversion|http://subversion.tigris.org/> concurrent versioning
  system. In order to download the current SVN version of <TeXmacs> in
  read-only mode, you should do

  <\verbatim>
    \ \ \ \ svn co svn://svn.savannah.gnu.org/texmacs/trunk/src
  </verbatim>

  Notice that you may also <hlink|browse|http://svn.savannah.gnu.org/viewvc/trunk/?root=texmacs>
  the current <TeXmacs> sources on the web. The <TeXmacs> website and other
  things are also maintained by SVN; just replace <verbatim|src> by
  <verbatim|web> or <verbatim|misc> in the above checkout.

  In order to commit changes by SVN, you first need a user account on
  <hlink|<name|Savannah>|http://savannah.gnu.org> and send a request to join
  the <TeXmacs> developers team. You may then check out and commit changes as
  described on <hlink|the subversion page for
  <TeXmacs>|https://savannah.gnu.org/svn/?group=texmacs>. You may also use
  <name|Savannah> in order to submit <hlink|patches|../contact/patches.en.tm>
  to<nbsp><TeXmacs>.

  <section|Compile, install and run>

  <TeXmacs> supports the standard GNU compilation and installation procedure.
  Assuming that you logged yourself in as root, <verbatim|cd> into the
  installation directory and type

  <\shell-code>
    ./configure

    make

    make install
  </shell-code>

  The first command examines your particular system configuration. The second
  command launches the compilation. The last command installs <TeXmacs> in
  <with|font-family|tt|/usr/local>.

  If everything works fine, you should be able to run <TeXmacs> by

  <\shell-code>
    texmacs &
  </shell-code>

  If this does not work, you should make sure that
  <with|font-family|tt|/usr/local/bin> is in your <with|font-family|tt|PATH>.
  Depending on your shell, you can ensure this by typing

  <\shell-code>
    export PATH=/usr/local/bin:$PATH
  </shell-code>

  or

  <\shell-code>
    setenv PATH /usr/local/bin:$PATH
  </shell-code>

  <section|Configuration and build options>

  If you cannot log yourself in as root, or if you want to install <TeXmacs>
  elsewhere than in <with|font-family|tt|/usr/local>, then you should use

  <\shell-code>
    ./configure --prefix=<with|color|brown|[target directory]>
  </shell-code>

  instead of <with|font-family|tt|./configure>. In this case, <TeXmacs> will
  be installed in <with|font-family|tt|<with|color|brown|[target directory]>>
  and you will have to set your <with|font-family|tt|PATH> accordingly, as to
  contain <with|font-family|tt|<with|color|brown|[target directory]>/bin>.

  The configuration method

  <\shell-code>
    ./configure --disable-qt
  </shell-code>

  allows you to build the historical X11 version of <TeXmacs> instead of the
  <name|Qt>-based version. For more configuration options, type
  <shell|./configure --help>.

  By default, we build <TeXmacs> using dynamically linked libraries. If you
  rather want to build the static version, use

  <\shell-code>
    make STATIC_TEXMACS
  </shell-code>

  For more build methods, please look at the <name|Makefile>.

  <section|Happy <TeXmacs>-ing!>

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