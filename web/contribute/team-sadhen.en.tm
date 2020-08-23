<TeXmacs|1.99.13>

<style|<tuple|tmweb2|old-dots>>

<\body>
  <tmweb-current|Contribute|Team><tmweb-title|Darcy
  Shen|<tmweb-contribute-links>>

  Darcy Shen is a Scala programmer living in Hangzhou. He started to
  translate the <TeXmacs> documents into Chinese in 2013 and began his
  <TeXmacs> hacking since then.

  <htab|5mm><image|team-sadhen.jpg||150px||>

  <section|Activities>

  <\description>
    <item*|Community>

    <\itemize>
      <item>Admin of the <hlink|GNU TeXmacs forum|http://forum.texmacs.cn>

      <item>Admin of the <hlink|GNU <TeXmacs> Gitter
      chatroom|https://gitter.im/texmacs/Lobby>

      <item>Admin of the <hlink|GNU <TeXmacs>\<#8C46\>\<#74E3\>\<#5C0F\>\<#7EC4\>|https://www.douban.com/group/texmacs/>

      <item>Blogger of the <hlink|GNU <TeXmacs>\<#77E5\>\<#4E4E\>\<#4E13\>\<#680F\>|https://zhuanlan.zhihu.com/texmacs>
    </itemize>

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
      <item*|Graph>Re-implement existing plugins(Xy-pic/Gnuplot/Asymptote/DraTex/Graphviz)
      using Python, and add several new plugins(Mermaid/PlantUML/TikZ).
      Implemented in Python, these plugins should work for GNU/Linux, macOS
      and Windows.

      <item*|Scala>see <hlink|ammonite|https://github.com/texmacs/ammonite>.
      Full-featured Scala REPL Session based on Ammonite REPL.

      <item*|Status Page>Maintain the <hlink|README.md|https://github.com/texmacs/plugins>
      page for plugins.
    </description>

    <item*|CJK Improvements>

    <\itemize-dot>
      <item>Chinese translations of the builtin documents and the
      english2chinese dictionary

      <item>Use <key|Tab> to type accented pinyin quickly

      <item>TODO: Space Allocation Algorithm for better CJK typesetting
    </itemize-dot>

    <item*|Esperanto Support>Esperanto users can use <key|Tab> to type
    special characters quickly.

    <item*|Git Versioning>

    <\itemize>
      <item>View history/Compare with history version for the current buffer

      <item>View log/status for the whole git repository
    </itemize>

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

  <section|Ideal <TeXmacs>>

  <\itemize-dot>
    <item>Better CJK support and better localization

    <item>Write books in <TeXmacs> and export them to epubs, markdown texts,
    ...

    <item>Programming Notebook on the fly with more and more languages' REPL

    <item>...
  </itemize-dot>

  <section|Work in Progress>

  <\itemize>
    <item><hlink|GSoC|https://github.com/texmacs/gsoc> for GNU <TeXmacs>

    <item>Upgrade GNU <TeXmacs> to <name|Guile> 2.2.x in the subproject
    <hlink|TimScheme|https://github.com/texmacs/TimScheme>
  </itemize>

  <tmdoc-copyright|2018\U2020|Darcy Shen>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
  </collection>
</initial>