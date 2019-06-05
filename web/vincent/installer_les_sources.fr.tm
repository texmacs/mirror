<TeXmacs|1.0.7.15>

<style|<tuple|tmweb2|maxima|giac>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|Débutants - installer
  les sources|<hlink| Idées Vincent |main.fr.tm>>

  <\abstract>
    Vous n'avez jamais installé un logiciel à partir des sources ?
    Lancez-vous avec <TeXmacs>.
  </abstract>

  <section|Un peu de théorie : développer un logiciel à plusieurs>

  Si plusieurs personnes travaillent en même temps à développer un logiciel,
  il faut que chacun dispose sur son disque dur des sources du logiciel, et
  quand chacun les modifie, il doit synchroniser ses sources modifiées avec
  les sources originales qui se trouvent sur un serveur. On utilise pour cela
  un <with|font-shape|italic|logiciel de gestion de versions>. Subversion (en
  abrégé SVN) est un tel logiciel. Il est développé par la fondation Apache.

  SVN est un logiciel fait pour gérer facilement le développement d'un
  programme fait entre plusieurs personnes (et même une seule). Il travaille
  sur une logique client/serveur. Il y a le serveur SVN où se trouvent tous
  les fichiers sources et il y a ton poste de travail, dans lequel tu dois
  installer un client SVN et qui fera la copie du projet qui se trouve dans
  le serveur SVN (c'est ce qu'on appelle un checkout, copie initiale des
  fichiers, en abrégé <code*|co>). Quand tu modifieras des fichiers, il
  faudra envoyer les modifications au serveur SVN grâce à un <code*|commit>,
  tu peux ajouter des commentaires pour expliquer ce que tu as fait par
  exemple, tout est sauvegardé sur le serveur.

  Ça permet de développer un truc en gardant une trace de toutes les
  modifications, et en permettant par exemple de gérer les conflits lorsque
  deux personnes modifient en même temps le même fichier (pour que l'un
  n'écrase pas le travail de l'autre), tout ça grâce au versioning (chaque
  fichier à chaque modification a une version différente). Disons qu'un
  fichier X a la version 10, tu le modifie et tu commites, il aura la version
  11 sur le serveur. Deux personnes récupèrent (commande update de svn) et
  modifient la version 11, la première personne qui le modifie et qui commite
  la modification (commiter <math|\<rightarrow\>> envoyer la modification au
  serveur SVN qui centralise tout), n'aura pas de problème, la version du
  fichier X sur le serveur SVN sera maintenant 12. Mais la deuxième personne
  voudra commiter des modifications à la version 11, elle aura un conflit à
  régler car elle ne modifie pas la dernière version présente sur le serveur
  SVN, c'est à dire la 12.

  Deux lectures rapides:

  Qu'est-ce que c'est qu'un <hlink|logiciel de gestion de
  versions|http://fr.wikipedia.org/wiki/Logiciel_de_gestion_de_versions>.
  L'exemple de <hlink|Subversion|http://fr.wikipedia.org/wiki/Apache_Subversion>.

  <section|Un peu de théorie : Installer les sources>

  Les sources sont un ensemble de fichiers contenant toutes les lignes de
  code du programme. Tu les télécharges, tu les installes en suivant la
  procédure qui suit. Mais elles ne permettent pas directement de lancer le
  programme. Pour cela, il faut faire ce que l'on appelle une compilation. La
  compilation prend les sources (mais ne les modifie pas), et crée à partir
  d'elles un exécutables (une \S application \T).

  Donc : tu télécharges les sources, tu les modifies comme tu veux, tu les
  compiles pour pouvoir les utiliser sur ton ordinateur, et en parallèle tu
  les \S commites \T pour que le logiciel officiel soit mis à jour avec tes
  modifications. Compiler et \S commiter \T sont deux actions indépendantes.
  Tu peux aussi compiler et mettre à disposition de tous l'exécutable obtenu.
  C'est ainsi que sur le site texmacs.org tu peux régulièrement mettre à jour
  l'application texmacs.app.

  Quand on installe les sources, il faut indiquer au programme utilisé dans
  quel dossier on veut placer les sources, et dans quel dossier on veut
  placer le résultat des complications que l'on fera à partir des sources.\ 

  <section|Installer les sources de <TeXmacs>>

  Ce paragraphe concerne uniquement mac os X.

  Sous mac os X, le logiciel Xcode semble incontournable.

  Choisir un dossier sur le disque dur où l'on mettra les sources. Par
  exemple ~/Sources est idéal. Mais on peut choisir n'importe quel autre
  dossier. Attention toutefois : veiller à ce que dans le path (=chacun des
  sous dossiers successifs depuis la racine du disque dur), il n'y ait pas de
  caractères ésotériques : espaces, astérisques etc.

  <subsection|Préliminaires 1>

  Installer QT. QT (rien à voir avec Quicktime de Apple) est un système
  d'interface utilisateur développé par la compagnie nordique Nokia. Les
  nouvelles versions de <TeXmacs> s'appuient sur QT.

  <hlink|Télécharger QT|http://qt.nokia.com/downloads/qt-for-open-source-cpp-development-on-mac-os-x>
  (le premier lien : Cocoa, 64bit, libs and dev tools), c'est 178 MB, il
  s'installe tout seul, laisser faire.

  <subsection|Préliminaires 2>

  Dans ~/Sources, télécharger les librairies suivantes, dans cet ordre :

  <hlink|libgmp|http://gmplib.org/> (télécharger le .bz2)

  <hlink|Readline|http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html#Availability>
  (premier lien indiqué "ftp.cwru.edu") <math|<around*|(|\<ast\>|)>>

  <hlink|Guile|http://www.gnu.org/software/guile/download.html#releases>
  (installer guile 1.8.8 ; pas 2.0, c'est pas compatible)

  <hlink|Ghostscript|http://pages.cs.wisc.edu/~ghost/doc/GPL/gpl902.htm>
  (second lien, celui en bz2)

  Ce sont des programmes annexes, dont <TeXmacs> aura besoin. Tous doivent
  être compilés pour que <TeXmacs> puisse faire appel à eux. Pour cela, pour
  chacun des dossiers décompressés précédents, faire, dans le terminal :

  <\itemize>
    <item><code*|cd> [path du dossier concerné obtenu en faisant glisser ce
    dossier dans la fenêtre du terminal]

    exemple cd ~/Sources/gmp-5.0.4

    <item><code*|./configure --prefix=/usr/local>

    L'instruction --prefix=/usr/local permet d'indiquer à l'ordinateur qu'il
    faudra mettre les librairies compilées (=les exécutables obtenus) toutes
    dans le même dossier (sinon ça devient vite le bordel).

    <item><code*|make -jN>

    Remplace N par le nombre de processeurs que tu as: <code*|make -j2> si
    c'est un intel core 2 par exemple

    <item>Vérifier qu'il n'y a pas eu d'erreurs dans les dernières lignes qui
    ont défilé dans le terminal.

    <item><code*|sudo make install>

    le sudo c'est parce que les choses compilées sont envoyées dans
    /usr/local qui nécessite des autorisations.
  </itemize>

  <math|<around*|(|\<ast\>|)>>Attention ! à la fin de readline... faire en
  plus (et avant d'installer Guile, donc) :

  <code*|sudo ln -f -s /usr/local/lib/libreadline.6.2.dylib
  /usr/lib/libreadline.dylib>

  Explications si l'on veut :

  La librairie /usr/lib/libreadline.dylib n'est qu'un lien vers
  libedit.3.dylib, qui est la vraie librairie du MacOS. Avec <code*|ls -l
  /usr/lib/libreadline*>, on voit en effet ça: lrwxr-xr-x 1 root wheel 15 Jul
  22 2011 /usr/lib/libreadline.dylib -\<gtr\> libedit.3.dylib. Alors le truc
  est simple : on refait le lien pour qu'il pointe vers la nouvelle
  librairie. L'effet de l'instruction donnée est donc de remplacer le lien
  dont on parlait ci-dessus par un lien vers ton nouveau truc (<code*|ln>
  fait des liens vers des fichiers, <code*|-s toto titi> fait pointer titi
  vers toto, <code*|-f> veut dire "forcer" parce qu'il y a déjà un lien en
  place)

  On pourra aussi avoir besoin plus tard de ce qu'indique la page
  <hlink|installer les sources|http://www.texmacs.org/tmweb/download/sources.en.html>,
  à savoir : Aspell, Libiconv, Netpbm and ImageMagick mais si on débute mieux
  vaut attendre un peu, tout marche plus ou moins bien sans ça.

  <subsection|Installation de TeXmacs proprement dite>

  Faire un <with|font-shape|italic|check out> des fichiers source de texmacs.
  Checkout (en abrégé <code*|co>) veut dire : télécharger entièrement les
  sources de la toute dernière version. Il faut ne faire ça qu'une fois, la
  première fois qu'on installe.

  <\itemize>
    <item><code*|cd ~/Sources> (ou <code*|cd> [path des sources] si l'on a
    décidé de mettre ce dossier ailleurs)

    ensuite, au choix :

    <item><code*|svn co svn://svn.savannah.gnu.org/texmacs/trunk>

    ou bien, si tu as les accès "d'écriture" (c'est à dire le permis de
    Joris) pour envoyer tes changements directement au serveur :

    <item><code*|svn co svn+ssh://tonnomici@svn.savannah.gnu.org/texmacs/trunk>
  </itemize>

  Explication du /trunk : Les fichiers sources d'un logiciels contiennent
  trois dossier à la racine : trunk, branches, et tag. Les deux dernier
  servent à archiver toutes les sources successives obtenues par
  modifications des uns et des autres. C'est très lourd à télécharger, et
  nécessaire que si l'on plonge vraiment dans le code.

  Le résultat de cette opération : un dossier ~/Sources/texmacs/trunk/
  contenant "web" (image du site internet www.texmacs.org), "src" (les
  sources elles-mêmes) et "misc" (des trucs divers).

  Si tu as accès d'écriture, il faut <hlink|configurer tes clés
  ssh|https://savannah.gnu.org/svn/?group=texmacs>.

  <\itemize>
    <item>Une fois tout \ installé tu fermes XCode s'il était ouvert, parce
    que le prochain pas modifie le fichier TeXmacs.xcodeproj.

    <item><code*|cd> [fais glisser ici le dossier trunk/src des sources de
    <TeXmacs>].

    <item><code*|./configure --with-qt=/usr/local/Qt4.8
    --disable-macosx-extensions>

    Comme vu précédemment, cette instruction sert juste à faire quelques
    réglages avant de passer à l'action. Tu verras plein de trucs: le système
    essaie de trouver toutes les librairies dont il a besoin pour compiler
    TM.
  </itemize>

  <subsection|Mise à jour de tes sources par rapport au serveur>

  Lorsque tu auras besoin de te mettre à jour par rapport aux sources du
  serveur (que d'autres utilisateurs éventuels auront modifiées), par exemple
  avant de faire de nouveaux changements ou pour voir les derniers
  changements dans le code et les compiler, alors il faut faire :

  <\itemize>
    <item><code*|cd> [fais glisser ici le dossier trunk des sources de
    <TeXmacs>].

    <item><code*|svn update>

    Des trucs défileront: c'est sont les changements depuis la dernière fois
    que tu as téléchargé, c'est à dire depuis que tu as fait "svn co
    svn://blabla" pout la première et seule fois, ou depuis que tu as fait
    "svn update" la dernière fois.
  </itemize>

  <subsection|Mise à jour du serveur par rapport à tes sources>

  Faire <code*|commit> veut dire envoyer tes changements. Pour ça il te faut
  l'accès d'écriture (tu as déjà tout configuré plus haut).

  <\itemize>
    <item><code*|cd> [fais glisser ici le dossier trunk des sources de
    <TeXmacs>].

    <item><code*|svn status>

    si tu as créé un fichier toto.tm dans les sources, cette instruction
    status va le détecter et afficher quelque chose du style : <code*|?      
    toto.tm>

    Ça veut dire que ce fichier n'est pas géré par svn. Il faut l'ajouter:

    <item><code*|svn add toto.tm>

    <item><code*|svn commit -m "Un message court en expliquant tes
    changements" toto.tm>
  </itemize>

  Résumé :

  Chaque fichier que tu crées doit être ajouté (<code*|svn add nomdefichier>)
  puis envoyé au serveur (<code*|svn commit -m "message" nomdefichier>). Un
  fichier qui était déjà là n'a pas besoin d'être ajouté encore une fois par
  l'instruction <code*|add> : le <code*|commit> suffit.

  <subsection|Créer un exécutable>

  Pour compiler l'application <TeXmacs> à partir des sources, utilise XCode
  "Build-\<gtr\>Build and run" ou le raccourci Pomme+R. [Une commande make
  bundle existe aussi]

  <section|Aide nécessaire>

  <\itemize>
    <item>Vérifier.

    <item>Rédiger pour Linux.
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