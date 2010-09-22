<TeXmacs|1.0.1.11>

<style|tmdoc>

<\body>
  <expand|tmdoc-title|Configuration of the modifier keys>

  <apply|TeXmacs> uses five major keyboard modifiers:
  <key|S->, <key|C->,
  <key|A->, <key|M-> and
  <key|H->, which are abbreviated as <key|S->, <key|C->,
  <key|A->, <key|M-> and <key|H->. The <key|S-> and
  <key|C-> keys are present on virtually all keyboards and
  the <key|A-> key on almost all. Most keyboards for PC's
  nowadays also have a <key|windows> key, which is usually
  equivalent to <key|M-> for <TeXmacs>.

  Before reconfiguring your keyboard, you should first check that this is
  indeed necessary. If you have keys which correspond to
  <key|S->, <key|C->,
  <key|A-> and <key|M-> in a suitable way,
  then you probably do not want to do anything. A possible exception is when
  you want to use a simple key like <key|capslock> for
  typing mathematical symbols. In that case, you should map
  <key|capslock> to <key|H->.

  In order to reconfigure the keyboard, you simply select the logicial
  modifier that you want to correspond to a given physical key in
  <apply|menu|Edit|Preferences|Keyboard>. For instance, selecting
  <apply|menu|Windows key|Map to M modifier>, the
  <key|windows> key will correspond to the
  <key|M-> modifier. Similarly, when selecting
  <apply|menu|Caps-lock key|Map to H modifier>, the
  <key|capslock> key will correspond to the
  <key|H-> modifier.

  Unfortunately, X Window only allows system-wide reconfiguration.
  Consequently, if you reconfigure the <key|capslock> key
  inside <apply|TeXmacs>, then the new behaviour of
  <key|capslock> will affect all other applications too. It
  is therefore important to reconfigure only those keys which you do not use
  for something else in other applications. For instance, the
  <key|windows> key is not used by many applications, so it
  generally does not do any harm to reconfigure it. You may also prefer to
  perform an appropriate system-wide configuration. This can be done using
  the <verbatim|xmodmap> command; see the corresponding manual page for more
  information.

  In certain cases, you already have keys on your keyboard which correspond
  to <key|A->, <key|M-> and
  <key|H->, but not in the way you want. This can be done by
  remapping the <key|A->, <key|M-> and <key|H-> prefixes to other logical
  modifiers in the first group of submenus of
  <apply|menu|Edit|Preferences|Keyboard>.

  For instance, for Emacs compatability, you might want to permute the
  <key|M-> or <key|windows> key with
  <key|A-> without making any system-wide changes. This
  can be done by finding out which modifiers correspond to these keys;
  usually this will be <key|Mod1> for <key|A-> and
  <key|Mod4> for <key|M-> or <key|windows>.
  We next perform the necessary permutation in
  <apply|menu|Edit|Preferences|Keyboard>, by selecting <apply|menu|A
  modifier|Equivalent for Mod4> and <apply|menu|M modifier|Equivalent for
  Mod1>.

  <apply|tmdoc-copyright|1998--2002|Joris van der Hoeven>

  <expand|tmdoc-license|Permission is granted to copy, distribute and/or
  modify this document under the terms of the GNU Free Documentation License,
  Version 1.1 or any later version published by the Free Software Foundation;
  with no Invariant Sections, with no Front-Cover Texts, and with no
  Back-Cover Texts. A copy of the license is included in the section entitled
  "GNU Free Documentation License".>
</body>

<\initial>
  <\collection>
    <associate|paragraph width|150mm>
    <associate|odd page margin|30mm>
    <associate|shrinking factor|4>
    <associate|page right margin|30mm>
    <associate|page top margin|30mm>
    <associate|reduction page right margin|25mm>
    <associate|page type|a4>
    <associate|reduction page bottom margin|15mm>
    <associate|even page margin|30mm>
    <associate|reduction page left margin|25mm>
    <associate|page bottom margin|30mm>
    <associate|reduction page top margin|15mm>
    <associate|language|english>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|idx-5|<tuple|<uninit>|?>>
    <associate|idx-6|<tuple|<uninit>|?>>
    <associate|idx-7|<tuple|<uninit>|?>>
    <associate|idx-1|<tuple|<uninit>|?>>
    <associate|idx-2|<tuple|<uninit>|?>>
    <associate|idx-3|<tuple|<uninit>|?>>
    <associate|idx-4|<tuple|<uninit>|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|font family|<quote|ss>|Edit>|<with|font
      family|<quote|ss>|Preferences>|<with|font
      family|<quote|ss>|Keyboard>>|<pageref|idx-1>>

      <tuple|<tuple|<with|font family|<quote|ss>|Windows key>|<with|font
      family|<quote|ss>|Map to M modifier>>|<pageref|idx-2>>

      <tuple|<tuple|<with|font family|<quote|ss>|Caps-lock key>|<with|font
      family|<quote|ss>|Map to H modifier>>|<pageref|idx-3>>

      <tuple|<tuple|<with|font family|<quote|ss>|Edit>|<with|font
      family|<quote|ss>|Preferences>|<with|font
      family|<quote|ss>|Keyboard>>|<pageref|idx-4>>

      <tuple|<tuple|<with|font family|<quote|ss>|Edit>|<with|font
      family|<quote|ss>|Preferences>|<with|font
      family|<quote|ss>|Keyboard>>|<pageref|idx-5>>

      <tuple|<tuple|<with|font family|<quote|ss>|A modifier>|<with|font
      family|<quote|ss>|Equivalent for Mod4>>|<pageref|idx-6>>

      <tuple|<tuple|<with|font family|<quote|ss>|M modifier>|<with|font
      family|<quote|ss>|Equivalent for Mod1>>|<pageref|idx-7>>
    </associate>
  </collection>
</auxiliary>
