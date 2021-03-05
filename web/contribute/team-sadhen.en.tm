<TeXmacs|1.99.18>

<style|<tuple|tmweb2|old-dots|old-lengths>>

<\body>
  <tmweb-current|Contribute|Team><tmweb-title|Darcy
  Shen|<tmweb-contribute-links>>

  Darcy Shen is a Scala enthusiast working as a Data Engineer.

  He started to translate the <TeXmacs> documents into Chinese in 2013 and
  began his <TeXmacs> hacking since then.

  <htab|5mm><image|team-sadhen.jpg||150px||>

  <section|Notes and Videos>

  <\itemize>
    <item>N: Build TeXmacs using CMake and MXE on WSL for Windows
    (<hlink|gitee|https://texmacs.gitee.io/notes/docs/build-using-cmake-and-mxe-on-wsl.html>/<hlink|github|https://texmacs.github.io/notes/docs/build-using-cmake-and-mxe-on-wsl.html>)

    <item>N: Build <TeXmacs> using CMake and Homebrew
    (<hlink|gitee|https://texmacs.gitee.io/notes/docs/build-using-cmake-and-homebrew-on-macos.html>/<hlink|github|https://texmacs.github.io/notes/docs/build-using-cmake-and-homebrew-on-macos.html>)

    <item>N: Customizing the color of code snippets
    (<hlink|gitee|https://texmacs.gitee.io/notes/docs/customize-syntax-color.en.html>/<hlink|github|https://texmacs.github.io/notes/docs/customize-syntax-color.en.html>)\ 

    <item>V: GNU TeXmacs: \<#4E00\>\<#4E2A\>\<#79D1\>\<#6280\>\<#7F16\>\<#8F91\>\<#5E73\>\<#53F0\>
    (<hlink|Slides|https://www.slidestalk.com/u282/GNUTeXmacsSFD2019>/<hlink|Bilibili|https://www.bilibili.com/video/BV19741167ik>)
  </itemize>

  <section|Activities>

  <\description>
    <item*|<with|font-series|bold|Infrastructure>>

    <\description>
      <item*|CMake>Maintain the CMake build definition for better IDE
      integration and maintainability.

      <item*|Git>A directory-level synchronization from SVN to Git.
      Currently, we accepts pull requests from
      <hlink|Github|https://github.com/texmacs>. Developers who are only
      interested in plugins can contribute to the
      <hlink|plugins|https://github.com/texmacs/plugins> sub-project
      directly. Translators are also welcomed to contribute to the
      <hlink|doc|https://github.com/texmacs/doc> sub-project.

      <item*|Tests>Introduce GTest for C++ and aggregates Scheme unit tests
      under <scm|(run-all-tests)>.
    </description>

    <item*|Plugins>

    <\description>
      <item*|Graph>Re-implement existing plugins
      (Asymptote/DraTex/Gnuplot/Graphviz/Xy-pic) using Python, and add
      several new plugins (Mermaid/PlantUML/TikZ). Implemented in Python,
      these plugins should work on GNU/Linux, macOS and Windows.

      <item*|Octave>Started to maintain the Octave plugin since 2020. Improve
      plotting based on Lorenzo Lunelli's work and add support for tab
      completion.

      <item*|Git>With the help of Joris, add partial support for <name|Git>
      as a versioning tool

      <item*|Scala>see <hlink|ammonite|https://github.com/texmacs/ammonite>.
      Full-featured Scala REPL Session based on Ammonite REPL.
    </description>

    <item*|Language>

    <\description>
      <item*|Chinese>Translations of the built-in documents and the
      english2chinese dictionary

      <item*|Chinese>Use <key|Tab> to type accented pinyin quickly

      <item*|Chinese>Tune default fonts for <TeXmacs> on macOS and Windows

      <item*|Esperanto>Use <key|Tab> to type special characters quickly
    </description>

    <item*|Code>

    <\itemize>
      <item>Java/Scala/JavaScript/Octave/Graphviz/JSON support

      <item>TODO: Rust, Julia, Go, Haskell, OCaml, Erlang, Swift, Groovy,
      Lua, Objective-C, Elixir, Kotlin, Ruby support

      <item>TODO: SQL support

      <item>TODO: Markdown/reStructuredText support

      <item>TODO: XML/TOML/INI support
    </itemize>
  </description>

  <section|Plans in 2021>

  <\itemize>
    <item>Make GNU <TeXmacs> faster
  </itemize>

  <tmdoc-copyright|2018\U2021|Darcy Shen>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
  </collection>
</initial>