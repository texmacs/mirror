<TeXmacs|1.99.9>

<style|source>

<\body>
  <active*|<\src-title>
    <src-package-dtd|metal-combo|1.0|metal-combo|1.0>

    <\src-purpose>
      Metallic theme for presentations and posters.
    </src-purpose>

    <src-copyright|2013--2019|Joris van der Hoeven>

    <\src-license>
      This software falls under the <hlink|GNU general public license,
      version 3 or later|$TEXMACS_PATH/LICENSE>. It comes WITHOUT ANY
      WARRANTY WHATSOEVER. You should have received a copy of the license
      which the software. If not, see <hlink|http://www.gnu.org/licenses/gpl-3.0.html|http://www.gnu.org/licenses/gpl-3.0.html>.
    </src-license>
  </src-title>>

  <use-package|greyish-combo|metal-deco>

  <copy-theme|metal|greyish>

  <select-theme|metal|metal-brushed>

  <select-theme|metal|metal-brushed-bright-scene>

  <\active*>
    <\src-comment>
      Titles
    </src-comment>
  </active*>

  <assign|metal-title-bar-color|<macro|<pattern|granite-light.png|*3/5|*3/5|#808080>>>

  <assign|metal-title-color|<macro|<pattern|metal-brushed-light.png|*3/5|*3/5|#f0f0f0>>>

  <\active*>
    <\src-comment>
      Standard ornaments
    </src-comment>
  </active*>

  <assign|metal-ornament-color|<pattern|ridged-brushed-medium.png|*3/5|*3/5|#d0d0d0>>

  <assign|metal-ornament-extra-color|<pattern|ridged-brushed-dark.png|*3/5|*3/5|#a0a0a0>>

  <\active*>
    <\src-comment>
      Sessions
    </src-comment>
  </active*>

  <select-input-deco|metal|metal-brushed>

  <select-fold-title-deco|metal|metal-brushed-dark>

  <select-fold-bar-deco|metal|metal-brushed-dark>

  <\active*>
    <\src-comment>
      Posters
    </src-comment>
  </active*>

  <assign|metal-title-block|<value|metal-brushed-block>>

  <assign|metal-framed-block|<value|metal-brushed-block>>

  <assign|metal-framed-block*|<value|metal-brushed-titled-block>>
</body>

<\initial>
  <\collection>
    <associate|sfactor|7>
  </collection>
</initial>