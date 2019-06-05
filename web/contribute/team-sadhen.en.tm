<TeXmacs|1.99.9>

<style|tmweb2>

<\body>
  <tmweb-current|Contribute|Team><tmweb-title|Darcy
  Shen|<tmweb-contribute-links>>

  Darcy Shen is a Scala programmer living in Hangzhou. He started to
  translate the <TeXmacs> documents into Chinese in 2013 and began his
  <TeXmacs> hacking since then.

  He is an active member of the <hlink|Douban <TeXmacs>
  group|https://www.douban.com/group/texmacs/> for Chinese users. He is also
  the maintainer of the <hlink|<TeXmacs> group on
  Github|https://github.com/texmacs> and hopes that the Github Pull Request
  workflow brings more and more contributors. He writes articles about
  <TeXmacs> at <hlink|\<#77E5\>\<#4E4E\>|https://zhuanlan.zhihu.com/texmacs>
  in Chinese.

  <htab|5mm><image|team-sadhen.jpg||150px||>

  <section|Improvements>

  <\description>
    <item*|CMake Build System>Adopt the CMake Build System for better IDE
    integration and maintainbility.

    <item*|CJK Improvements>

    <\itemize-dot>
      <item>Chinese translations of the builtin documents

      <item>Use <key|Tab> to type accented pinyin quickly

      <item>TODO: Space Allocation Algorithm for better CJK typesetting
    </itemize-dot>

    <item*|Unified Graph Plugins>Implemented a unified Graph plugins
    framework in Python. The framework simply launchs the command line of the
    graph generators and imports the generated image files into <TeXmacs>.
    Currently, it supports <name|Graphviz> and <name|Asymptote>.

    <item*|Scala Plugin>see <hlink|TeXmacs.scala|https://github.com/texmacs/TeXmacs.scala>.
    Full-featured Scala REPL Session based on Ammonite REPL.

    <item*|Esperanto Support>Esperanto users can use <key|Tab> to type
    special characters quickly.
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

  <tmdoc-copyright|2018\U2019|Darcy Shen>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|info-flag|minimal>
  </collection>
</initial>