<TeXmacs|1.0.7.2>

<style|<tuple|seminar|new-presentation|vdh|mathemagix>>

<\body>
  \;

  <switch|<\shown>
    <\with|par-mode|center>
      <strong|<with|font-base-size|14|<\with|color|black>
        Résolution d'équations différentielles algébriques<new-line>dans les
        transséries
      </with>>>
    </with>

    <\with|par-mode|center>
      <tabular*|<tformat|<table|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|<block*|<tformat|<cwith|1|1|1|1|cell-background|white>|<cwith|1|1|1|1|cell-lsep|1em>|<cwith|1|1|1|1|cell-rsep|1em>|<cwith|1|1|1|1|cell-bsep|1em>|<cwith|1|1|1|1|cell-tsep|1em>|<table|<row|<cell|<postscript|texmacs-chip.ps|*0.6|*0.6||||>>>>>>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|Joris
      van der Hoeven, Strasbourg 2009>|<cell|>>|<row|<cell|>|<cell|<with|font-family|rm|<verbatim|http://www.><anim-repeat|<anim-compose|<anim-constant|<with|color|dark
      green|<with|color|brown|T<space|-0.2spc>><with|color|brown|<rsub|<with|math-level|0|font-shape|small-caps|e>>><with|color|brown|X<space|-0.2spc>><rsub|<with|math-level|0|font-shape|small-caps|m<space|-0.2spc>a<space|-0.4spc>c<space|-0.2spc>s>>>|1sec>|<anim-constant|<with|color|dark
      green|<with|color|dark green|T<space|-0.2spc>><rsub|<with|color|brown|<with|math-level|0|font-shape|small-caps|e>>><with|color|dark
      green|X<space|-0.2spc>><with|color|brown|<rsub|<with|math-level|0|font-shape|small-caps|m<space|-0.2spc>a<space|-0.4spc>c<space|-0.2spc>s>>>>|1sec>>>.<verbatim|org>>>|<cell|>>>>>
    </with>
  </shown>|<\hidden>
    <tit|Transséries>

    <\fold-back>
      <\folded>
        <strong|Exemples>
      <|folded>
        <\eqnarray*>
          <tformat|<cwith|1|-1|3|3|cell-bsep|1spc>|<table|<row|<cell|f<rsub|1>>|<cell|=>|<cell|<frac|1|x>+<frac|2|x<rsup|2>>+<frac|3|x<rsup|3>>+\<cdots\>>>|<row|<cell|f<rsub|2>>|<cell|=>|<cell|x+log
          x+log log x+\<cdots\>>>|<row|<cell|f<rsub|3>>|<cell|=>|<cell|\<mathe\><rsup|x+<frac|x|log
          x>+<frac|x|log<rsup|2> x>+\<cdots\>>+<frac|\<mathe\><rsup|x+<frac|x|log
          x>+<frac|x|log<rsup|2> x>+\<cdots\>>|x>+<frac|\<mathe\><rsup|x+<frac|x|log
          x>+<frac|x|log<rsup|2> x>+\<cdots\>>|x<rsup|2>>+\<cdots\>>>>>
        </eqnarray*>
      </folded>

      <\folded>
        <strong|Motivations et histoire>
      <|folded>
        <\itemize>
          <item>Calcul asymptotique universel pour des fonctions réelles

          <item>L-fonctions de Hardy et corps de Hardy

          <item>Non-oscillation <math|\<longrightarrow\>> ordres de
          croissance
        </itemize>
      </folded>

      <\folded>
        <strong|Définition>
      <|folded>
        <\folded-body>
          <dueto|Dahn-Göring, Écalle, vdH>

          Soit <math|x\<succ\>1> une variable \S infiniment grande \T

          Une <strong|transsérie> <math|f\<in\>\<bbb-T\>> est une série
          formelle généralisée

          <\equation*>
            f=<big|sum><rsub|\<frak-m\>\<in\>\<frak-T\>>f<rsub|\<frak-m\>>*\<frak-m\>,
          </equation*>

          avec <math|f<rsub|\<frak-m\>>\<in\>\<bbb-R\>> et où les
          <strong|transmonômes> <math|\<frak-m\>\<in\>\<frak-T\>> sont de la
          forme

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<frak-m\>>|<cell|=>|<cell|log<rsub|l>
            x=log <above|\<cdots\>|l\<times\>> log
            x<space|2em><with|mode|text|<with|color|black|ou>>>>|<row|<cell|\<frak-m\>>|<cell|=>|<cell|exp
            g, g\<in\>\<bbb-T\><rsub|\<succ\>>>>>>
          </eqnarray*>

          avec <math|\<bbb-T\><rsub|\<succ\>>={f\<in\>\<bbb-T\>:supp
          f\<succ\>1}>
        </folded-body>
      </folded>

      <\folded>
        <strong|Opérations>
      <|folded>
        <\folded-body>
          <dueto|Écalle, vdH, van den Dries/Macintyre/Marker>

          <\itemize-minus>
            <item><math|\<bbb-T\>> est un corps

            <item><math|\<bbb-T\>> est totalement ordonné par
            <math|<op|\<leqslant\>>>

            <item><math|\<bbb-T\>> est un corps asymptotique (valué) pour
            <math|<op|\<preccurlyeq\>>>

            <item><math|\<bbb-T\>> est stable pour <math|\<partial\>> et
            <math|<value|I>><space|-1spc>, qui sont compatibles avec
            <math|<op|\<leqslant\>>> et <math|<op|\<preccurlyeq\>>>

            <item><math|\<bbb-T\>> est stable par <math|<op|\<circ\>>> et
            <math|<op|\<circ\>><rsup|\<um\>1>>, qui sont compatibles avec
            <math|<op|\<leqslant\>>>, <math|<op|\<preccurlyeq\>>> et
            <math|\<partial\>>

            <item><math|\<bbb-T\>> est réel clos

            <item><math|\<bbb-T\>> est différentiellement réel clos
          </itemize-minus>
        </folded-body>
      </folded>
    </fold-back>
  </hidden>|<\hidden>
    <tit|Exemples>

    <\fold-back>
      <\folded>
        <strong|Transséries réticulées>
      <|folded>
        <\small>
          <\session|mathemagix|default>
            <\input>
              <mmx-prompt|1>
            <|input>
              use "symbolix"; use "multimix";
            </input>

            <\input>
              <mmx-prompt|2>
            <|input>
              x == infinity ('x);
            </input>

            <\folded-io>
              <mmx-prompt|3>
            <|folded-io>
              1 / (x - 1)
            <|folded-io>
              <math|<frac|1|x>+<frac|1|x<rsup|2>>+<frac|1|x<rsup|3>>+<frac|1|x<rsup|4>>+O<left|(><frac|1|x<rsup|5>><right|)>>
            </folded-io>

            <\folded-io>
              <mmx-prompt|5>
            <|folded-io>
              exp x / (1 - x^(-1) - exp (-x))
            <|folded-io>
              <math|\<mathe\><rsup|x>+<frac|\<mathe\><rsup|x>|x>+<frac|\<mathe\><rsup|x>|x<rsup|2>>+<frac|\<mathe\><rsup|x>|x<rsup|3>>+O<left|(><frac|\<mathe\><rsup|x>|x<rsup|4>><right|)>+1+<frac|2|x>+<frac|3|x<rsup|2>>+O<left|(><frac|1|x<rsup|3>><right|)>+<frac|1|\<mathe\><rsup|x>>+<frac|3|x*\<mathe\><rsup|x>>+O<left|(><frac|1|x<rsup|2>*\<mathe\><rsup|x>><right|)>+<frac|1|\<mathe\><rsup|2*x>>+O<left|(><frac|1|x*\<mathe\><rsup|2*x>><right|)>>
            </folded-io>

            <\folded-io>
              <mmx-prompt|6>
            <|folded-io>
              integrate (exp (-x^2), x)
            <|folded-io>
              <math|<frac|-1|2*x*\<mathe\><rsup|x<rsup|2>>>+<frac|1|4*x<rsup|3>*\<mathe\><rsup|x<rsup|2>>>-<frac|3|8*x<rsup|5>*\<mathe\><rsup|x<rsup|2>>>+<frac|15|16*x<rsup|7>*\<mathe\><rsup|x<rsup|2>>>+O<left|(><frac|1|x<rsup|9>*\<mathe\><rsup|x<rsup|2>>><right|)>>
            </folded-io>

            <\folded-io>
              <mmx-prompt|7>
            <|folded-io>
              lengthen (product (x, x), 2)
            <|folded-io>
              <math|\<mathe\><rsup|x*log<left|(>x<right|)>-x-<frac|log<left|(>x<right|)>|2>>+<frac|\<mathe\><rsup|x*log<left|(>x<right|)>-x-<frac|log<left|(>x<right|)>|2>>|12*x>+<frac|\<mathe\><rsup|x*log<left|(>x<right|)>-x-<frac|log<left|(>x<right|)>|2>>|288*x<rsup|2>>+O<left|(><frac|\<mathe\><rsup|x*log<left|(>x<right|)>-x-<frac|log<left|(>x<right|)>|2>>|x<rsup|3>><right|)>>
            </folded-io>

            <\folded-io>
              <mmx-prompt|8>
            <|folded-io>
              integrate (x^x, x)
            <|folded-io>
              <math|<frac|sqrt<left|(>x<right|)>*\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)>>-<frac|sqrt<left|(>x<right|)>*\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)><rsup|2>>+<frac|sqrt<left|(>x<right|)>*\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)><rsup|3>>-<frac|sqrt<left|(>x<right|)>*\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)><rsup|4>>+O<left|(><frac|sqrt<left|(>x<right|)>*\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)><rsup|5>><right|)>+<frac|\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|sqrt<left|(>x<right|)>*log<left|(>x<right|)><rsup|3>>-<frac|3*\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|sqrt<left|(>x<right|)>*log<left|(>x<right|)><rsup|4>>+<frac|6*\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|sqrt<left|(>x<right|)>*log<left|(>x<right|)><rsup|5>>+O<left|(><frac|\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|sqrt<left|(>x<right|)>*log<left|(>x<right|)><rsup|6>><right|)>+<frac|\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)><rsup|4>*x<rsup|<frac|3|2>>>-<frac|\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)><rsup|5>*x<rsup|<frac|3|2>>>+O<left|(><frac|\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)><rsup|6>*x<rsup|<frac|3|2>>><right|)>+<frac|2*\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)><rsup|5>*x<rsup|<frac|5|2>>>+O<left|(><frac|\<mathe\><rsup|x*log<left|(>x<right|)>-<frac|log<left|(>x<right|)>|2>>|log<left|(>x<right|)><rsup|6>*x<rsup|<frac|7|2>>><right|)>>
            </folded-io>

            <\folded-io>
              <mmx-prompt|9>
            <|folded-io>
              product (log x, x)
            <|folded-io>
              <math|\<mathe\><rsup|x*log<left|(>log<left|(>x<right|)><right|)>-<frac|x|log<left|(>x<right|)>>-<frac|x|log<left|(>x<right|)><rsup|2>>-<frac|2*x|log<left|(>x<right|)><rsup|3>>+O<left|(><frac|x|log<left|(>x<right|)><rsup|4>><right|)>-<frac|log<left|(>log<left|(>x<right|)><right|)>|2>>+<frac|\<mathe\><rsup|x*log<left|(>log<left|(>x<right|)><right|)>-<frac|x|log<left|(>x<right|)>>-<frac|x|log<left|(>x<right|)><rsup|2>>-<frac|2*x|log<left|(>x<right|)><rsup|3>>+O<left|(><frac|x|log<left|(>x<right|)><rsup|4>><right|)>-<frac|log<left|(>log<left|(>x<right|)><right|)>|2>>|12*x*log<left|(>x<right|)>>+O<left|(><frac|\<mathe\><rsup|x*log<left|(>log<left|(>x<right|)><right|)>-<frac|x|log<left|(>x<right|)>>-<frac|x|log<left|(>x<right|)><rsup|2>>-<frac|2*x|log<left|(>x<right|)><rsup|3>>+O<left|(><frac|x|log<left|(>x<right|)><rsup|4>><right|)>-<frac|log<left|(>log<left|(>x<right|)><right|)>|2>>|x<rsup|2>*log<left|(>x<right|)><rsup|2>><right|)>>
            </folded-io>

            <\input>
              <mmx-prompt|10>
            <|input>
              \;
            </input>
          </session>
        </small>
      </folded>

      <\folded>
        <strong|Transséries à échelle finie>
      <|folded>
        <\small>
          <\session|mathemagix|default>
            <\folded-io>
              <mmx-prompt|10>
            <|folded-io>
              fixed_point_expander (f :-\<gtr\> x + f @ (x^(1/5)))
            <|folded-io>
              <math|x+x<rsup|<frac|1|5>>+x<rsup|<frac|1|25>>+x<rsup|<frac|1|125>>+O<left|(>x<rsup|<frac|1|625>><right|)>>
            </folded-io>

            <\input>
              <mmx-prompt|11>
            <|input>
              \;
            </input>
          </session>
        </small>
      </folded>

      <\folded>
        <strong|Transséries bien fondées>
      <|folded>
        <\small>
          <\session|mathemagix|default>
            <\folded-io>
              <mmx-prompt|11>
            <|folded-io>
              fixed_point_expander (f :-\<gtr\> 1/x + f @ (x^2) + f @ (exp
              ((log x)^2)))
            <|folded-io>
              <math|<frac|1|x>+<frac|1|x<rsup|2>>+<frac|1|x<rsup|4>>+<frac|1|x<rsup|8>>+O<left|(><frac|1|x<rsup|16>><right|)>+<frac|1|\<mathe\><rsup|log<left|(>x<right|)><rsup|2>>>+<frac|1|\<mathe\><rsup|2*log<left|(>x<right|)><rsup|2>>>+<frac|2|\<mathe\><rsup|4*log<left|(>x<right|)><rsup|2>>>+O<left|(><frac|1|\<mathe\><rsup|8*log<left|(>x<right|)><rsup|2>>><right|)>+<frac|1|\<mathe\><rsup|log<left|(>x<right|)><rsup|4>>>+<frac|1|\<mathe\><rsup|2*log<left|(>x<right|)><rsup|4>>>+O<left|(><frac|1|\<mathe\><rsup|4*log<left|(>x<right|)><rsup|4>>><right|)>+<frac|1|\<mathe\><rsup|log<left|(>x<right|)><rsup|8>>>+O<left|(><frac|1|\<mathe\><rsup|2*log<left|(>x<right|)><rsup|8>>><right|)>>
            </folded-io>

            <\folded-io>
              <mmx-prompt|12>
            <|folded-io>
              fixed_point_expander (f :-\<gtr\> x + f @ (log x))
            <|folded-io>
              <math|x+log<left|(>x<right|)>+log<left|(>log<left|(>x<right|)><right|)>+log<left|(>log<left|(>log<left|(>x<right|)><right|)><right|)>+O<left|(>log<left|(>log<left|(>log<left|(>log<left|(>x<right|)><right|)><right|)><right|)><right|)>>
            </folded-io>

            <\folded-io>
              <mmx-prompt|13>
            <|folded-io>
              fixed_point_expander (f :-\<gtr\> 1/x + f @ (exp x))
            <|folded-io>
              <math|<frac|1|x>+<frac|1|\<mathe\><rsup|x>>+<frac|1|\<mathe\><rsup|\<mathe\><rsup|x>>>+<frac|1|\<mathe\><rsup|\<mathe\><rsup|\<mathe\><rsup|x>>>>+O<left|(><frac|1|\<mathe\><rsup|\<mathe\><rsup|\<mathe\><rsup|\<mathe\><rsup|x>>>>><right|)>>
            </folded-io>

            <\folded-io>
              <mmx-prompt|14>
            <|folded-io>
              fixed_point_expander (f :-\<gtr\> 1/x + f @ (exp x + x))
            <|folded-io>
              <math|<frac|1|x>+<frac|1|\<mathe\><rsup|x>>-<frac|x|\<mathe\><rsup|2*x>>+<frac|x<rsup|2>|\<mathe\><rsup|3*x>>+O<left|(><frac|x<rsup|3>|\<mathe\><rsup|4*x>><right|)>+<frac|1|\<mathe\><rsup|\<mathe\><rsup|x>+x>>-<frac|1|\<mathe\><rsup|2*\<mathe\><rsup|x>+x>>-<frac|x|\<mathe\><rsup|2*\<mathe\><rsup|x>+2*x>>+O<left|(><frac|1|\<mathe\><rsup|3*\<mathe\><rsup|x>+x>><right|)>+<frac|1|\<mathe\><rsup|\<mathe\><rsup|\<mathe\><rsup|x>+x>+\<mathe\><rsup|x>+x>>+O<left|(><frac|1|\<mathe\><rsup|2*\<mathe\><rsup|\<mathe\><rsup|x>+x>+\<mathe\><rsup|x>+x>><right|)>>
            </folded-io>

            <\input>
              <mmx-prompt|15>
            <|input>
              \;
            </input>
          </session>
        </small>
      </folded>

      <\folded>
        <strong|Transséries imbriquées>
      <|folded>
        <\equation*>
          f=\<mathe\><rsup|<sqrt|x>+f(log
          x)>=\<mathe\><rsup|<sqrt|x>+\<mathe\><rsup|<sqrt|log
          x|>+\<mathe\><rsup|<sqrt|log log x|>+\<mathe\><rsup|<sqrt|log log
          log x|>+\<mathe\><rsup|\<udots\>>>>>>
        </equation*>
      </folded>
    </fold-back>

    <\folded>
      <strong|Transséries de forces supérieures>
    <|folded>
      <\eqnarray*>
        <tformat|<table|<row|<cell|exp<rsub|\<omega\>>(x+1)>|<cell|=>|<cell|\<mathe\><rsup|exp<rsub|\<omega\>>(x)>>>|<row|<cell|exp<rsub|\<omega\><rsup|2>>(x+1)>|<cell|=>|<cell|\<mathe\>xp<rsub|\<omega\>>(exp<rsub|\<omega\><rsup|2>>(x))>>|<row|<cell|>|<cell|\<vdots\>>|<cell|>>>>
      </eqnarray*>
    </folded>
  </hidden>|<\hidden>
    <tit|Équations algébriques asymptotiques>

    \;

    \;

    <switch|<\shown>
      <tabular*|<tformat|<twith|table-width|1par>|<twith|table-hmode|exact>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-rborder|1ln>|<cwith|1|-1|1|1|cell-width|0.5par>|<cwith|1|-1|1|1|cell-hmode|exact>|<cwith|1|-1|2|2|cell-width|0.5par>|<cwith|1|-1|2|2|cell-hmode|exact>|<cwith|1|-1|1|-1|cell-lsep|1spc>|<cwith|1|-1|1|-1|cell-rsep|1spc>|<cwith|1|-1|1|-1|cell-bsep|1spc>|<cwith|1|-1|1|-1|cell-tsep|1spc>|<table|<row|<cell|Algèbre>|<cell|Algèbre
      asymptotique>>|<row|<cell|<tiny-switch|<shown|>|<hidden|<math|P(f)=0>>>>|<cell|<tiny-switch|<shown|>|<hidden|<math|P(f)=0,<space|1em>(f\<prec\>\<frak-v\>)>>>>>|<row|<cell|<tiny-switch|<shown|>|<hidden|<math|deg
      P>>>>|<cell|<tiny-switch|<shown|>|<hidden|<math|deg<rsub|\<prec\>\<frak-v\>>
      P>>>>>|<row|<cell|<tiny-switch|<shown|>|<hidden|<math|\<mu\><rsub|P>(f)=val
      P<rsub|+f>>>>>|<cell|<tiny-switch|<shown|>|<hidden|<math|\<mu\><rsub|P,\<prec\>\<frak-v\>>(f)=val<rsub|\<prec\>\<frak-v\>>
      P<rsub|+f>>>|<hidden|<math|\<mu\><rsub|P,\<prec\>\<frak-v\>>(f)=deg<rsub|\<prec\>\<frak-v\>>
      P<rsub|+f>>>>>>>>>

      \;

      \;

      \;

      <\with|par-mode|center>
        <tiny-switch|<shown|>|<hidden|<anim-translate|<with|gr-mode|<tuple|edit|text-at>|gr-frame|<tuple|scale|1cm|<tuple|45415tmpt|44181tmpt>>|gr-geometry|<tuple|geometry|6.666cm|5cm|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|4|none>>|gr-edit-grid|<tuple|cartesian|<tuple|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<tuple|0|0>|1>|gr-grid-aspect|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-grid-aspect-props|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-fill-color|default|gr-color|blue|gr-line-width|2ln|gr-text-at-halign|center|gr-text-at-valign|center|<graphics|<with|fill-color|pastel
        blue|<cline|<point|0|5.5>|<point|0|3>|<point|1|1>|<point|2|0>|<point|3|0>|<point|5|1>|<point|5|5.5>>>|<with|fill-color|pastel
        blue|<point|0|5.5>>|<with|fill-color|pastel
        blue|<point|0|3>>|<with|fill-color|pastel
        blue|<point|1|1>>|<with|fill-color|pastel
        blue|<point|2|2>>|<with|fill-color|pastel
        blue|<point|2|0>>|<with|fill-color|pastel
        blue|<point|3|0>>|<with|fill-color|pastel
        blue|<point|5|1>>|<with|fill-color|pastel
        blue|<point|4|2>>|<with|fill-color|pastel
        blue|<point|5|3>>|<with|fill-color|pastel
        blue|<point|2|4>>|<with|color|red|line-width|2ln|<line|<point|-1|1.5>|<point|4|-1>>>|<with|color|blue|line-width|2ln|<line|<point|0|3>|<point|1|1>|<point|2|0>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F>|<point|1|-0.25>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F<rsup|2>>|<point|2|-0.25>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F<rsup|3>>|<point|3|-0.25>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F<rsup|4>>|<point|4|-0.25>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F<rsup|5>>|<point|5|-0.25>>>|<with|text-at-halign|right|text-at-valign|center|<text-at|<with|mode|math|z>|<point|-0.25|1>>>|<with|text-at-halign|right|text-at-valign|center|<text-at|<with|mode|math|z<rsup|2>>|<point|-0.25|2>>>|<with|text-at-halign|right|text-at-valign|center|<text-at|<with|mode|math|z<rsup|3>>|<point|-0.25|3>>>|<with|text-at-halign|right|text-at-valign|center|<text-at|<with|mode|math|1>|<point|-0.25|0>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|1>|<point|0|-0.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|3>|<point|0.25|3.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|6>|<point|1.25|1.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|7>|<point|2.25|0.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|8>|<point|2.25|2.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|\<um\>1>|<point|4.25|2.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|2>|<point|2.75|0.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|1>|<point|4.75|1.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|4|<point|4.75|3.25>>>>>|1sec|<tuple|0.0|1.0>|>>>
      </with>

      \;
    </shown>>
  </hidden>|<\hidden>
    <tit|Polynômes de Newton>

    \;

    \;

    <\with|par-mode|center>
      <anim-progressive|<with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|54401tmpt|44181tmpt>>|gr-geometry|<tuple|geometry|0.451971par|0.313165par|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|4|none>>|gr-edit-grid|<tuple|cartesian|<tuple|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<tuple|0|0>|1>|gr-grid-aspect|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-grid-aspect-props|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-fill-color|default|gr-color|red|gr-line-width|2ln|gr-text-at-halign|center|gr-text-at-valign|center|gr-as-visual-grid|on|<graphics|<with|fill-color|pastel
      blue|<cline|<point|0|5.5>|<point|0|3>|<point|1|1>|<point|2|0>|<point|3|0>|<point|5|1>|<point|5|5.5>>>|<with|fill-color|pastel
      blue|<point|0|5.5>>|<with|fill-color|pastel
      blue|<point|0|3>>|<with|fill-color|pastel
      blue|<point|1|1>>|<with|fill-color|pastel
      blue|<point|2|2>>|<with|color|red|line-width|2ln|<line|<point|1|0>|<point|4|0>>>|<with|fill-color|pastel
      blue|<point|2|0>>|<with|fill-color|pastel
      blue|<point|3|0>>|<with|fill-color|pastel
      blue|<point|5|1>>|<with|fill-color|pastel
      blue|<point|4|2>>|<with|fill-color|pastel
      blue|<point|5|3>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F>|<point|1|-0.25>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F<rsup|2>>|<point|2|-0.25>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F<rsup|3>>|<point|3|-0.25>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F<rsup|4>>|<point|4|-0.25>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|F<rsup|5>>|<point|5|-0.25>>>|<with|text-at-halign|right|text-at-valign|center|<text-at|<with|mode|math|z>|<point|-0.25|1>>>|<with|text-at-halign|right|text-at-valign|center|<text-at|<with|mode|math|z<rsup|2>>|<point|-0.25|2>>>|<with|text-at-halign|right|text-at-valign|center|<text-at|<with|mode|math|z<rsup|3>>|<point|-0.25|3>>>|<with|text-at-halign|right|text-at-valign|center|<text-at|<with|mode|math|1>|<point|-0.25|0>>>|<with|text-at-halign|center|text-at-valign|top|<text-at|<with|mode|math|1>|<point|0|-0.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|3>|<point|0.25|3.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|6>|<point|1.25|1.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|7>|<point|2.25|0.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|8>|<point|2.25|2.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|\<um\>1>|<point|4.25|2.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|2>|<point|2.75|0.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|<with|mode|math|1>|<point|4.75|1.25>>>|<with|text-at-halign|center|text-at-valign|center|<text-at|4|<point|4.75|3.25>>>>>|1sec|<tuple|0.5|0.5|0.5|0.5>|>

      \;

      \;

      <anim-progressive|<math|N<rsub|P>=2*F<rsup|3>+7*F<rsup|2>>|2sec|<tuple|0.0|0.0|0.0|1.0>|>

      \;

      <math|P(f)=0> admet une solution <math|f=c*\<frak-m\>+\<cdots\>>
      <math|<with|color|blue|\<Longleftrightarrow\>>>
      <math|N<rsub|P<rsub|\<times\>\<frak-m\>>>(c)=0>
    </with>
  </hidden>|<\hidden>
    <tit|Degré de Newton>

    \;

    <\eqnarray*>
      <tformat|<cwith|5|7|1|1|cell-halign|r>|<cwith|5|7|2|2|cell-halign|c>|<table|<row|<cell|deg<rsub|\<preccurlyeq\>\<frak-v\>>
      P>|<cell|=>|<cell|deg N<rsub|P<rsub|\<times\>\<frak-v\>>>>>|<row|<cell|deg<rsub|\<prec\>\<frak-v\>>
      P>|<cell|=>|<cell|val N<rsub|P<rsub|\<times\>\<frak-v\>>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|deg<rsub|\<prec\>\<frak-w\>>
      P>|<cell|\<leqslant\>>|<cell|deg<rsub|\<prec\>\<frak-v\>>
      P,<space|2em>\<frak-w\>\<prec\>\<frak-v\>>>|<row|<cell|deg<rsub|\<prec\>\<frak-v\>>
      P<rsub|+\<varphi\>>>|<cell|=>|<cell|deg<rsub|\<prec\>\<frak-v\>>
      P,<space|2em>\<varphi\>\<prec\>\<frak-v\>>>|<row|<cell|deg<rsub|\<prec\>\<frak-v\>>
      P<rsub|\<times\>\<frak-w\>>>|<cell|=>|<cell|deg<rsub|\<prec\>\<frak-v\>*\<frak-w\>>
      P>>|<row|<cell|deg<rsub|\<prec\>\<frak-v\>>
      (P*Q)>|<cell|=>|<cell|deg<rsub|\<prec\>\<frak-v\>> P
      +deg<rsub|\<prec\>\<frak-v\>> Q>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|deg<rsub|\<prec\>\<varphi\>>
      P<rsub|+\<varphi\>>>|<cell|=>|<cell|\<mu\>(c<rsub|\<varphi\>>;N<rsub|P<rsub|\<times\>\<frak-d\><rsub|\<varphi\>>>>)>>|<row|<cell|\<mu\><rsub|\<prec\>\<frak-v\>>(f;P)>|<cell|=>|<cell|deg<rsub|\<prec\>\<frak-v\>>
      P<rsub|+f>>>>>
    </eqnarray*>
  </hidden>|<\hidden>
    <tit|Algorithme de résolution>

    <switch|<\shown>
      <\enumerate>
        <item> <math|deg<rsub|\<prec\>\<frak-v\>> P=d\<gtr\>0>

        \ <greyed|(<math|P=A<rsub|+g>> et <math|g> racine de <math|A> modulo
        <math|\<prec\>\<frak-v\>>)>

        <item> Si <math|d=1>, retourner unique solution

        <item> Déterminer monôme débuteur <math|\<frak-w\>\<prec\>\<frak-v\>>

        <item> Résoudre <math|N<rsub|P<rsub|\<times\>\<frak-w\>>>(c)=0> et
        affecter <math|\<varphi\>\<assign\>c*\<frak-w\>>

        <item> Raffiner <math|f=\<varphi\>+<wide|f|~>,<wide|f|~>\<prec\>\<frak-w\>>
        <with|mode|math|\<longrightarrow\>>
        <math|0\<less\>deg<rsub|\<prec\>\<frak-w\>> <wide|P|~>\<leqslant\>d>
        avec <math|<wide|P|~>=P<rsub|+\<varphi\>>>

        \ <greyed|(<math|<wide|P|~>=A<rsub|+g+\<varphi\>>> et
        <math|g+\<varphi\>> racine de <math|A> modulo
        <math|\<prec\>\<frak-w\>>)>

        <item> Retourner à l'étape 1
      </enumerate>
    </shown>|<\hidden>
      <\enumerate>
        <item> <with|mode|math|deg<rsub|\<prec\>\<frak-v\>> P=d\<gtr\>0>

        \ <greyed|(<math|P=A<rsub|+g>> et <math|g> racine de <math|A> modulo
        <math|\<prec\>\<frak-v\>>)>

        <item> Si <math|d=1>, retourner unique solution

        <item> Déterminer monôme débuteur <math|\<frak-w\>\<prec\>\<frak-v\>>

        <item> Résoudre <math|N<rsub|P<rsub|\<times\>\<frak-w\>>>(c)=0> et
        affecter <math|\<varphi\>\<assign\>c*\<frak-w\>>

        <switch|<\shown>
          <with|color|red|<with|mode|math|
          <left|(>f-<frac|1|1-z><right|)><rsup|2>=<tiny-switch|<shown|z<rsup|10000>>|<hidden|\<um\>z<rsup|10000>>|<hidden|z<rsup|\<lambda\>>>>>>
        </shown>|<\hidden>
          \ <with|color|red|Si <with|mode|math|\<mu\><rsub|N<rsub|P<rsub|\<times\>>>>(c)=d>,
          alors <with|mode|math|\<varphi\>\<assign\>>solution unique de
          <with|mode|math|<frac|\<partial\><rsup|d-1> P|\<partial\>
          F<rsup|d-1>>(\<varphi\>)=0,\<varphi\>\<prec\>\<frak-v\>>>
        </hidden>>

        <item> Raffiner <math|f=\<varphi\>+<wide|f|~>,<wide|f|~>\<prec\>\<frak-w\>>
        <with|mode|math|\<longrightarrow\>>
        <math|0\<less\>deg<rsub|\<prec\>\<frak-w\>> <wide|P|~>\<leqslant\>d>
        avec <math|<wide|P|~>=P<rsub|+\<varphi\>>>

        \ <greyed|(<math|<wide|P|~>=A<rsub|+g+\<varphi\>>> et
        <math|g+\<varphi\>> racine de <math|A> modulo
        <math|\<prec\>\<frak-w\>>)>

        <item> Retourner à l'étape 1
      </enumerate>
    </hidden>>
  </hidden>|<\hidden>
    <tit|Polygones de Newton différentiels>

    \;

    <unroll|<\shown>
      <\equation*>
        P(f)=p(f,f<rprime|'>,\<ldots\>,f<rsup|(r)>)=0,<space|1em>f\<prec\>\<frak-v\>
      </equation*>
    </shown>|<\hidden>
      <switch|<\shown>
        \;

        <\with|par-mode|center>
          Pentes ne se lisent pas directement à partir du \S polygone de
          Newton \T
        </with>

        \;

        \;

        <\with|par-mode|center>
          <anim-translate|<with|gr-mode|<tuple|edit|spline>|gr-frame|<tuple|scale|1cm|<tuple|45415tmpt|44181tmpt>>|gr-geometry|<tuple|geometry|6.666cm|5cm|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|4|none>>|gr-edit-grid|<tuple|empty>|gr-edit-grid-old|<tuple|cartesian|<tuple|0|0>|1>|gr-grid-aspect|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-grid-aspect-props|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-fill-color|#8080FF|gr-color|blue|gr-line-width|default|gr-as-visual-grid|off|<graphics|<with|fill-color|pastel
          blue|<cline|<point|0|5.5>|<point|0|3>|<point|1|1>|<point|2|0>|<point|3|0>|<point|5|1>|<point|5|5.5>>>|<with|color|blue|fill-color|#8080FF|<cspline|<point|5.06123|1.17952>|<point|5.25|1>|<point|5|0.75>|<point|4.87073|1.01019>|<point|4.59556|0.946686>|<point|4.8284|1.32769>>>|<with|fill-color|pastel
          blue|<point|0|5.5>>|<with|fill-color|pastel
          blue|<point|0|3>>|<with|fill-color|pastel
          blue|<point|1|1>>|<with|fill-color|pastel
          blue|<point|2|2>>|<with|color|blue|fill-color|#8080FF|<cspline|<point|2.16137|0.1211788>|<point|2.35014|-0.0583412>|<point|2.10014|-0.3083412>|<point|1.97087|-0.0481512>|<point|1.6957|-0.1116552>|<point|1.92854|0.2693488>>>|<with|fill-color|pastel
          blue|<point|2|0>>|<with|fill-color|pastel
          blue|<point|3|0>>|<with|fill-color|pastel
          blue|<point|5|1>>|<with|fill-color|pastel
          blue|<point|4|2>>|<with|fill-color|pastel
          blue|<point|5|3>>|<with|fill-color|pastel
          blue|<point|2|4>>|<with|color|red|line-width|2ln|<line|<point|-1|1.5>|<point|4|-1>>>|<with|color|blue|line-width|2ln|<line|<point|0|3>|<point|1|1>|<point|2|0>>>>>|0.5sec|<tuple|0.0|1.0>|>
        </with>

        \;

        <\equation*>
          P=P<rsub|0>+\<cdots\>+P<rsub|d>
        </equation*>

        <\equation*>
          P<rsub|2>=(F<rprime|'>)<rsup|2>-F*F<rprime|''>+\<cdots\>
        </equation*>
      </shown>>
    </hidden>>
  </hidden>|<\hidden>
    <tit|Ascensions>

    \;

    <with|mode|math|P\<uparrow\>> unique polynôme différentiel avec

    <\equation*>
      (P\<uparrow\>)(f\<circ\>\<mathe\><rsup|x>)=P(f)\<circ\>\<mathe\><rsup|x>
    </equation*>

    Par exemple :

    <switch|<\shown>
      <\eqnarray*>
        <tformat|<cwith|1|-1|3|3|cell-bsep|1spc>|<table|<row|<cell|F<rprime|'>\<uparrow\>>|<cell|=>|<cell|<frac|F<rprime|'>|\<mathe\><rsup|x>>>>|<row|<cell|F<rprime|''>\<uparrow\>>|<cell|=>|<cell|<frac|F<rprime|''>-F<rprime|'>|\<mathe\><rsup|2*x>>>>|<row|<cell|F<rprime|'''>\<uparrow\>>|<cell|=>|<cell|<frac|F<rprime|'''>-3*F<rprime|''>+2*F<rprime|'>|\<mathe\><rsup|3*x>>>>|<row|<cell|>|<cell|\<vdots\>>|<cell|>>>>
      </eqnarray*>
    </shown>|<\hidden>
      <\eqnarray*>
        <tformat|<cwith|1|-1|3|3|cell-bsep|1spc>|<table|<row|<cell|P>|<cell|=>|<cell|(F<rprime|'>)<rsup|2>-F*F<rprime|''>>>|<row|<cell|P\<uparrow\>>|<cell|=>|<cell|<frac|(F<rprime|'>)<rsup|2>-F*F<rprime|''>+F*F<rprime|'>|\<mathe\><rsup|2*x>>>>|<row|<cell|P\<uparrow\>\<uparrow\>>|<cell|=>|<cell|<frac|F*F<rprime|'>|\<mathe\><rsup|x>*\<mathe\><rsup|2*\<mathe\><rsup|x>>>+<frac|(F<rprime|'>)<rsup|2>-F*F<rprime|''>+F*F<rprime|'>|\<mathe\><rsup|2*x>*\<mathe\><rsup|2*\<mathe\><rsup|x>>>>>|<row|<cell|>|<cell|\<vdots\>>|<cell|>>|<row|<cell|N<rsub|P>>|<cell|=>|<cell|F*F<rprime|'>>>>>
      </eqnarray*>
    </hidden>>

    <switch|<\shown>
      \;
    </shown>|<\hidden>
      Conséquence :

      <\equation*>
        1\<prec\>log \<ell\>\<prec\>log x<space|1.2spc>\<Longrightarrow\><space|1.2spc>P(\<ell\>)\<sim\><frac|\<ell\>*\<ell\><rprime|'>|x>
      </equation*>
    </hidden>>
  </hidden>|<\hidden>
    <tit|Polynômes de Newton différentiels>

    \;

    <\pine>
      <\theorem*>
        Il existe un unique <math|N<rsub|P>\<in\>\<bbb-R\>{F}>, tel que

        <\equation*>
          c<rsub|P\<uparrow\><rsub|l>>=N<rsub|P>
        </equation*>

        pour tout <with|mode|math|l> suffisamment grand, et

        <\equation*>
          N<rsub|P>\<in\>\<bbb-R\>[F]*(F<rprime|'>)<rsup|\<bbb-N\>>.
        </equation*>
      </theorem*>
    </pine>

    \;

    <\pine>
      <\definition*>
        <math|\<frak-m\>\<prec\>\<frak-v\>> est un monôme débuteur
        <with|mode|math|\<Longleftrightarrow\>>
        <math|N<rsub|P<rsub|\<times\>\<frak-m\>>>\<nin\>\<bbb-R\>*F<rsup|\<bbb-N\>>>
      </definition*>
    </pine>
  </hidden>|<\hidden>
    <tit|Monômes débuteurs>

    <switch|<\shown>
      \;

      <\pine>
        <\lemma*>
          Pour <math|i\<less\>j> avec <math|P<rsub|i>\<neq\>0>,
          <math|P<rsub|j>\<neq\>0>, il existe un unique
          <math|(i,j)>-égalisateur <math|<group|\<frak-e\>\<in\>\<frak-T\>>>
          tel que <math|N<rsub|(P<rsub|i>+P<rsub|j>)<rsub|\<times\>\<frak-e\>>>>
          ne soit pas homogène.
        </lemma*>
      </pine>

      \;

      \;

      \;

      <\with|par-mode|center>
        <anim-progressive|<with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|45415tmpt|44181tmpt>>|gr-geometry|<tuple|geometry|6.666cm|5cm|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|4|none>>|gr-edit-grid|<tuple|cartesian|<tuple|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<tuple|0|0>|1>|gr-grid-aspect|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-grid-aspect-props|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-fill-color|default|gr-color|red|gr-line-width|2ln|gr-as-visual-grid|on|<graphics|<with|fill-color|pastel
        blue|<cline|<point|0|5.5>|<point|0|3>|<point|1|1>|<point|2|0>|<point|3|0>|<point|5|1>|<point|5|5.5>>>|<with|color|blue|fill-color|#8080FF|<cspline|<point|5.06123|1.17952>|<point|5.25|1>|<point|5|0.75>|<point|4.87073|1.01019>|<point|4.59556|0.946686>|<point|4.8284|1.32769>>>|<with|fill-color|pastel
        blue|<point|0|5.5>>|<with|fill-color|pastel
        blue|<point|0|3>>|<with|color|blue|fill-color|#8080FF|<cspline|<point|2.16137|0.1211788>|<point|2.35014|-0.0583412>|<point|2.10014|-0.3083412>|<point|1.97087|-0.0481512>|<point|1.6957|-0.1116552>|<point|1.92854|0.2693488>>>|<with|color|red|line-width|2ln|<line|<point|1|1>|<point|2|0>>>|<with|fill-color|pastel
        blue|<point|1|1>>|<with|fill-color|pastel
        blue|<point|2|2>>|<with|fill-color|pastel
        blue|<point|2|0>>|<with|fill-color|pastel
        blue|<point|3|0>>|<with|fill-color|pastel
        blue|<point|5|1>>|<with|fill-color|pastel
        blue|<point|4|2>>|<with|fill-color|pastel
        blue|<point|5|3>>|<with|fill-color|pastel
        blue|<point|2|4>>>>|0.5sec|<tuple|0.0|1.0|1.0|1.0>|>
      </with>

      \;
    </shown>|<\hidden>
      \;

      \;

      <\eqnarray*>
        <tformat|<table|<row|<cell|P>|<cell|=>|<cell|\<mathe\><rsup|\<um\>\<mathe\><rsup|x>>*F+(F<rprime|'>)<rsup|2>>>|<row|<cell|P<rsub|\<times\>\<mathe\><rsup|\<um\>\<mathe\><rsup|x>>>>|<cell|=>|<cell|\<mathe\><rsup|\<um\>2*\<mathe\><rsup|x>>*(F+(\<mathe\><rsup|x>*F-F<rprime|'>)<rsup|2>)>>|<row|<cell|P<rsub|\<times\>\<mathe\><rsup|2*x>*\<mathe\><rsup|\<um\>\<mathe\><rsup|x>>>>|<cell|=>|<cell|\<mathe\><rsup|4*x-2*\<mathe\><rsup|x>>*(F+(F-(F<rprime|'>+2*F)*\<mathe\><rsup|\<um\>x>)<rsup|2>)>>|<row|<cell|N<rsub|P<rsub|\<times\>\<mathe\><rsup|2*x>*\<mathe\><rsup|\<um\>\<mathe\><rsup|x>>>>>|<cell|=>|<cell|F+F<rsup|2>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|f>|<cell|=>|<cell|\<um\>\<mathe\><rsup|\<um\>\<mathe\><rsup|x>+2*x>+\<cdots\>>>>>
      </eqnarray*>
    </hidden>|<\hidden>
      \;

      <\pine>
        <\lemma*>
          Pour <math|i> avec <math|P<rsub|i>\<neq\>0>, on a

          <\equation*>
            <tabular*|<tformat|<table|<row|<cell|\<frak-m\><with|mode|text|<with|color|black|
            est un monôme débuteur pour >>P<rsub|i>(f)=0>>|<row|<cell|\<Longupdownarrow\>>>|<row|<cell|\<frak-m\><rprime|\<dag\>>=<frac|\<frak-m\><rprime|'>|\<frak-m\>><with|mode|text|<with|color|black|
            est une solution de >>R<rsub|P<rsub|i>>(g)=0<with|mode|text|<with|color|black|
            modulo >><frac|1|x*log x*log<rsub|2> x*\<cdots\>>>>>>>
          </equation*>
        </lemma*>
      </pine>

      \;

      \;

      \;

      <\with|par-mode|center>
        <anim-progressive|<with|gr-mode|<tuple|edit|line>|gr-frame|<tuple|scale|1cm|<tuple|45415tmpt|44181tmpt>>|gr-geometry|<tuple|geometry|6.666cm|5cm|center>|gr-grid|<tuple|cartesian|<point|0|0>|1>|gr-grid-old|<tuple|cartesian|<point|0|0>|1>|gr-edit-grid-aspect|<tuple|<tuple|axes|none>|<tuple|1|none>|<tuple|4|none>>|gr-edit-grid|<tuple|cartesian|<tuple|0|0>|1>|gr-edit-grid-old|<tuple|cartesian|<tuple|0|0>|1>|gr-grid-aspect|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-grid-aspect-props|<tuple|<tuple|axes|#808080>|<tuple|1|#c0c0c0>|<tuple|4|#e0e0ff>>|gr-fill-color|default|gr-color|red|gr-line-width|2ln|gr-as-visual-grid|on|<graphics|<with|fill-color|pastel
        blue|<cline|<point|0|5.5>|<point|0|3>|<point|1|1>|<point|2|0>|<point|3|0>|<point|5|1>|<point|5|5.5>>>|<with|color|blue|fill-color|#8080FF|<cspline|<point|5.06123|1.17952>|<point|5.25|1>|<point|5|0.75>|<point|4.87073|1.01019>|<point|4.59556|0.946686>|<point|4.8284|1.32769>>>|<with|fill-color|pastel
        blue|<point|0|5.5>>|<with|fill-color|pastel
        blue|<point|0|3>>|<with|color|blue|fill-color|#8080FF|<cspline|<point|2.16137|0.1211788>|<point|2.35014|-0.0583412>|<point|2.10014|-0.3083412>|<point|1.97087|-0.0481512>|<point|1.6957|-0.1116552>|<point|1.92854|0.2693488>>>|<with|color|red|line-width|2ln|<line|<point|0|1>|<point|3|-0.5>>>|<with|fill-color|pastel
        blue|<point|1|1>>|<with|fill-color|pastel
        blue|<point|2|2>>|<with|fill-color|pastel
        blue|<point|2|0>>|<with|fill-color|pastel
        blue|<point|3|0>>|<with|fill-color|pastel
        blue|<point|5|1>>|<with|fill-color|pastel
        blue|<point|4|2>>|<with|fill-color|pastel
        blue|<point|5|3>>|<with|fill-color|pastel
        blue|<point|2|4>>>>|1sec|<tuple|0.5|0.5|0.5|0.5>|>
      </with>

      \;
    </hidden>|<\hidden>
      \;

      \;

      <\eqnarray*>
        <tformat|<table|<row|<cell|P>|<cell|=>|<cell|(F<rprime|'>)<rsup|2>-F*F<rprime|''>>>|<row|<cell|>|<cell|=>|<cell|[(F<rprime|\<dag\>>)<rsup|2>-((F<rprime|\<dag\>>)<rsup|2>+(F<rprime|\<dag\>>)<rprime|'>)]*F<rsup|2>>>|<row|<cell|>|<cell|=>|<cell|-(F<rprime|\<dag\>>)<rprime|'>*F<rsup|2>>>|<row|<cell|>|<cell|=>|<cell|R<rsub|P>(F<rprime|\<dag\>>)*F<rsup|2>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|deg<rsub|\<prec\>1/(x*log
        x*\<cdots\>)> (F<rprime|'>)<rsub|+\<lambda\>*>>|<cell|\<gtr\>>|<cell|0<space|2em>(\<forall\>\<lambda\>\<in\>\<bbb-R\>)>>|<row|<cell|N<rsub|P<rsub|\<times\>\<mathe\><rsup|<big|int>\<lambda\><big|.>>>>=N<rsub|P<rsub|\<times\>\<mathe\><rsup|\<lambda\>*x>>>>|<cell|\<nin\>>|<cell|\<bbb-R\>*F<rsup|\<bbb-N\>>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|f>|<cell|=>|<cell|c*\<mathe\><rsup|\<lambda\>*x>+\<cdots\>>>>>
      </eqnarray*>
    </hidden>>
  </hidden>|<\hidden>
    <tit|Suite de la résolution>

    \;

    <\pine>
      <\lemma*>
        <math|deg<rsub|\<prec\>\<frak-v\>> P=1>
        <with|mode|math|\<Longrightarrow\>>
        <math|P(f)=0,f\<preccurlyeq\>\<frak-v\>> admet au moins une solution.
      </lemma*>
    </pine>

    <\warning*>
      Problème avec des solutions presque multiples

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<rsup|2>-2*f<rprime|'>+<frac|1|x<rsup|2>>+\<cdots\>+<frac|1|(x*log
        x*\<cdots\>*log<rsub|l> x)<rsup|2>>>|<cell|=>|<cell|0,<space|1em>(f\<prec\>1)>>|<row|<cell|f<rsup|2>-2*\<mathe\><rsup|\<um\>x>*f<rprime|'>+<frac|1|\<mathe\><rsup|2*x>>+\<cdots\>+<frac|1|(\<mathe\><rsup|x>*x*\<cdots\>*log<rsub|l-1>
        x)<rsup|2>>>|<cell|=>|<cell|0,<space|1em>(f\<prec\>1)>>|<row|<cell|<with|color|red|f<rsup|2>>-2*f<rprime|'>-<with|color|red|2*f>+<with|color|red|1>+<frac|1|x<rsup|2>>+\<cdots\>+<frac|1|(x*log
        x*\<cdots\>*log<rsub|l-1> x)<rsup|2>>>|<cell|=>|<cell|0,<space|1em>(f\<prec\>1)>>|<row|<cell|f<rsup|2>-2*f<rprime|'>+<frac|1|x<rsup|2>>+\<cdots\>+<frac|1|(x*log
        x*\<cdots\>*log<rsub|l-1> x)<rsup|2>>>|<cell|=>|<cell|0<phantom|,><space|1em>(f\<prec\>1)>>>>
      </eqnarray*>
    </warning*>

    <\pine>
      <\lemma*>
        Le \S processus de dénouement \T est fini.
      </lemma*>
    </pine>
  </hidden>|<\hidden>
    <tit|Résultats>

    \;

    <unroll|<\shown>
      <switch|<\shown>
        <\granite>
          <\theorem*>
            Il existe un algorithme théorique pour trouver toutes les
            solutions à une équation différentielle asymptotique algébrique.
          </theorem*>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <\theorem*>
            Il existe un algorithme théorique pour trouver toutes les
            solutions à une équation différentielle asymptotique algébrique.
          </theorem*>
        </pine>
      </hidden>>
    </shown>|<\hidden>
      <switch|<\shown>
        <\granite>
          <\theorem*>
            Toute solution transsérielle d'une équation différentielle
            algébrique à coefficients réticulés est à nouveau réticulée.
          </theorem*>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <\theorem*>
            Toute solution transsérielle d'une équation différentielle
            algébrique à coefficients réticulés est à nouveau réticulée.
          </theorem*>
        </pine>
      </hidden>>

      <\pine>
        <\corollary*>
          <math|\<zeta\>(x)> et <math|f(x)=<frac|1|x>+<frac|1|\<mathe\><rsup|log<rsup|2>
          x>>+<frac|1|\<mathe\><rsup|log<rsup|4> x>>+\<cdots\>> sont
          différentiellement transcendants sur <math|\<bbb-R\>>.
        </corollary*>
      </pine>

      \;
    </hidden>|<\hidden>
      <switch|<\shown>
        <\granite>
          <\theorem*>
            Soient <math|P\<in\>\<bbb-T\>{F}> et
            <math|f\<less\>g\<in\>\<bbb-T\>> avec <math|P(f)*P(g)\<less\>0>.
            Alors il existe un <math|h\<in\>\<bbb-T\>> avec
            <math|f\<less\>h\<less\>g> et <math|P(h)=0>.
          </theorem*>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <\theorem*>
            Soient <math|P\<in\>\<bbb-T\>{F}> et
            <math|f\<less\>g\<in\>\<bbb-T\>> avec <math|P(f)*P(g)\<less\>0>.
            Alors il existe un <math|h\<in\>\<bbb-T\>> avec
            <math|f\<less\>h\<less\>g> et <math|P(h)=0>.
          </theorem*>
        </pine>
      </hidden>>

      \;

      <\pine>
        <\corollary*>
          Tout <math|P\<in\>\<bbb-T\>{F}> de degré impair admet une racine
          dans <math|\<bbb-T\>>.
        </corollary*>
      </pine>

      <\pine>
        <\corollary*>
          Tout <math|L\<in\>\<bbb-T\>[\<partial\>]> monique se factorise en
          facteurs de la forme

          <\equation*>
            \<partial\>-a<with|mode|text| \ ou
            \ >\<partial\><rsup|2>-<left|(>2*a+b<rprime|\<dag\>><right|)>*\<partial\>+<left|(>a<rsup|2>+b<rsup|2>-a<rprime|'>+a*b<rprime|\<dag\>><right|)>.
          </equation*>
        </corollary*>
      </pine>
    </hidden>>
  </hidden>|<\hidden>
    <tit|Généralisations>

    \;

    <unroll|<\shown>
      <switch|<\shown>
        <\granite>
          <\render-theorem|Construction>
            <math|\<exists\>> corps <math|\<bbb-T\><rsup|cx>> de transséries
            complexes réticulées.

            La construction fait intervenir une infinité de choix comme

            <\eqnarray*>
              <tformat|<table|<row|<cell|z>|<cell|\<prec\>\<succ\>>|<cell|1>>|<row|<cell|\<mathe\><rsup|\<mathi\>*z>>|<cell|\<prec\>\<succ\>>|<cell|1>>|<row|<cell|\<mathe\><rsup|z*\<mathe\><rsup|\<mathi\>*z>>>|<cell|\<prec\>*\<succ\>>|<cell|1>>>>
            </eqnarray*>

            La construction en tant que \S corps fort \T est unique.
          </render-theorem>
        </granite>
      </shown>|<\hidden>
        <switch|<\shown>
          <\granite>
            <\theorem*>
              Tout équation différentielle asymptotique
              <math|P(f)=0,f\<prec\>\<frak-v\>> sur <math|\<bbb-T\><rsup|cx>>
              admet au moins <math|deg<rsub|\<prec\>\<frak-v\>> P> solutions
              dans <math|\<bbb-T\><rsup|cx>>.
            </theorem*>
          </granite>
        </shown>|<\hidden>
          <\pine>
            <\theorem*>
              Tout équation différentielle asymptotique
              <math|P(f)=0,f\<prec\>\<frak-v\>> sur <math|\<bbb-T\><rsup|cx>>
              admet au moins <math|deg<rsub|\<prec\>\<frak-v\>> P> solutions
              dans <math|\<bbb-T\><rsup|cx>>.
            </theorem*>
          </pine>
        </hidden>>

        \;

        <\pine>
          <\corollary*>
            Tout <math|P\<in\>\<bbb-T\><rsup|cx>{F}\<setminus\>\<bbb-T\><rsup|cx>>
            admet une racine dans <math|\<bbb-T\><rsup|cx>>.
          </corollary*>
        </pine>

        <\pine>
          <\corollary*>
            Tout <math|L\<in\>\<bbb-T\>[\<partial\>]> se factorise en
            facteurs d'ordre <math|1>.
          </corollary*>
        </pine>

        <\pine>
          <\remark*>
            <math|\<bbb-T\><rsup|cx>> <strong|n>'est <strong|pas>
            différentiellement clos.
          </remark*>
        </pine>
      </hidden>>
    </shown>|<\hidden>
      <switch|<\shown>
        <\granite>
          <render-theorem|Construction|Tout corps de transséries admet une
          clôture imbriquée.>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <render-theorem|Construction|Tout corps de transséries admet une
          clôture imbriquée.>
        </pine>
      </hidden>>
    </hidden>|<\hidden>
      <switch|<\shown>
        <\granite>
          <render-theorem|Construction|<math|\<exists\>> des corps de
          transséries de forces supérieures.>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <render-theorem|Construction|<math|\<exists\>> des corps de
          transséries de forces supérieures.>
        </pine>
      </hidden>>
    </hidden>|<\hidden>
      <switch|<\shown>
        <\granite>
          <\render-theorem|Conjecture>
            Pour un corps de transséries suffisamment grand, le théorème des
            valeurs intermédiaires est vraie pour des fonctionnelles faisant
            intervenir la dérivation et la composition.
          </render-theorem>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <\render-theorem|Conjecture>
            Pour un corps de transséries suffisamment grand, le théorème des
            valeurs intermédiaires est vraie pour des fonctionnelles faisant
            intervenir la dérivation et la composition.
          </render-theorem>
        </pine>
      </hidden>>
    </hidden>>
  </hidden>|<\hidden>
    <tit|Transséries et théorie des modèles>

    \;

    <unroll|<\shown>
      <switch|<\shown>
        <\granite>
          <\definition*>
            Corps de Hardy transsériel : corps de Hardy & souscorps
            de<nbsp><math|\<bbb-T\>>.
          </definition*>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <\definition*>
            Corps de Hardy transsériel : corps de Hardy & souscorps
            de<nbsp><math|\<bbb-T\>>.
          </definition*>
        </pine>
      </hidden>>
    </shown>|<\hidden>
      <switch|<\shown>
        <\granite>
          <\theorem*>
            Soit <math|\<cal-T\>> un corps de Hardy transsériel et
            <math|\<cal-T\><rsup|dalg>> sa clôture différentiellement
            algébrique dans <math|\<bbb-T\>>. Alors
            <math|\<cal-T\><rsup|dalg>> peut être muni d'une structure de
            corps de Hardy transsériel étendant <math|\<cal-T\>>.
          </theorem*>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <\theorem*>
            Soit <math|\<cal-T\>> un corps de Hardy transsériel et
            <math|\<cal-T\><rsup|dalg>> sa clôture différentiellement
            algébrique dans <math|\<bbb-T\>>. Alors
            <math|\<cal-T\><rsup|dalg>> peut être muni d'une structure de
            corps de Hardy transsériel étendant <math|\<cal-T\>>.
          </theorem*>
        </pine>
      </hidden>>
    </hidden>|<\hidden>
      <switch|<\shown>
        <\granite>
          <\theorem*>
            <math|\<cal-T\>> : corps de Hardy transsériel.
            <math|\<cal-H\>\<supseteq\>\<cal-T\>> : extension
            différentiellement algébrique de corps de Hardy. <math|\<cal-H\>>
            Liouville clos et différentiellement Hensélien. Alors
            <math|\<cal-H\>> se modélise comme corps de Hardy transsériel.
          </theorem*>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <\theorem*>
            <math|\<cal-T\>> : corps de Hardy transsériel.
            <math|\<cal-H\>\<supseteq\>\<cal-T\>> : extension
            différentiellement algébrique de corps de Hardy. <math|\<cal-H\>>
            Liouville clos et différentiellement Hensélien. Alors
            <math|\<cal-H\>> se modélise comme corps de Hardy transsériel.
          </theorem*>
        </pine>

        \;
      </hidden>>
    </hidden>|<\hidden>
      <switch|<\shown>
        <switch|<\shown>
          <\granite>
            <\definition*>
              <math|H>-corps : corps différentiel avec
              <math|<op|\<leqslant\>>> appropriée.
            </definition*>
          </granite>

          <\granite>
            <\definition*>
              Corps asymptotique : corps différentiel avec
              <math|<op|\<preccurlyeq\>>> appropriée.
            </definition*>
          </granite>
        </shown>|<\hidden>
          <\pine>
            <\definition*>
              H-corps : corps différentiel avec <math|<op|\<leqslant\>>>
              appropriée.
            </definition*>
          </pine>

          <\pine>
            <\definition*>
              Corps asymptotique : corps différentiel avec
              <math|<op|\<preccurlyeq\>>> appropriée.
            </definition*>
          </pine>
        </hidden>>
      </shown>>
    </hidden>|<\hidden>
      <switch|<\shown>
        <\granite>
          <\proposition*>
            Si un H-corps <math|K> admet une lacune
            <math|\<gamma\>\<approx\><frac|1|x>+<frac|1|x*log x>+\<cdots\>>,
            alors<nbsp><math|K> admet <strong|deux> clôtures Liouvilliennes
            avec <math|exp <value|I>\<gamma\>\<prec\>\<succ\>1>.
          </proposition*>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <\proposition*>
            Si un H-corps <math|K> admet une lacune
            <math|\<gamma\>\<approx\><frac|1|x>+<frac|1|x*log x>+\<cdots\>>,
            alors<nbsp><math|K> admet <strong|deux> clôtures Liouvilliennes
            avec <math|exp <value|I>\<gamma\>\<prec\>\<succ\>1>.
          </proposition*>
        </pine>

        \;
      </hidden>>
    </hidden>|<\hidden>
      <switch|<\shown>
        <\granite>
          <\theorem*>
            <dueto|ADH><math|\<exists\>> corps Liouville clos de transséries
            <math|K>, avec <math|\<gamma\>\<nin\>K>, mais
            <math|\<varrho\>\<approx\><frac|1|x<rsup|2>>+<frac|1|x<rsup|2>*log<rsup|2>
            x>+\<cdots\>\<in\>K>. Or <math|><math|\<varrho\>\<approx\>2*\<gamma\><rprime|'>+\<gamma\><rsup|2>>.
          </theorem*>
        </granite>
      </shown>|<\hidden>
        <\pine>
          <\theorem*>
            <dueto|ADH><math|\<exists\>> corps Liouville clos de transséries
            <math|K>, avec <math|\<gamma\>\<nin\>K>, mais
            <math|\<varrho\>\<approx\><frac|1|x<rsup|2>>+<frac|1|x<rsup|2>*log<rsup|2>
            x>+\<cdots\>\<in\>K>. Or <math|><math|\<varrho\>\<approx\>2*\<gamma\><rprime|'>+\<gamma\><rsup|2>>.
          </theorem*>
        </pine>
      </hidden>>
    </hidden>>
  </hidden>>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|12>
    <associate|info-flag|none>
    <associate|language|french>
    <associate|magnification|1.4>
    <associate|page-bot|5mm>
    <associate|page-even|5mm>
    <associate|page-height|757760unit>
    <associate|page-medium|automatic>
    <associate|page-odd|5mm>
    <associate|page-right|5mm>
    <associate|page-screen-bot|5mm>
    <associate|page-screen-height|954880tmpt>
    <associate|page-screen-top|5mm>
    <associate|page-screen-width|1310720tmpt>
    <associate|page-show-hf|true>
    <associate|page-top|5mm>
    <associate|page-width|1015808unit>
    <associate|preamble|false>
    <associate|sfactor|4>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?>>
    <associate|auto-10|<tuple|10|?>>
    <associate|auto-11|<tuple|11|?>>
    <associate|auto-12|<tuple|12|?>>
    <associate|auto-13|<tuple|13|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|auto-3|<tuple|3|?>>
    <associate|auto-4|<tuple|4|?>>
    <associate|auto-5|<tuple|5|?>>
    <associate|auto-6|<tuple|6|?>>
    <associate|auto-7|<tuple|7|?>>
    <associate|auto-8|<tuple|8|?>>
    <associate|auto-9|<tuple|9|?>>
    <associate|bib-Schm01|<tuple|CT|?>>
    <associate|bib-vdH:cexconj|<tuple|5|?>>
    <associate|bib-vdH:dagap|<tuple|3|?>>
    <associate|bib-vdH:effan|<tuple|1|?>>
    <associate|bib-vdH:effreal|<tuple|6|?>>
    <associate|bib-vdH:fnewton|<tuple|19|?>>
    <associate|bib-vdH:galois|<tuple|14|?>>
    <associate|bib-vdH:hfsol|<tuple|4|?>>
    <associate|bib-vdH:hol|<tuple|11|?>>
    <associate|bib-vdH:issac02|<tuple|4|?>>
    <associate|bib-vdH:issac03|<tuple|17|?>>
    <associate|bib-vdH:issac06|<tuple|7|?>>
    <associate|bib-vdH:issac97|<tuple|15|?>>
    <associate|bib-vdH:ivt2|<tuple|2|?>>
    <associate|bib-vdH:ln|<tuple|LN|?>>
    <associate|bib-vdH:maj|<tuple|9|?>>
    <associate|bib-vdH:newrelax|<tuple|18|?>>
    <associate|bib-vdH:noeth|<tuple|1|?>>
    <associate|bib-vdH:oldzt|<tuple|10|?>>
    <associate|bib-vdH:osc|<tuple|5|?>>
    <associate|bib-vdH:relax|<tuple|16|?>>
    <associate|bib-vdH:reshol|<tuple|13|?>>
    <associate|bib-vdH:riemann|<tuple|2|?>>
    <associate|bib-vdH:singhol|<tuple|12|?>>
    <associate|bib-vdH:witness|<tuple|8|?>>
    <associate|bib-vdH:zerotest|<tuple|3|?>>
    <associate|cross-rel|<tuple|1|?>>
    <associate|eq-fonc|<tuple|1|15>>
    <associate|mv-th|<tuple|<with|mode|<quote|math>|\<bullet\>>|?>>
    <associate|toc-1|<tuple|<uninit>|2>>
    <associate|toc-10|<tuple|2|5>>
    <associate|toc-11|<tuple|2|5>>
    <associate|toc-12|<tuple|2|5>>
    <associate|toc-13|<tuple|2|5>>
    <associate|toc-14|<tuple|2|6>>
    <associate|toc-15|<tuple|2|6>>
    <associate|toc-16|<tuple|2|6>>
    <associate|toc-17|<tuple|2|7>>
    <associate|toc-18|<tuple|2|7>>
    <associate|toc-19|<tuple|2|7>>
    <associate|toc-2|<tuple|<uninit>|3>>
    <associate|toc-20|<tuple|2|7>>
    <associate|toc-21|<tuple|2|8>>
    <associate|toc-22|<tuple|2|8>>
    <associate|toc-23|<tuple|2|8>>
    <associate|toc-24|<tuple|2|8>>
    <associate|toc-25|<tuple|2|8>>
    <associate|toc-26|<tuple|2|8>>
    <associate|toc-27|<tuple|2|9>>
    <associate|toc-28|<tuple|2|9>>
    <associate|toc-29|<tuple|2|9>>
    <associate|toc-3|<tuple|<uninit>|3>>
    <associate|toc-30|<tuple|2|10>>
    <associate|toc-31|<tuple|2|10>>
    <associate|toc-32|<tuple|2|10>>
    <associate|toc-33|<tuple|2|11>>
    <associate|toc-34|<tuple|2|12>>
    <associate|toc-35|<tuple|2|13>>
    <associate|toc-36|<tuple|2|14>>
    <associate|toc-37|<tuple|2|14>>
    <associate|toc-38|<tuple|2|14>>
    <associate|toc-39|<tuple|2|15>>
    <associate|toc-4|<tuple|<uninit>|3>>
    <associate|toc-40|<tuple|2|15>>
    <associate|toc-41|<tuple|2|15>>
    <associate|toc-42|<tuple|2|15>>
    <associate|toc-43|<tuple|2|16>>
    <associate|toc-44|<tuple|2|16>>
    <associate|toc-45|<tuple|2|16>>
    <associate|toc-46|<tuple|2|17>>
    <associate|toc-47|<tuple|2|17>>
    <associate|toc-48|<tuple|2|17>>
    <associate|toc-49|<tuple|2|17>>
    <associate|toc-5|<tuple|<uninit>|3>>
    <associate|toc-50|<tuple|2|?>>
    <associate|toc-6|<tuple|<uninit>|4>>
    <associate|toc-7|<tuple|<uninit>|4>>
    <associate|toc-8|<tuple|2|4>>
    <associate|toc-9|<tuple|2|4>>
  </collection>
</references>