<TeXmacs|1.0.7.15>

<style|<tuple|tmweb2|maxima|giac>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|<LaTeX> et
  <TeXmacs>|<hlink| Idées Vincent |main.fr.tm>>

  <section|Témoignages>

  <subsection|Vincent>

  Mon éditeur ayant des exigences sur la présentation, que je ne savais pas
  encore gérer avec <TeXmacs>, j'ai fait l'erreur de m'orienter vers <LaTeX>
  pour mettre en forme mon livre : contenu tapé en <TeXmacs>, exporté en
  <LaTeX>, retouché via Applescript.\ 

  L'expérience est alors celle d'un casse-tête permanent, le contraire d'un
  travail fluide. Le plaisir, pour moi, c'est quand l'outil va à la vitesse
  de la pensée. Avec <LaTeX> :

  - les en-têtes et pieds de pages sont une horreur à gérer. L'idée pour moi
  était simplement de pouvoir mettre, dans l'en-tête ou le pied de page, une
  mention du chapitre ou de la section en cours. Mon ange gardien, très
  pointu en <LaTeX>, m'a écrit les lignes suivantes que je ne cherche même
  pas à comprendre (les % sont mes essais...) :

  <with|font-base-size|6|<\with|font-family|tt>
    %\\rightmark = le nom de la section

    %\\leftmark = le nom du chapitre.

    %\\renewcommand{\\chaptermark}[1]{\\markboth{\\thechapter.\\ #1}{}}

    %\\renewcommand{\\sectionmark}[1]{\\markright{\\thesection.\\ #1}}

    % voir si ca perturbe pas.

    %\\renewcommand{\\sectionmark}[1]{\\markboth{#1}{}}

    %\\fancyfoot{}

    %\\fancyfoot[CE,CO]{\\sectionmark to \\markright to \\thesection}

    %\\fancyfoot[LO,RE]{}

    %\\fancyfoot[RO,LE]{}\ 

    % marche pas.. paragraphe 15 ``those blank pages'' de l'aide de
    fancyhdr...

    %\\def\\cleardoublepage{\\clearpageif@twoside\\ifoddc@page\\else

    \\makeatletter

    \\renewcommand\\@chapapp{}

    \\makeatother

    \\pagestyle{fancy}

    %fancyhf{}

    \\lhead[\\thepage]{(\\rightmark) Chapitre\\leftmark}

    \\rhead[(\\rightmark) Chapitre\\leftmark]{\\thepage}

    \\renewcommand{\\sectionmark}[1]{\\markright{#1}}

    \\fancyfoot{} % clear all footer fields\ 

    \\fancyfoot[CE,CO]{}
  </with>>

  - pour les figures, des solutions courantes sous <LaTeX> sont Metapost ou
  Tikz. J'ai expérimenté Tikz, qui donne de très jolis résultats. Mais le
  langage pour programmer cela n'est pas du tout mathématique : comment
  obtenir simplement le milieu de deux points ? l'abscisse d'un point ?
  l'instruction pour créer une variable globable est
  <with|font-family|tt|\\pgfmathsetmacro{\\x}{2.5}>. On peut rêver de plus
  simple... Si tu as défini une fonction <with|math-font-family|mt|<math|\\newcommand<around*|{|\\fx|}><around*|{||\<nobracket\>>exp<around*|(|-<around*|(|\\x|)>|}>>>,
  pour l'appliquer à une autre variable, disons <with|font-family|tt|\\t>, tu
  dois écrire <with|font-family|tt|\\let\\{\\x}{\\t}>. C'est lourd. Pas de
  boucle while. Beaucoup de points doivent être définis à la main,
  coordonnées par coordonnées. Il faut calculer à l'extérieur, intégrer les
  données dans latex et pour modifier a posteriori il faut une loupe
  binoculaire.

  - deux scopes emboîtés ne semblent pas marcher...

  De plus, dans <LaTeX>, tu ne vois pas ce que tu fais. Certains pensent que
  c'est nécessaire pour un résultat typographique optimal. Il est vrai que le
  rendu est très bon. Mais cela signifie que ce que tu tapes doit être prêt
  avant, sur le papier. Pour moi, la création se fait devant l'écran, on
  essaie, on reprend, on trace un graphe, on tape les équations comme on les
  voit : voilà comment je conçois l'informatique. Impossible avec <LaTeX>. Je
  n'ai aucun plaisir à utiliser ce langage. C'est un langage pour
  typographier, pas un langage pour penser. Beaucoup d'énergie et de temps
  sont gaspillés pour des soucis techniques, comme en témoignent les forums
  consacrés à <LaTeX>.

  <subsection|François>

  Le pb est que LaTeX est écrit sur les bases de TeX, et que TeX n'est pas un
  langage très \S sympathique \T. Par exemple, écrire une boucle en Python ça
  donne :

  <\with|font-family|tt>
    for type in ['paragrah', 'section']:

    \ \ for level in ['', 'sub', 'subsub']:

    \ \ \ \ \ print level+type
  </with>

  C'est très explicite. L'exécution renvoie :

  <with|font-family|tt|paragrah subparagrah subsubparagrah section subsection
  subsubsection>

  Je ne pense pas vous surprendre en donnant le résultat. Faire la même chose
  en TeX relève du parcours du combattant... à écrire, comme à comprendre...
  D'ailleurs, je n'essaierais même pas. :). Bref, TeX n'est pas un langage de
  haut niveau très appréciable. C'est un peu à la typographie ce que
  l'assembleur est à l'informatique. - d'autre part je n'arrive pas à
  comprendre comment on peut programmer en <LaTeX>. C'est du hack. On peut
  faire de l'arithmétique de base en <TeX>. Pour tout le reste, il faut
  exploiter des effets de bord et des trucs de syntaxe. Pour cela, il y a la
  commande <with|font-family|tt|\\def>, qui est très puissance (beaucoup plus
  puissante que <with|font-family|tt|\\newcommand>). Voir ceci et cela:
  http://tex.stackexchange.com/questions/18300/how-do-i-set-global-lengths-in-tikz
  et http://tex.stackexchange.com/questions/15001/getting-length-as-number.
  Toutefois, il est clair qu'il n'y a pas de langage magique pour décrire les
  dessins et les tableaux. En général, quelque soit le langage, le wysiwym
  est pénible pour ce genre de chose.

  <section|Aide nécessaire>

  <\itemize>
    <item>pourriez vous apporter votre témoignage ?

    <item>il faudrait préparer des documents en version <LaTeX> et en version
    <TeXmacs>. Je pense que tout le monde dans l'équipe a une vision de ce
    que l'on veut mettre en valeur par une telle comparaison : complexité du
    code <LaTeX> pour aboutir au même résultat, impossibilité d'interfaces de
    calcul ou de dessin, trucs typographiques que <TeXmacs> gère et pas
    <LaTeX>, et encore d'autres avantages de notre logiciel préféré. Donc si
    chacun pouvait préparer un petit document <TeXmacs> avec une version
    <LaTeX> du même document, ça enrichirait une base de données bien
    convaincante pour qui hésite sur le logiciel d'édition scientifique. On
    est une équipe, alors si chacun peut se lancer...
  </itemize>

  <tmdoc-copyright|2012|Vincent Douce>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|language|french>
  </collection>
</initial>