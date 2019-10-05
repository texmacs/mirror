<TeXmacs|1.99.11>

<style|source>

<\body>
  <active*|<\src-title>
    <src-package-dtd|base-shadow|1.0|base-shadow|1.0>

    <\src-purpose>
      Common base for shadows.
    </src-purpose>

    <src-copyright|2019|Joris van der Hoeven>

    <\src-license>
      This software falls under the <hlink|GNU general public license,
      version 3 or later|$TEXMACS_PATH/LICENSE>. It comes WITHOUT ANY
      WARRANTY WHATSOEVER. You should have received a copy of the license
      which the software. If not, see <hlink|http://www.gnu.org/licenses/gpl-3.0.html|http://www.gnu.org/licenses/gpl-3.0.html>.
    </src-license>
  </src-title>>

  <\active*>
    <\src-comment>
      Global parameters for all themes
    </src-comment>
  </active*>

  <assign|shadow-elevation|1>

  <assign|shadow-plain|false>

  <assign|shadow-recolor|>

  <\active*>
    <\src-comment>
      Default values for shadow theme parameters
    </src-comment>
  </active*>

  <assign|shadow-picture|tmfs://artwork/pictures/shadows/drop-shadow.png>

  <assign|shadow-effect|0>

  <assign|shadow-align|outer>

  <assign|shadow-format|xxx x.x xxx>

  <assign|shadow-lcrop|0.03>

  <assign|shadow-rcrop|0.97>

  <assign|shadow-bcrop|0.03>

  <assign|shadow-tcrop|0.97>

  <assign|shadow-lborder|0.5em>

  <assign|shadow-rborder|0.5em>

  <assign|shadow-bborder|0.5em>

  <assign|shadow-tborder|0.5em>

  <assign|shadow-loffset|0em>

  <assign|shadow-roffset|0em>

  <assign|shadow-boffset|0em>

  <assign|shadow-toffset|0em>

  <\active*>
    <\src-comment>
      Standard shadows
    </src-comment>
  </active*>

  <assign|art-shadow|<macro|body|<art-box|<arg|body>|<tuple|frame|<value|shadow-picture>|effect|<if|<equal|<value|shadow-recolor>|>|<value|shadow-effect>|<eff-recolor|<value|shadow-effect>|<value|shadow-recolor>>>|align|<value|shadow-align>|format|<if|<value|shadow-plain>|xxx
  xxx xxx|<value|shadow-format>>|lcrop|<value|shadow-lcrop>|rcrop|<value|shadow-rcrop>|bcrop|<value|shadow-bcrop>|tcrop|<value|shadow-tcrop>|lwidth|<times|<value|shadow-elevation>|<value|shadow-lborder>>|rwidth|<times|<value|shadow-elevation>|<value|shadow-rborder>>|bheight|<times|<value|shadow-elevation>|<value|shadow-bborder>>|theight|<times|<value|shadow-elevation>|<value|shadow-tborder>>|loffset|<times|<value|shadow-elevation>|<value|shadow-loffset>>|roffset|<times|<value|shadow-elevation>|<value|shadow-roffset>>|boffset|<times|<value|shadow-elevation>|<value|shadow-boffset>>|toffset|<times|<value|shadow-elevation>|<value|shadow-toffset>>>|<tuple|text|normal>>>>

  <\active*>
    <\src-comment>
      Shadow theme parameters
    </src-comment>
  </active*>

  <new-theme|shadow|shadow-picture|shadow-effect|shadow-align|shadow-format|shadow-lcrop|shadow-rcrop|shadow-bcrop|shadow-tcrop|shadow-lborder|shadow-rborder|shadow-bborder|shadow-tborder|shadow-loffset|shadow-roffset|shadow-boffset|shadow-toffset>

  <\active*>
    <\src-comment>
      Shadows for title bars
    </src-comment>
  </active*>

  <assign|deco-title-shadow-picture|$TEXMACS_PATH/misc/pictures/shadows/title-drop-shadow.png>

  <assign|deco-title-shadow-effect|0>

  <assign|deco-title-shadow-bar|<macro|body|<art-box|<surround||<right-flush>|<arg|body>>|<tuple|frame|<value|deco-title-shadow-picture>|effect|<value|deco-title-shadow-effect>|align|inner|format|xxx
  xxx xxx|bcrop|0.3|tcrop|0.7|lwidth|0em|rwidth|0em|bheight|0em|theight|<times|<value|shadow-elevation>|<over|0.25em|<value|font-size>>>|toffset|1px>|<tuple|text|normal|lpadding|1spc|rpadding|1spc|tpadding|1sep|bpadding|1sep>>>>

  <\active*>
    <\src-comment>
      Shadows for standard decorations
    </src-comment>
  </active*>

  <assign|deco-shadow-effect|0>

  <assign|deco-shadow|<macro|body|<with|inc-el|<plus|<value|shadow-elevation>|1>|<art-box|<arg|body>|<tuple|frame|<value|shadow-picture>|effect|<value|deco-shadow-effect>|align|inner|format|xxx
  xxx xxx|lcrop|0.07|rcrop|0.93|bcrop|0.07|tcrop|0.93|lwidth|2lcorner|rwidth|2rcorner|bheight|2bcorner|theight|2tcorner|loffset|<times|<value|shadow-elevation>|<over|0.25em|<value|font-size>>>|roffset|<plus|0.5rcorner|<times|<value|shadow-elevation>|<over|0.25em|<value|font-size>>>>|boffset|<minus|<plus|0.5bcorner|<times|<value|shadow-elevation>|<over|0.25em|<value|font-size>>>>>|toffset|<minus|<times|<value|shadow-elevation>|<over|0.25em|<value|font-size>>>>>|<tuple|text|normal>>>>>

  \;
</body>

<\initial>
  <\collection>
    <associate|sfactor|7>
  </collection>
</initial>