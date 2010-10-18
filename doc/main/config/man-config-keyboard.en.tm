<TeXmacs|1.0.7.7>

<style|tmdoc>

<\body>
  <tmdoc-title|Keyboard configuration>

  The behaviour of keyboard inside <TeXmacs> depends on a few user
  preferences, as specified in the menu <menu|Edit|Preferences>:

  <\itemize>
    <item>The <hlink|<menu|Look and feel>|man-preferences.en.tm#preferences:look-and-feel>
    determines the main rules for keyboard shortcuts and attempts to make the
    behaviour as close as possible to the standards for the selected look and
    feel.

    <item>Some minor customizations are possible via
    <hlink|<menu|Edit|Preferences|Keyboard>|man-preferences.en.tm#preferences:keyboard>.
  </itemize>

  We will now detail specific issues related to the keyboard configuration on
  various systems. For more information on keyboard shortcuts, we refer to
  the general section on how the <hlink|master the
  keyboard|../text/keyboard/man-keyboard.en.tm>.

  <paragraph*|Standard conformance>

  <TeXmacs> attempts to be as standard-conformant regarding the various look
  and feels. However, there are a few general situations in which <TeXmacs>
  reserves some keyboard shortcuts for the sake of user-friendliness:

  <\itemize>
    <item>The function keys <key|F5>--<key|F12> are reserved for special
    actions.

    <item>Most standards admit a ``principal modifier key'' for forming
    keyboard shortcuts (<prefix|std><nbsp>for your look and feel) and
    sometimes another modifier key for other shortcuts (<abbr|e.g.> the
    <key|windows> key under <name|Windows> and <prefix|A-> under <name|Mac
    OS>). The remaining free modifier (<prefix|cmd> for your look and feel)
    is reserved for <TeXmacs>.

    <item><TeXmacs> contains many keyboard macros involving one or more
    modifier keys and the arrow keys (including <key|home>, <key|end>,
    <key|pageup> and <key|pagedown>). Shortcuts which involve the arrow keys
    are therefore reserved, except for those which also involve the principal
    modifier key<nbsp><key|std>.
  </itemize>

  <paragraph*|Potential conflicts>

  The <TeXmacs>-specific shortcuts are rarely in conflict with standard
  conventions. <space|0.2spc>Nevertheless, in
  table<nbsp><reference|kbd-conflict-table>, we have displayed some more or
  less standard shortcuts, which might work in other applications, but which
  will not work inside <TeXmacs>. Fortunately, most of these shortcuts admit
  even more standard equivalents.

  <\big-table|<descriptive-table|<tformat|<cwith|1|-1|1|-1|cell-halign|l>|<table|<row|<cell|Look
  and feel>|<cell|Shortcut>|<cell|Alternative>|<cell|Meaning>>|<row|<cell|All
  except Emacs>|<cell|<key|F5>>|<cell|>|<cell|Refresh>>|<row|<cell|Windows>|<cell|<key|A-backspace>>|<cell|<key|C-z>>|<cell|Undo>>|<row|<cell|Windows>|<cell|<key|A-S-backspace>>|<cell|<key|C-Z>,
  <key|C-y>>|<cell|Redo>>|<row|<cell|Mac OS>|<cell|<key|C-a>>|<cell|<key|A-up>>|<cell|Move
  to start of block>>|<row|<cell|Mac OS>|<cell|<key|C-e>>|<cell|<key|A-down>>|<cell|Move
  to end of block>>|<row|<cell|Mac OS>|<cell|<key|A-pageup>, <key|C-up>,
  <key|C-pageup>>|<cell|<key|pageup>>|<cell|Page up>>|<row|<cell|Mac
  OS>|<cell|<key|A-pagedown>, <key|C-down>,
  <key|C-pagedown>>|<cell|<key|pagedown>>|<cell|Page down>>|<row|<cell|Mac
  OS>|<cell|<key|home>>|<cell|<key|M-up>>|<cell|Move to start of
  document>>|<row|<cell|Mac OS>|<cell|<key|end>>|<cell|<key|M-down>>|<cell|Move
  to end of document>>>>>>
    <label|kbd-conflict-table>Some shortcuts that might work in other
    applications, but not in <TeXmacs>.
  </big-table>

  <paragraph*|System-wide shortcuts which may take precedence>

  In addition to the above standard shortcuts, some system-wide applications
  may define additional global shortcuts, which take precedence over the
  <TeXmacs> shortcuts. For instance, under <name|Mac OS X>, the application
  <name|Spaces> uses the shortcuts <key|C-left>, <key|C-right>, <key|C-up>,
  <key|C-down>, <key|C-1>, <key|C-2>, <key|C-3> and <key|C-4> to switch
  between multiple screens.

  One solution to the above problems is to change the problematic global
  shortcuts in the responsible applications. For instance, <name|Spaces> can
  be configured to use <prefix|M-A-C-> as a prefix instead of <prefix|C->
  (click on the popup menu behind ``To switch between spaces'' and
  simultaneously press <prefix|M->, <prefix|A-> and <prefix|C->).

  If you cannot or do not want to change the system-wide shortcuts, then you
  may use the <rigid|<key*|escape>-key> in order to produce equivalents for
  the modifier keys <prefix|M->, <prefix|A-> and <prefix|C->. For instance,
  under <name|Mac OS>, <prefix|C-> is equivalent to <key*|escape escape>.
  Hence, the <TeXmacs> shortcut <key|C-right> can also be obtained by typing
  <key*|escape escape right>, which may coexist with the <name|Spaces>
  shortcut <key|C-right>. Table<nbsp><reference|kbd-escape-table> shows the
  modifier key combinations which can be obtained using <key*|escape>.

  <\big-table|<descriptive-table|<tformat|<table|<row|<cell|Shortcut>|<cell|Modifier
  keys>>|<row|<cell|<key*|escape>>|<cell|<key|escape>>>|<row|<cell|<key*|escape
  escape>>|<cell|<key|escape escape>>>|<row|<cell|<key*|escape escape
  escape>>|<cell|<key|escape escape escape>>>|<row|<cell|<key*|S-escape>>|<cell|<key|S-escape>>>|<row|<cell|<key*|S-escape
  S-escape><space|1em>>|<cell|<key|S-escape S-escape>>>>>>>
    <label|kbd-escape-table>Keyboard shortcuts for modifier keys or modifier
    key combinations.
  </big-table>

  <paragraph*|User-defined shortcuts>

  If, for some reason, the standard <TeXmacs> shortcuts are not sufficient or
  suitable for you, then you may <hlink|define your own
  shortcuts|../scheme/man-keyboard.en.tm>.

  <tmdoc-copyright|1998--2002|Joris van der Hoeven>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<\initial>
  <\collection>
    <associate|language|english>
  </collection>
</initial>