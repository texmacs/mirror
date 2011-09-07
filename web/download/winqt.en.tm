<TeXmacs|1.0.7.12>

<style|tmweb>

<\body>
  <tmweb-current|Download|Windows><tmweb-title|Compiling Qt-<TeXmacs> under
  <name|Windows>|<tmweb-download-links>>

  <section|Download and install the build environment><label|install>

  In order to compile <TeXmacs> under <name|Windows>, you need <name|Qt>,
  <name|MinGW> and a certain number of libraries. We have simplified the
  installation procedure for these dependencies by creating a single zip-file
  which contains all necessary stuff. Thus, you first have to download (462
  Mb)

  <\quote-env>
    <hlink|<verbatim|ftp://ftp.texmacs.org/pub/TeXmacs/windows/qt/TmBuildEnv.zip>|ftp://ftp.texmacs.org/pub/TeXmacs/windows/qt/TmBuildEnv.zip>
  </quote-env>

  This file must be uncompressed in the directory <verbatim|C:\\>.
  Uncompression in other directories is not supported. Copy the file
  <verbatim|C:\\TmBuildEnv\\MSYS\\MSYS.lnk> to your desktop.

  <section|Download <TeXmacs>>

  Click on the <verbatim|MSYS> icon on your desktop in order to launch a Unix
  terminal and fetch the latest <name|Svn> version of <TeXmacs> as follows:

  <\shell-code>
    mkdir ~/texmacs

    cd ~/texmacs

    svn co svn://svn.savannah.gnu.org/texmacs/trunk/src
  </shell-code>

  \;

  <section|Compile <TeXmacs>>

  Go to the directory with the <TeXmacs> sources

  <\shell-code>
    cd ~/texmacs/src
  </shell-code>

  Configure using

  <\shell-code>
    ./configure CPPFLAGS="-I/usr/include" LDFLAGS="-L/usr/lib"
  </shell-code>

  Build <TeXmacs>

  <\shell-code>
    make WINDOWS_BUNDLE
  </shell-code>

  Run

  <\shell-code>
    ~/texmacs/distr/TeXmacs-Windows/bin/texmacs.exe
  </shell-code>

  The first time you run <TeXmacs>, the program will crash. Subsequent runs
  should work fine.

  <section|Creation of an installer>

  After building <TeXmacs>, you can create an installer using

  <\shell-code>
    cd ~/texmacs/src/misc/windows

    iscc TeXmacs.iss
  </shell-code>

  The installer can be found in the directory <verbatim|~/texmacs/distr>.

  <tmdoc-copyright|2010|David Michel|Massimiliano Gubinelli|Joris van der
  Hoeven>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|language|english>
  </collection>
</initial>