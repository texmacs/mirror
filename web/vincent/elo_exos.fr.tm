<TeXmacs|1.0.7.15>

<style|<tuple|tmweb2|maxima|giac>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|Base d'exercices de
  maths|<hlink| Id�es Vincent |main.fr.tm>>

  <\abstract>
    Cr�er une base d'exos sous la forme d'une base de donn�es.
  </abstract>

  <section|Exemple>

  <hlink|http://elodouwen.ouvaton.org/e_exos|http://elodouwen.ouvaton.org/e_exos>

  L'id�e c'est de faciliter la t�che aux enseignants en leur fournissant une
  base de donn�es coop�rative, permettant en douce d'inciter � utiliser
  TeXmacs. On n'est pas oblig� d'imposer le format TeXmacs dans un premier
  temps.

  <section|R�flexions diverses>

  Math teachers in secondary schools are always looking for new exercices.
  Thougt, the programms are always the same (en gros...) and there are some
  categories of exercices that just have to be declined. We could, that is an
  idea, take advantage of this fact to create a database of maths exos. The
  existing does not seems to me to be enough for the moment (except maybe by
  Sesamaths). If you create such a database (or work with Sesamaths) you can
  also take advantage of this to promote the TeXmacs format. I am sorry i had
  written this following in french :

  <with|font-base-size|8|base de donn�es : dans le m�tier d'enseignant on
  passe du temps � chercher des exos. Des tentatives de partage sont faites
  mais je n'ai connais aucune qui se distingue vraiment des autres et qui ait
  v�ritablement pris corps. Voil� un d�fi � relever en profitant de
  l'opportunuit� pour faire de texmacs le logiciel du matheux : donner aux
  enseignants une belle base de donn�es d'exos de maths niveau lyc�e, et
  profiter de ce coup pour d�voiler l'efficacit� de TeXmacs. 100 exos par
  th�me niveau lyc�e, tous au format texmacs. Les th�mes sont : analyse,
  probas, complexes, espace, g�om�trie, statistiques base de donn�es mysql
  permettant de trier exos par niveau, par temps, par classe, par type (exo,
  cours, brouillon d'id�es...)? cela permet de trouver exactement ce que l'on
  veut d'une part, et d'�tre ind�pendant des programmes d'autre part : les
  programmes changent, ok, les utilisateurs vont cocher/d�cocher les bonnes
  cases mais l'exo reste l�. Question timing : pour les taper c'est 5 minutes
  par exo si l'exo est pr�t ? il y a donc 50 heures de travail de secr�taire.
  Si on est 10 et vu qu'on a plus de six mois c'est faisable. Pour concevoir
  les exercices c'est autre chose mais je peux fournir pas mal La base doit
  �tre modifiable par tout le monde qui s'identifie avant; Chaque exercice
  porte un num�ro d'entr�e d�finitif. Si on supprime un exo car on
  l'am�liore, il faut qu'un programmeur nous mette un syst�me pour que le
  num�ro de l'exo enlev� pointe vers le num�ro de l'exo nouveau. Il faut
  aussi revoir la page pour proposer choix plus clair entre "et" et "ou".
  Voir ici un <hlink|vieux truc|http://elodouwen.ouvaton.org/e_exos/> que
  j'avais pondu il y a 4 ans avec un copain programmeur: . Id�alement le site
  ne serait pas h�berg� sur un serveur perso. Un h�bergement plus officiel
  donnerait plus de cachet � la base de donn�es. J'avais not� quelques
  <hlink|r�flexions ici |http://elodouwen.ouvaton.org/e_exos/info_surlabase.php>.
  sauvegardes r�guli�res au cas o�. Formats : Tous les documents en texmacs
  (avec images li�es ou ins�r�es ??)+ pdf. Les rtf peuvent �tre utiles comme
  documents d'id�es (brouillon, pistes...). Pas de .doc. Les .tex dovent �tre
  accept�s. Les .odf � voir, peut �tre que �a peut aider les gens � partager,
  et on incite l'utilisateur � taper en texmacs. Il faut aussi accepter les
  fichiers tableurs, donc quel format ? .ods en attendant que GeoGebra
  supplante �a peut-�tre un jour. Int�grer les fichiers .ggb serait peut-�tre
  une bonne id�e car a) sur leur site il y a des partages de .ggb mais pas
  forc�ment class�s comme nous, avec cette base de donn�es qui est un concept
  itn�ressant et b) ils sont en train de mettre au point au fil des ans un
  logiciel math�matique tr�s vaste (avec � terme calcul formel, graphes,
  g�om�trie, espace, tableur, voire programmation en scripts) ce qui peut �
  la fois concurrencer et compl�ter texmacs. Concurrencer car texmacs fait �a
  aussi, ou le fera id�alement. Compl�ter car texmacs est orient� publication
  et g�og�bra est orient� manipulation. Le fait d'accepter les .ggb dans la
  base de donn�es pourrait aider � un rapprochement entre les deux familles
  d'utilisateurs.>

  <section|Aide n�cessaire>

  <\enumerate>
    <item>Il faudrait qu'on soit quelques-uns � r�diger des exercices.
    Ensuite je peux les rentrer dans la base de donn�es. 30 exercices par 30
    personnes �a fait d�j� presque 1000 exos : un bon bond en avant...

    <item>Ma base de donn�es donn�e en exemple ci-dessus est assez sommaire,
    au moins au niveau de la pr�sentation. Quelque chose de plus
    professionnel ? Comment ?

    <item>Sur quel serveur h�berger une telle base ?
  </enumerate>

  <tmdoc-copyright|2012|Vincent Douce>

  <tmweb-license>
</body>

<\initial>
  <\collection>
    <associate|info-flag|detailed>
    <associate|language|french>
  </collection>
</initial>