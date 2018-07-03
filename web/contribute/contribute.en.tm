<TeXmacs|1.99.6>

<style|<tuple|tmweb|english|old-spacing>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|Contributing to
  <TeXmacs>|<tmweb-contribute-links>>

  <section|Introduction>

  Of course, one of the best ways to contribute to GNU <TeXmacs> is by using
  it a lot, talk about it to friends and collegues, and report bugs or other
  unnatural behaviour to us. Please mention the fact that you wrote articles
  using <TeXmacs> when submitting them. You can do this by putting the
  <markup|made-by-TeXmacs> tag somewhere inside your title using
  <menu|Insert|Title|TeXmacs notice>.

  Besides these general (but very important) ways to contribute, you may also
  <hlink|donate|donations.en.tm> money to us, or actively help with the
  development, the documentation or the general organization of <TeXmacs>. In
  the latter case, we suggest that you first suscribe to the <hlink|<TeXmacs>
  users|../home/ml.en.tm#tmusers> and/or <hlink|<TeXmacs>
  developers|../home/ml.en.tm#tmdev> mailing lists, and explain there how you
  would like to contribute. You may also directly <hlink|contact
  us|../contact/contact.en.tm>.

  Although <TeXmacs> is a fairly large and complex program, there are many
  ways in which non technical users may contribute. For instance, you may
  wish to help with the <hlink|internationalization|translations.en.tm> ir
  the <hlink|documentation|documentation.en.tm> of <TeXmacs>. If you have
  some artistic talents, then you might also design icons for us or nice
  pictures for upcoming <TeXmacs> T-shirts. Yet other people may wish to
  contribute to the organization and the promotion of <TeXmacs>.

  For people with limited understanding of all the <TeXmacs> internals, there
  are also plenty of ways to do some useful programming. First of all, you
  may consider writing independent <hlink|plug-ins|plugins.en.tm> for
  <TeXmacs>. These may either be interfaces with existing extern software, or
  enhancements to <TeXmacs>, like style files or new functionality written in
  the <name|Guile>/<name|Scheme> extension language.

  More experienced programmers may also help developing the <TeXmacs> core
  system (which is written in <name|C++> and <name|Scheme>). Our <hlink|plans
  for the future|../about/plans.en.tm> may give you an impression about where
  we want to go. Of course your own ideas are welcome! <TeXmacs> is developed
  using <hlink|SVN|../download/svn.en.tm>, but we prefer contributions in the
  form of <hlink|patches|../contact/patches.en.tm>. There exists a fairly
  up-to-date Git <hlink|mirror|https://github.com/texmacs/texmacs> hosted at
  Github.

  <section|The <TeXmacs> team and prioritary tasks><label|prioritary-tasks>

  People who are interested to contibute to <TeXmacs> on a regular basis are
  invited to join the <hlink|<TeXmacs> team|team.en.tm>. In order to organize
  the different possible contributions to <TeXmacs>, we maintain a list of
  prioritary tasks. Many of these tasks (documentation, organization,
  promotion) are designed in such a way that non experts may contribute in a
  useful way. Most of the software development tasks can also be carried out
  quite independently from the core development.

  Each prioritary task is well specified and led by a single member of the
  team. Anyone who would like to contribute to such a task should first
  contact this person. Some tasks do not yet have a leader and you should
  contact <hlink|<name|Joris van der Hoeven>|team-joris.en.tm> if you want to
  accept the responsibility to lead it. You may also propose new tasks, if
  you can give a clear description of the <em|rationale>, of what precisely
  has to be done, and how things will be organized.

  It is the responsability of the task leader to organize all necessary
  developments and social aspects around the task. For instance, one usually
  wants to maintain the list of people who contributed. Similarly, for
  development tasks, it should be verified that contributed code is portable
  and keeps working. For documentation tasks, some quality control and
  corrections may be necessary and the translation process may have to be
  organized. As a counterpart, your commitment to the project will receive
  more precise credit and publicity.

  <subsection|Organizational tasks>

  <\description>
    <item*|Website>This task concerns the development of a well designed,
    functional, rich, and up to date web site, for which the main content can
    be written using <TeXmacs>.

    <item*|News>It would be nice if somebody could take care of important
    announcements concerning <TeXmacs>, as well as the diffusion of
    announcements of new versions on all appropriate media.

    <item*|Diffusion and publicity>It would be nice if someone could organize
    various kinds of publicity for <TeXmacs>, such as a good presence on the
    web, a good presence at public institutions (Universities, CNRS, Inria,
    Polytechnique, Digiteo, CNDP, etc.), email database with people to
    contact occasionally at major releases, etc.

    <item*|<hlink|French high schools|task-education.en.tm>>Since <TeXmacs>
    is mainly developed in France, it is natural to spend particular efforts
    on diffusing the software in the French education system.

    <item*|Bug and wish lists>The mere task of reproducing bugs from the
    <name|Savannah> bug list is very time consuming. It would be nice if more
    people could be involved in checking whether some items are not simply
    outdated or irrelevant. Easy bugs could also directly be fixed by
    <TeXmacs> hackers. Similarly, it should be checked whether some of the
    wishes are not already implemented in a more recent version.
  </description>

  <subsection|Documentation tasks>

  <\description>
    <item*|<hlink|Videos|task-videos.en.tm>>Short video clips are highly
    efficient for learning different aspects of the program. This task
    consist of selecting, editing, converting and distributing contributed
    videos.

    <item*|Tutorials>We often receive <TeXmacs> tutorials in various lengths,
    languages and for various target publics. We need someone to collect this
    material and to present it in an attractive way on our website.

    <item*|Pedagogic material and sample documents>In order to use <TeXmacs>
    at high school or at universities, it is important to build a data base
    with pedagogic material written using <TeXmacs>. More generally, sample
    <TeXmacs> documents may also be interesting to see what is possible and
    for learning <TeXmacs>.

    <item*|Internationalization>We need someone to coordinate the effort of
    translating <TeXmacs> into several languages.

    <item*|FAQ>We need a maintainer for the list of Frequently Asked
    Questions.
  </description>

  <subsection|Development tasks>

  <\description>
    <item*|<hlink|Plug-ins|task-plugins.en.tm>>There are many existing
    plug-ins for <TeXmacs>. However, some of the plug-ins are not documented,
    no longer maintained, or not portable on some systems. This task consists
    of keeping the support of <TeXmacs> plug-ins up to date and to assist
    plug-in developers with technical advice.

    <item*|<TeXmacs> wiki>It would be great if we could edit <TeXmacs>
    documents directly on the web, as on a wiki. This would ease many of the
    documentation related tasks which involve a lot of sharing documents.

    <item*|<hlink|Automatic generation of
    documentation|task-autodocs.en.tm>>Many features of <TeXmacs> can be
    documented in a programmatic way using <scheme>, such as explanations of
    menu items, a list of all active keyboard shortcuts in the current mode,
    etc.
  </description>

  <tmdoc-copyright|1999--2012|Joris van der Hoeven>

  <tmweb-license>
</body>

<initial|<\collection>
</collection>>