<TeXmacs|1.99.9>

<style|source>

<\body>
  <active*|<\src-title>
    <src-package-dtd|ridged-paper-combo|1.0|ridged-paper-combo|1.0>

    <\src-purpose>
      Ridged paper theme for presentations and posters.
    </src-purpose>

    <src-copyright|2013--2019|Joris van der Hoeven>

    <\src-license>
      This software falls under the <hlink|GNU general public license,
      version 3 or later|$TEXMACS_PATH/LICENSE>. It comes WITHOUT ANY
      WARRANTY WHATSOEVER. You should have received a copy of the license
      which the software. If not, see <hlink|http://www.gnu.org/licenses/gpl-3.0.html|http://www.gnu.org/licenses/gpl-3.0.html>.
    </src-license>
  </src-title>>

  <use-package|reddish-combo|paper-deco|wood-deco>

  <copy-theme|ridged-paper|reddish>

  <select-theme|ridged-paper|paper-ridged>

  <select-theme|ridged-paper|paper-ridged-bright-scene>

  <\active*>
    <\src-comment>
      Titles
    </src-comment>
  </active*>

  <assign|ridged-paper-title-bar-color|<macro|<if|<equal|<value|title-theme>|title-bar>|<pattern|wood-medium.png|*3/5|*3/5|#804018>|<pattern|paper-manila-medium.png|*3/5|*3/5|#f4f0d8>>>>

  <assign|ridged-paper-title-color|<macro|<if|<equal|<value|title-theme>|title-bar>|<value|bg-color>|dark
  brown>>>

  <\active*>
    <\src-comment>
      Extra title hack for backward title compatibility
    </src-comment>
  </active*>

  <assign|left-gnu|<macro|<move|<image|$TEXMACS_PATH/misc/images/left-head.png|0.222222w|0.222222h||>|0fn|-0.333fn>>>

  <assign|right-gnu|<macro|<move|<image|$TEXMACS_PATH/misc/images/right-head.png|0.222222w|0.222222h||>|0fn|-0.333fn>>>

  <assign|title-left|<macro|body|<if|<equal|<value|title-theme>|title-bar>||<right-gnu>>>>

  <assign|title-right|<macro|body|<if|<equal|<value|title-theme>|title-bar>||<left-gnu>>>>

  <\active*>
    <\src-comment>
      Standard ornaments
    </src-comment>
  </active*>

  <assign|ridged-paper-ornament-color|<pattern|pine.png|*3/5|*3/5|#e0b050>>

  <assign|ridged-paper-ornament-extra-color|<pattern|wood-medium.png|*3/5|*3/5|#804018>>

  <assign|ridged-paper-ornament-sunny-color|#f0e0c0>

  <assign|ridged-paper-ornament-shadow-color|#c07055>

  <\active*>
    <\src-comment>
      Sessions
    </src-comment>
  </active*>

  <select-input-deco|ridged-paper|paper-ridged>

  <select-fold-title-deco|ridged-paper|wood-pine-dark>

  <select-fold-bar-deco|ridged-paper|wood-pine>

  <\active*>
    <\src-comment>
      Posters
    </src-comment>
  </active*>

  <assign|ridged-paper-title-block|<value|paper-ridged-block>>

  <assign|ridged-paper-framed-block|<value|paper-ridged-block>>

  <assign|ridged-paper-framed-block*|<value|paper-ridged-titled-block>>
</body>

<\initial>
  <\collection>
    <associate|sfactor|7>
  </collection>
</initial>