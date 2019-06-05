<TeXmacs|1.0.7.15>

<style|<tuple|tmweb2|maxima|giac>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|<LaTeX> et
  <TeXmacs>|<hlink| Id�es Vincent |main.fr.tm>>

  <section|T�moignages>

  <subsection|Vincent>

  Mon �diteur ayant des exigences sur la pr�sentation, que je ne savais pas
  encore g�rer avec <TeXmacs>, j'ai fait l'erreur de m'orienter vers <LaTeX>
  pour mettre en forme mon livre : contenu tap� en <TeXmacs>, export� en
  <LaTeX>, retouch� via Applescript.\ 

  L'exp�rience est alors celle d'un casse-t�te permanent, le contraire d'un
  travail fluide. Le plaisir, pour moi, c'est quand l'outil va � la vitesse
  de la pens�e. Avec <LaTeX> :

  - les en-t�tes et pieds de pages sont une horreur � g�rer. L'id�e pour moi
  �tait simplement de pouvoir mettre, dans l'en-t�te ou le pied de page, une
  mention du chapitre ou de la section en cours. Mon ange gardien, tr�s
  pointu en <LaTeX>, m'a �crit les lignes suivantes que je ne cherche m�me
  pas � comprendre (les % sont mes essais...) :

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
  Tikz. J'ai exp�riment� Tikz, qui donne de tr�s jolis r�sultats. Mais le
  langage pour programmer cela n'est pas du tout math�matique : comment
  obtenir simplement le milieu de deux points ? l'abscisse d'un point ?
  l'instruction pour cr�er une variable globable est
  <with|font-family|tt|\\pgfmathsetmacro{\\x}{2.5}>. On peut r�ver de plus
  simple... Si tu as d�fini une fonction <with|math-font-family|mt|<math|\\newcommand<around*|{|\\fx|}><around*|{||\<nobracket\>>exp<around*|(|-<around*|(|\\x|)>|}>>>,
  pour l'appliquer � une autre variable, disons <with|font-family|tt|\\t>, tu
  dois �crire <with|font-family|tt|\\let\\{\\x}{\\t}>. C'est lourd. Pas de
  boucle while. Beaucoup de points doivent �tre d�finis � la main,
  coordonn�es par coordonn�es. Il faut calculer � l'ext�rieur, int�grer les
  donn�es dans latex et pour modifier a posteriori il faut une loupe
  binoculaire.

  - deux scopes embo�t�s ne semblent pas marcher...

  De plus, dans <LaTeX>, tu ne vois pas ce que tu fais. Certains pensent que
  c'est n�cessaire pour un r�sultat typographique optimal. Il est vrai que le
  rendu est tr�s bon. Mais cela signifie que ce que tu tapes doit �tre pr�t
  avant, sur le papier. Pour moi, la cr�ation se fait devant l'�cran, on
  essaie, on reprend, on trace un graphe, on tape les �quations comme on les
  voit : voil� comment je con�ois l'informatique. Impossible avec <LaTeX>. Je
  n'ai aucun plaisir � utiliser ce langage. C'est un langage pour
  typographier, pas un langage pour penser. Beaucoup d'�nergie et de temps
  sont gaspill�s pour des soucis techniques, comme en t�moignent les forums
  consacr�s � <LaTeX>.

  <subsection|Fran�ois>

  Le pb est que LaTeX est �crit sur les bases de TeX, et que TeX n'est pas un
  langage tr�s \S sympathique \T. Par exemple, �crire une boucle en Python �a
  donne :

  <\with|font-family|tt>
    for type in ['paragrah', 'section']:

    \ \ for level in ['', 'sub', 'subsub']:

    \ \ \ \ \ print level+type
  </with>

  C'est tr�s explicite. L'ex�cution renvoie :

  <with|font-family|tt|paragrah subparagrah subsubparagrah section subsection
  subsubsection>

  Je ne pense pas vous surprendre en donnant le r�sultat. Faire la m�me chose
  en TeX rel�ve du parcours du combattant... � �crire, comme � comprendre...
  D'ailleurs, je n'essaierais m�me pas. :). Bref, TeX n'est pas un langage de
  haut niveau tr�s appr�ciable. C'est un peu � la typographie ce que
  l'assembleur est � l'informatique. - d'autre part je n'arrive pas �
  comprendre comment on peut programmer en <LaTeX>. C'est du hack. On peut
  faire de l'arithm�tique de base en <TeX>. Pour tout le reste, il faut
  exploiter des effets de bord et des trucs de syntaxe. Pour cela, il y a la
  commande <with|font-family|tt|\\def>, qui est tr�s puissance (beaucoup plus
  puissante que <with|font-family|tt|\\newcommand>). Voir ceci et cela:
  http://tex.stackexchange.com/questions/18300/how-do-i-set-global-lengths-in-tikz
  et http://tex.stackexchange.com/questions/15001/getting-length-as-number.
  Toutefois, il est clair qu'il n'y a pas de langage magique pour d�crire les
  dessins et les tableaux. En g�n�ral, quelque soit le langage, le wysiwym
  est p�nible pour ce genre de chose.

  <section|Aide n�cessaire>

  <\itemize>
    <item>pourriez vous apporter votre t�moignage ?

    <item>il faudrait pr�parer des documents en version <LaTeX> et en version
    <TeXmacs>. Je pense que tout le monde dans l'�quipe a une vision de ce
    que l'on veut mettre en valeur par une telle comparaison : complexit� du
    code <LaTeX> pour aboutir au m�me r�sultat, impossibilit� d'interfaces de
    calcul ou de dessin, trucs typographiques que <TeXmacs> g�re et pas
    <LaTeX>, et encore d'autres avantages de notre logiciel pr�f�r�. Donc si
    chacun pouvait pr�parer un petit document <TeXmacs> avec une version
    <LaTeX> du m�me document, �a enrichirait une base de donn�es bien
    convaincante pour qui h�site sur le logiciel d'�dition scientifique. On
    est une �quipe, alors si chacun peut se lancer...
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