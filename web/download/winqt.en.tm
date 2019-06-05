<TeXmacs|1.0.7.20>

<style|tmweb2>

<\body>
  <tmweb-current|Download|Windows><tmweb-title|Compiling Qt-<TeXmacs> under
  <name|Windows>|<tmweb-download-links>>

  <section|Download and install the build environment><label|install>

  In order to compile <TeXmacs> under <name|Windows>, you need <name|Qt>,
  <name|MinGW> and a certain number of libraries. We have simplified the
  installation procedure for these dependencies by creating a single zip-file
  which contains all necessary stuff. Thus, you first have to download (195
  Mb)

  <\verbatim>
    \ \ \ \ <hlink|<verbatim|TmBuildEnv.zip>|http://ftp.texmacs.org/TeXmacs/windows/qt/TmBuildEnv.zip>
  </verbatim>

  or older versions <hlink|here|http://ftp.texmacs.org/TeXmacs/windows/qt>.
  This file must be uncompressed in the directory of your choice as long as
  the path does not contain white space (i.e Documents directory). To open a
  command shell you have to run the <verbatim|msys.bat> windows command file.
  It is located in the subdirectory <verbatim|MINGW/msys/1.0/>. The best way
  is to create a shortcut to this file from your desktop.

  At the first run, the <verbatim|msys> command creates the file
  <verbatim|/etc/fstab> with a table of mounted devices. If you want to
  relocate the whole MINGW environment, it is mandatory to delete the
  <verbatim|fstab> file in order to rebuild the correct mounting paths.

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

  Configure the environment using. You can use -h parameter to view
  configuration options

  <\shell-code>
    ./configure
  </shell-code>

  Build <TeXmacs>

  <\shell-code>
    make WINDOWS_BUNDLE
  </shell-code>

  Run <TeXmacs>

  <\shell-code>
    ~/texmacs/distr/TeXmacs-Windeows/bin/texmacs.exe
  </shell-code>

  The first time you run <TeXmacs>, the program may crash. This can appear if
  a previous version has had a configuration file with a different format.
  You have to remove the <TeXmacs> directory located in AppData\\Roaming
  (AppData is a hidden directory in your Windows home). Subsequent runs
  should w<abbr|>ork fine.

  <section|Creation of an installer>

  After building <TeXmacs>, you can create an installer using the
  WINDOWS_PACKAGE target

  <\shell-code>
    make WINDOWS_PACKAGE
  </shell-code>

  The installer can be found in the directory <em|~/texmacs/distr/windows/>.
  This installer is a standalone package, so you don't need anything else to
  enjoy <TeXmacs>. The MinGW environment is no longer useful.

  <tmdoc-copyright|2013|David Michel|Massimiliano Gubinelli|Joris van der
  Hoeven, Denis Raux>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|preamble|false>
  </collection>
</initial>