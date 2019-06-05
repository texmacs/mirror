<TeXmacs|1.0.7.15>

<style|<tuple|tmweb2|maxima|giac>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|D�butants - installer
  les sources|<hlink| Id�es Vincent |main.fr.tm>>

  <\abstract>
    Vous n'avez jamais install� un logiciel � partir des sources ?
    Lancez-vous avec <TeXmacs>.
  </abstract>

  <section|Un peu de th�orie : d�velopper un logiciel � plusieurs>

  Si plusieurs personnes travaillent en m�me temps � d�velopper un logiciel,
  il faut que chacun dispose sur son disque dur des sources du logiciel, et
  quand chacun les modifie, il doit synchroniser ses sources modifi�es avec
  les sources originales qui se trouvent sur un serveur. On utilise pour cela
  un <with|font-shape|italic|logiciel de gestion de versions>. Subversion (en
  abr�g� SVN) est un tel logiciel. Il est d�velopp� par la fondation Apache.

  SVN est un logiciel fait pour g�rer facilement le d�veloppement d'un
  programme fait entre plusieurs personnes (et m�me une seule). Il travaille
  sur une logique client/serveur. Il y a le serveur SVN o� se trouvent tous
  les fichiers sources et il y a ton poste de travail, dans lequel tu dois
  installer un client SVN et qui fera la copie du projet qui se trouve dans
  le serveur SVN (c'est ce qu'on appelle un checkout, copie initiale des
  fichiers, en abr�g� <code*|co>). Quand tu modifieras des fichiers, il
  faudra envoyer les modifications au serveur SVN gr�ce � un <code*|commit>,
  tu peux ajouter des commentaires pour expliquer ce que tu as fait par
  exemple, tout est sauvegard� sur le serveur.

  �a permet de d�velopper un truc en gardant une trace de toutes les
  modifications, et en permettant par exemple de g�rer les conflits lorsque
  deux personnes modifient en m�me temps le m�me fichier (pour que l'un
  n'�crase pas le travail de l'autre), tout �a gr�ce au versioning (chaque
  fichier � chaque modification a une version diff�rente). Disons qu'un
  fichier X a la version 10, tu le modifie et tu commites, il aura la version
  11 sur le serveur. Deux personnes r�cup�rent (commande update de svn) et
  modifient la version 11, la premi�re personne qui le modifie et qui commite
  la modification (commiter <math|\<rightarrow\>> envoyer la modification au
  serveur SVN qui centralise tout), n'aura pas de probl�me, la version du
  fichier X sur le serveur SVN sera maintenant 12. Mais la deuxi�me personne
  voudra commiter des modifications � la version 11, elle aura un conflit �
  r�gler car elle ne modifie pas la derni�re version pr�sente sur le serveur
  SVN, c'est � dire la 12.

  Deux lectures rapides:

  Qu'est-ce que c'est qu'un <hlink|logiciel de gestion de
  versions|http://fr.wikipedia.org/wiki/Logiciel_de_gestion_de_versions>.
  L'exemple de <hlink|Subversion|http://fr.wikipedia.org/wiki/Apache_Subversion>.

  <section|Un peu de th�orie : Installer les sources>

  Les sources sont un ensemble de fichiers contenant toutes les lignes de
  code du programme. Tu les t�l�charges, tu les installes en suivant la
  proc�dure qui suit. Mais elles ne permettent pas directement de lancer le
  programme. Pour cela, il faut faire ce que l'on appelle une compilation. La
  compilation prend les sources (mais ne les modifie pas), et cr�e � partir
  d'elles un ex�cutables (une \S application \T).

  Donc : tu t�l�charges les sources, tu les modifies comme tu veux, tu les
  compiles pour pouvoir les utiliser sur ton ordinateur, et en parall�le tu
  les \S commites \T pour que le logiciel officiel soit mis � jour avec tes
  modifications. Compiler et \S commiter \T sont deux actions ind�pendantes.
  Tu peux aussi compiler et mettre � disposition de tous l'ex�cutable obtenu.
  C'est ainsi que sur le site texmacs.org tu peux r�guli�rement mettre � jour
  l'application texmacs.app.

  Quand on installe les sources, il faut indiquer au programme utilis� dans
  quel dossier on veut placer les sources, et dans quel dossier on veut
  placer le r�sultat des complications que l'on fera � partir des sources.\ 

  <section|Installer les sources de <TeXmacs>>

  Ce paragraphe concerne uniquement mac os X.

  Sous mac os X, le logiciel Xcode semble incontournable.

  Choisir un dossier sur le disque dur o� l'on mettra les sources. Par
  exemple ~/Sources est id�al. Mais on peut choisir n'importe quel autre
  dossier. Attention toutefois : veiller � ce que dans le path (=chacun des
  sous dossiers successifs depuis la racine du disque dur), il n'y ait pas de
  caract�res �sot�riques : espaces, ast�risques etc.

  <subsection|Pr�liminaires 1>

  Installer QT. QT (rien � voir avec Quicktime de Apple) est un syst�me
  d'interface utilisateur d�velopp� par la compagnie nordique Nokia. Les
  nouvelles versions de <TeXmacs> s'appuient sur QT.

  <hlink|T�l�charger QT|http://qt.nokia.com/downloads/qt-for-open-source-cpp-development-on-mac-os-x>
  (le premier lien : Cocoa, 64bit, libs and dev tools), c'est 178 MB, il
  s'installe tout seul, laisser faire.

  <subsection|Pr�liminaires 2>

  Dans ~/Sources, t�l�charger les librairies suivantes, dans cet ordre :

  <hlink|libgmp|http://gmplib.org/> (t�l�charger le .bz2)

  <hlink|Readline|http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html#Availability>
  (premier lien indiqu� "ftp.cwru.edu") <math|<around*|(|\<ast\>|)>>

  <hlink|Guile|http://www.gnu.org/software/guile/download.html#releases>
  (installer guile 1.8.8 ; pas 2.0, c'est pas compatible)

  <hlink|Ghostscript|http://pages.cs.wisc.edu/~ghost/doc/GPL/gpl902.htm>
  (second lien, celui en bz2)

  Ce sont des programmes annexes, dont <TeXmacs> aura besoin. Tous doivent
  �tre compil�s pour que <TeXmacs> puisse faire appel � eux. Pour cela, pour
  chacun des dossiers d�compress�s pr�c�dents, faire, dans le terminal :

  <\itemize>
    <item><code*|cd> [path du dossier concern� obtenu en faisant glisser ce
    dossier dans la fen�tre du terminal]

    exemple cd ~/Sources/gmp-5.0.4

    <item><code*|./configure --prefix=/usr/local>

    L'instruction --prefix=/usr/local permet d'indiquer � l'ordinateur qu'il
    faudra mettre les librairies compil�es (=les ex�cutables obtenus) toutes
    dans le m�me dossier (sinon �a devient vite le bordel).

    <item><code*|make -jN>

    Remplace N par le nombre de processeurs que tu as: <code*|make -j2> si
    c'est un intel core 2 par exemple

    <item>V�rifier qu'il n'y a pas eu d'erreurs dans les derni�res lignes qui
    ont d�fil� dans le terminal.

    <item><code*|sudo make install>

    le sudo c'est parce que les choses compil�es sont envoy�es dans
    /usr/local qui n�cessite des autorisations.
  </itemize>

  <math|<around*|(|\<ast\>|)>>Attention ! � la fin de readline... faire en
  plus (et avant d'installer Guile, donc) :

  <code*|sudo ln -f -s /usr/local/lib/libreadline.6.2.dylib
  /usr/lib/libreadline.dylib>

  Explications si l'on veut :

  La librairie /usr/lib/libreadline.dylib n'est qu'un lien vers
  libedit.3.dylib, qui est la vraie librairie du MacOS. Avec <code*|ls -l
  /usr/lib/libreadline*>, on voit en effet �a: lrwxr-xr-x 1 root wheel 15 Jul
  22 2011 /usr/lib/libreadline.dylib -\<gtr\> libedit.3.dylib. Alors le truc
  est simple : on refait le lien pour qu'il pointe vers la nouvelle
  librairie. L'effet de l'instruction donn�e est donc de remplacer le lien
  dont on parlait ci-dessus par un lien vers ton nouveau truc (<code*|ln>
  fait des liens vers des fichiers, <code*|-s toto titi> fait pointer titi
  vers toto, <code*|-f> veut dire "forcer" parce qu'il y a d�j� un lien en
  place)

  On pourra aussi avoir besoin plus tard de ce qu'indique la page
  <hlink|installer les sources|http://www.texmacs.org/tmweb/download/sources.en.html>,
  � savoir : Aspell, Libiconv, Netpbm and ImageMagick mais si on d�bute mieux
  vaut attendre un peu, tout marche plus ou moins bien sans �a.

  <subsection|Installation de TeXmacs proprement dite>

  Faire un <with|font-shape|italic|check out> des fichiers source de texmacs.
  Checkout (en abr�g� <code*|co>) veut dire : t�l�charger enti�rement les
  sources de la toute derni�re version. Il faut ne faire �a qu'une fois, la
  premi�re fois qu'on installe.

  <\itemize>
    <item><code*|cd ~/Sources> (ou <code*|cd> [path des sources] si l'on a
    d�cid� de mettre ce dossier ailleurs)

    ensuite, au choix :

    <item><code*|svn co svn://svn.savannah.gnu.org/texmacs/trunk>

    ou bien, si tu as les acc�s "d'�criture" (c'est � dire le permis de
    Joris) pour envoyer tes changements directement au serveur :

    <item><code*|svn co svn+ssh://tonnomici@svn.savannah.gnu.org/texmacs/trunk>
  </itemize>

  Explication du /trunk : Les fichiers sources d'un logiciels contiennent
  trois dossier � la racine : trunk, branches, et tag. Les deux dernier
  servent � archiver toutes les sources successives obtenues par
  modifications des uns et des autres. C'est tr�s lourd � t�l�charger, et
  n�cessaire que si l'on plonge vraiment dans le code.

  Le r�sultat de cette op�ration : un dossier ~/Sources/texmacs/trunk/
  contenant "web" (image du site internet www.texmacs.org), "src" (les
  sources elles-m�mes) et "misc" (des trucs divers).

  Si tu as acc�s d'�criture, il faut <hlink|configurer tes cl�s
  ssh|https://savannah.gnu.org/svn/?group=texmacs>.

  <\itemize>
    <item>Une fois tout \ install� tu fermes XCode s'il �tait ouvert, parce
    que le prochain pas modifie le fichier TeXmacs.xcodeproj.

    <item><code*|cd> [fais glisser ici le dossier trunk/src des sources de
    <TeXmacs>].

    <item><code*|./configure --with-qt=/usr/local/Qt4.8
    --disable-macosx-extensions>

    Comme vu pr�c�demment, cette instruction sert juste � faire quelques
    r�glages avant de passer � l'action. Tu verras plein de trucs: le syst�me
    essaie de trouver toutes les librairies dont il a besoin pour compiler
    TM.
  </itemize>

  <subsection|Mise � jour de tes sources par rapport au serveur>

  Lorsque tu auras besoin de te mettre � jour par rapport aux sources du
  serveur (que d'autres utilisateurs �ventuels auront modifi�es), par exemple
  avant de faire de nouveaux changements ou pour voir les derniers
  changements dans le code et les compiler, alors il faut faire :

  <\itemize>
    <item><code*|cd> [fais glisser ici le dossier trunk des sources de
    <TeXmacs>].

    <item><code*|svn update>

    Des trucs d�fileront: c'est sont les changements depuis la derni�re fois
    que tu as t�l�charg�, c'est � dire depuis que tu as fait "svn co
    svn://blabla" pout la premi�re et seule fois, ou depuis que tu as fait
    "svn update" la derni�re fois.
  </itemize>

  <subsection|Mise � jour du serveur par rapport � tes sources>

  Faire <code*|commit> veut dire envoyer tes changements. Pour �a il te faut
  l'acc�s d'�criture (tu as d�j� tout configur� plus haut).

  <\itemize>
    <item><code*|cd> [fais glisser ici le dossier trunk des sources de
    <TeXmacs>].

    <item><code*|svn status>

    si tu as cr�� un fichier toto.tm dans les sources, cette instruction
    status va le d�tecter et afficher quelque chose du style : <code*|? � � �
    toto.tm>

    �a veut dire que ce fichier n'est pas g�r� par svn. Il faut l'ajouter:

    <item><code*|svn add toto.tm>

    <item><code*|svn commit -m "Un message court en expliquant tes
    changements" toto.tm>
  </itemize>

  R�sum� :

  Chaque fichier que tu cr�es doit �tre ajout� (<code*|svn add nomdefichier>)
  puis envoy� au serveur (<code*|svn commit -m "message" nomdefichier>). Un
  fichier qui �tait d�j� l� n'a pas besoin d'�tre ajout� encore une fois par
  l'instruction <code*|add> : le <code*|commit> suffit.

  <subsection|Cr�er un ex�cutable>

  Pour compiler l'application <TeXmacs> � partir des sources, utilise XCode
  "Build-\<gtr\>Build and run" ou le raccourci Pomme+R. [Une commande make
  bundle existe aussi]

  <section|Aide n�cessaire>

  <\itemize>
    <item>V�rifier.

    <item>R�diger pour Linux.
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