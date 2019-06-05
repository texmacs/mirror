<TeXmacs|1.0.7.15>

<style|<tuple|tmweb2|maxima|giac>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|Package <TeXmacs> pr�t
  � l'emploi|<hlink| Id�es Vincent |main.fr.tm>>

  <\abstract>
    L'id�e c'est d'avoir un produit fini : on t�l�charge, on a tout. Mais
    quels programmes associ�s choisir ?
  </abstract>

  <section|Oui ou non ?>

  Andrey faisait remarquer au Portugal que ce n'est pas trop dans l'esprit
  linux d'avoir un truc tout pr�t ; de fait c'est plut�t une philosophie
  Apple, que de chercher � r�duire l'intervention technique de l'utilisateur.

  Le fait d'emballer <TeXmacs> et certaines applications qu'il va interfacer
  dans un m�me package ne doit pas �tre restrictif. Le <TeXmacs> ainsi
  t�l�charg� doit autoriser l'ajout ou la d�sactivation des programmes
  interfac�s que l'on veut.

  Quelque chose d'int�ressant serait : la possibilit�
  d'<with|font-shape|italic|installer> tr�s facilement un certain nombre
  d'autres programmes associ�s, via un menu idoine. Cette possibilit� peut,
  associ�e � l'id�e de package, donner � l'utilisateur lambda ce que Andrey
  souhaite pour les utilisateurs chevronn�s.

  <section|Mais quels programmes associ�s choisir>

  <subsection|La question des graphiques>

  En tant que n�ophyte, je vois trois possibilit� d'ins�rer des graphiques.
  Ce qui serait int�ressant, serait que le rendu soit le m�me (fontes des
  polices, style des traits...) avec les trois m�thodes.

  <\itemize>
    <item>insertion de la figure GeoGebra dont la fen�tre est ouverte

    <item>insertion graphique avec souris par l'interface native de <TeXmacs>

    <item>insertion via un langage de programmation �volu�. Je pense, suivant
    les conseils d'Alvaro, � l'association MathPlotLib+Python. Mais je n'ai
    pas encore essay�.
  </itemize>

  Il est important de pouvoir g�n�rer des figures par des s�quences
  programm�es. GeoGebra offre la ligne de commande, mais pas la s�quence
  d'instructions, sauf � rentrer dans javascript mais c'est le bordel
  (�changer une fonction entre js et ggb est possible mais lourd...) ou dans
  java mais c'est une autre paire de manches.

  Autre chose : un enseignant dans le secondaire peut avoir besoin d'un truc
  tr�s simple pour faire des figures en 3D. � creuser...

  <subsection|La question du calcul formel>

  L'une des forces de <TeXmacs> c'est d'ins�rer des sessions dynamiques de
  calcul formel dans le fil du texte, et il faudrait que pour l'automne une
  d�cision soit prise sur quel logiciel mettre dans le package.

  <subsection|La question de Professor>

  D�j�, avoir un package <TeXmacs>+ professor pr�t � fonctionner, avec des
  instructions simples et efficaces pour installer <LaTeX> � c�t� (puisque
  professor n�cessite pststricks) serait un grand pas en avant.

  <section|Aides n�cessaires>

  <\itemize>
    <item>R�fl�chir � quelles applications associ�es on met dans le package

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