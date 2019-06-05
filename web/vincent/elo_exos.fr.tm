<TeXmacs|1.0.7.15>

<style|<tuple|tmweb2|maxima|giac>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|Base d'exercices de
  maths|<hlink| Idées Vincent |main.fr.tm>>

  <\abstract>
    Créer une base d'exos sous la forme d'une base de données.
  </abstract>

  <section|Exemple>

  <hlink|http://elodouwen.ouvaton.org/e_exos|http://elodouwen.ouvaton.org/e_exos>

  L'idée c'est de faciliter la tâche aux enseignants en leur fournissant une
  base de données coopérative, permettant en douce d'inciter à utiliser
  TeXmacs. On n'est pas obligé d'imposer le format TeXmacs dans un premier
  temps.

  <section|Réflexions diverses>

  Math teachers in secondary schools are always looking for new exercices.
  Thougt, the programms are always the same (en gros...) and there are some
  categories of exercices that just have to be declined. We could, that is an
  idea, take advantage of this fact to create a database of maths exos. The
  existing does not seems to me to be enough for the moment (except maybe by
  Sesamaths). If you create such a database (or work with Sesamaths) you can
  also take advantage of this to promote the TeXmacs format. I am sorry i had
  written this following in french :

  <with|font-base-size|8|base de données : dans le métier d'enseignant on
  passe du temps à chercher des exos. Des tentatives de partage sont faites
  mais je n'ai connais aucune qui se distingue vraiment des autres et qui ait
  véritablement pris corps. Voilà un défi à relever en profitant de
  l'opportunuité pour faire de texmacs le logiciel du matheux : donner aux
  enseignants une belle base de données d'exos de maths niveau lycée, et
  profiter de ce coup pour dévoiler l'efficacité de TeXmacs. 100 exos par
  thème niveau lycée, tous au format texmacs. Les thèmes sont : analyse,
  probas, complexes, espace, géométrie, statistiques base de données mysql
  permettant de trier exos par niveau, par temps, par classe, par type (exo,
  cours, brouillon d'idées...)? cela permet de trouver exactement ce que l'on
  veut d'une part, et d'être indépendant des programmes d'autre part : les
  programmes changent, ok, les utilisateurs vont cocher/décocher les bonnes
  cases mais l'exo reste là. Question timing : pour les taper c'est 5 minutes
  par exo si l'exo est prêt ? il y a donc 50 heures de travail de secrétaire.
  Si on est 10 et vu qu'on a plus de six mois c'est faisable. Pour concevoir
  les exercices c'est autre chose mais je peux fournir pas mal La base doit
  être modifiable par tout le monde qui s'identifie avant; Chaque exercice
  porte un numéro d'entrée définitif. Si on supprime un exo car on
  l'améliore, il faut qu'un programmeur nous mette un système pour que le
  numéro de l'exo enlevé pointe vers le numéro de l'exo nouveau. Il faut
  aussi revoir la page pour proposer choix plus clair entre "et" et "ou".
  Voir ici un <hlink|vieux truc|http://elodouwen.ouvaton.org/e_exos/> que
  j'avais pondu il y a 4 ans avec un copain programmeur: . Idéalement le site
  ne serait pas hébergé sur un serveur perso. Un hébergement plus officiel
  donnerait plus de cachet à la base de données. J'avais noté quelques
  <hlink|réflexions ici |http://elodouwen.ouvaton.org/e_exos/info_surlabase.php>.
  sauvegardes régulières au cas où. Formats : Tous les documents en texmacs
  (avec images liées ou insérées ??)+ pdf. Les rtf peuvent être utiles comme
  documents d'idées (brouillon, pistes...). Pas de .doc. Les .tex dovent être
  acceptés. Les .odf à voir, peut être que ça peut aider les gens à partager,
  et on incite l'utilisateur à taper en texmacs. Il faut aussi accepter les
  fichiers tableurs, donc quel format ? .ods en attendant que GeoGebra
  supplante ça peut-être un jour. Intégrer les fichiers .ggb serait peut-être
  une bonne idée car a) sur leur site il y a des partages de .ggb mais pas
  forcément classés comme nous, avec cette base de données qui est un concept
  itnéressant et b) ils sont en train de mettre au point au fil des ans un
  logiciel mathématique très vaste (avec à terme calcul formel, graphes,
  géométrie, espace, tableur, voire programmation en scripts) ce qui peut à
  la fois concurrencer et compléter texmacs. Concurrencer car texmacs fait ça
  aussi, ou le fera idéalement. Compléter car texmacs est orienté publication
  et géogébra est orienté manipulation. Le fait d'accepter les .ggb dans la
  base de données pourrait aider à un rapprochement entre les deux familles
  d'utilisateurs.>

  <section|Aide nécessaire>

  <\enumerate>
    <item>Il faudrait qu'on soit quelques-uns à rédiger des exercices.
    Ensuite je peux les rentrer dans la base de données. 30 exercices par 30
    personnes ça fait déjà presque 1000 exos : un bon bond en avant...

    <item>Ma base de données donnée en exemple ci-dessus est assez sommaire,
    au moins au niveau de la présentation. Quelque chose de plus
    professionnel ? Comment ?

    <item>Sur quel serveur héberger une telle base ?
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