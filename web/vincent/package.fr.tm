<TeXmacs|1.0.7.15>

<style|<tuple|tmweb2|maxima|giac>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|Package <TeXmacs> prêt
  à l'emploi|<hlink| Idées Vincent |main.fr.tm>>

  <\abstract>
    L'idée c'est d'avoir un produit fini : on télécharge, on a tout. Mais
    quels programmes associés choisir ?
  </abstract>

  <section|Oui ou non ?>

  Andrey faisait remarquer au Portugal que ce n'est pas trop dans l'esprit
  linux d'avoir un truc tout prêt ; de fait c'est plutôt une philosophie
  Apple, que de chercher à réduire l'intervention technique de l'utilisateur.

  Le fait d'emballer <TeXmacs> et certaines applications qu'il va interfacer
  dans un même package ne doit pas être restrictif. Le <TeXmacs> ainsi
  téléchargé doit autoriser l'ajout ou la désactivation des programmes
  interfacés que l'on veut.

  Quelque chose d'intéressant serait : la possibilité
  d'<with|font-shape|italic|installer> très facilement un certain nombre
  d'autres programmes associés, via un menu idoine. Cette possibilité peut,
  associée à l'idée de package, donner à l'utilisateur lambda ce que Andrey
  souhaite pour les utilisateurs chevronnés.

  <section|Mais quels programmes associés choisir>

  <subsection|La question des graphiques>

  En tant que néophyte, je vois trois possibilité d'insérer des graphiques.
  Ce qui serait intéressant, serait que le rendu soit le même (fontes des
  polices, style des traits...) avec les trois méthodes.

  <\itemize>
    <item>insertion de la figure GeoGebra dont la fenêtre est ouverte

    <item>insertion graphique avec souris par l'interface native de <TeXmacs>

    <item>insertion via un langage de programmation évolué. Je pense, suivant
    les conseils d'Alvaro, à l'association MathPlotLib+Python. Mais je n'ai
    pas encore essayé.
  </itemize>

  Il est important de pouvoir générer des figures par des séquences
  programmées. GeoGebra offre la ligne de commande, mais pas la séquence
  d'instructions, sauf à rentrer dans javascript mais c'est le bordel
  (échanger une fonction entre js et ggb est possible mais lourd...) ou dans
  java mais c'est une autre paire de manches.

  Autre chose : un enseignant dans le secondaire peut avoir besoin d'un truc
  très simple pour faire des figures en 3D. À creuser...

  <subsection|La question du calcul formel>

  L'une des forces de <TeXmacs> c'est d'insérer des sessions dynamiques de
  calcul formel dans le fil du texte, et il faudrait que pour l'automne une
  décision soit prise sur quel logiciel mettre dans le package.

  <subsection|La question de Professor>

  Déjà, avoir un package <TeXmacs>+ professor prêt à fonctionner, avec des
  instructions simples et efficaces pour installer <LaTeX> à côté (puisque
  professor nécessite pststricks) serait un grand pas en avant.

  <section|Aides nécessaires>

  <\itemize>
    <item>Réfléchir à quelles applications associées on met dans le package

    <item>Peut-on mettre <LaTeX> aussi dans le package (pour professor)

    <item>Le calendrier vous convient-il (automne 2012 ou hiver)
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