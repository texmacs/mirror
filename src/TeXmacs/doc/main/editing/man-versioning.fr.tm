<TeXmacs|1.99.10>

<style|<tuple|tmdoc|french|old-spacing>>

<\body>
  <tmdoc-title|Outil gestionnaire de version>

  Lors de l'�criture coop�rative de documents, il arrive fr�quemment qu'un
  auteur veuille explorer les changements faits par les autres, pour les
  accepter, les refuser ou m�me les corriger. Apr�s avoir activer la gestion
  des versions � l'aide de : <menu|Tools|Versioning tool>, un menu sp�cial
  <menu|Version> appara�t dans la barre de menu principal, ce qui rend cette
  action automatique . Regardons plus en d�tail comment cet outil fonctionne.

  Pour le moment, des controles automatiques de version tels que
  <name|Subversion> ne sont pas encore support�s. Dans le futur, nous avons
  l'intention d'inclure le support de tels syst�mes et le moyen d'assembler
  deux nouvelles versions.

  <paragraph*|Comparer deux versions>

  Supposons que nous ayons deux versions <verbatim|old.tm> et
  <verbatim|new.tm> du m�me document. Afin de visualiser les changements,
  premi�rement chargeons la nouvelle version <verbatim|new.tm>, puis cliquons
  sur <menu|Version|File|Compare> et s�lectionnons la vieille version
  <verbatim|old.tm>. Le tampon sera toujours nomm� <verbatim|new.tm>, et les
  changements entre les deux versions seront indiqu�s par un marqueur
  sp�cial. Si il n'y a pas de changement, alors le curseur sera positionn�
  sur la premi�re diff�rence.

  Il est possible de parcourir toutes les diff�rences � la fois � partir des
  choix du sous-menu <menu|Version|Move>, ou en utilisant les raccourcis
  clavier <shortcut|(version-previous-difference)> and
  <shortcut|(version-next-difference)>. On peut aussi utiliser les raccourcis
  plus g�n�raux de navigation structur�e <shortcut|(traverse-first)>,
  <shortcut|(traverse-last)>, <shortcut|(traverse-previous)> and
  <shortcut|(traverse-next)>.

  <paragraph*|Visualisation des differences>

  Les diff�rences entre deux versions peuvent �tre visualis�es de trois
  mani�res : en visualisant seulement la vieille version, seulement la
  nouvelle, ou les deux � la fois. Dans tous les cas, la vieille version est
  affich�e en rouge fonc� et la nouvelle en vert fonc�.

  Le style de visualisation peut �tre d�fini sp�cifiquement pour chaque
  diff�rence, via <menu|Version|Show> ou les raccourcis claviers
  <shortcut|(version-show 'version-old)> (vieille version),
  <shortcut|(version-show 'version-new)> (nouvelle version) and
  <shortcut|(version-show 'version-both)> (toutes versions). On peut aussi
  parcourir les diff�rents styles en utilisant les touches de variantes
  structur�es <shortcut|(variant-circulate (focus-tree) #t)>. Si vous
  s�lectionnez du texte, alors les actions d�crites ci-dessus s'appliquent �
  toute la s�lection. Le style de visualisation peut �tre d�fini globalement
  en utilisant <menu|Version|File|Show old version>, <menu|Version|File|Show
  new version> and <menu|Version|File|Show both versions>.

  <paragraph*|Accepter une version sp�cifique>

  Il arrive souvent que l'on veuille parcourir les changement entre deux
  versions et retenir l'une ou l'autre des diff�rences rencontr�es. Supposons
  que le curseur soit � l'int�rieur d'une diff�rence donn�e, alors cela
  peut-�tre fait � l'aide du sous-menu <menu|Version|Retain>. D'une autre
  mani�re, on peut utiliser les raccourcis <shortcut|(version-retain 0)>,
  <shortcut|(version-retain 1)> et <shortcut|(version-retain 'current)> pour
  retenir respectivement l'ancienne, la nouvelle ou la version affich�e. Si
  les deux versions sont affich�es, alors <shortcut|(version-retain
  'current)> retient la nouvelle version. Apr�s avoir retenu l'une des
  versions, nous sautons automatiquement � la prochaine diff�rence, qui peut
  alors �tre trait�e. Si vous s�lectionnez une portion de texte, alors
  n'importe laquelle des actions cit�es au dessus, retiendra la version
  appropri�e pour chaque diff�rence de la s�lection.

  Il est aussi possible de s�lectionner globalement la vieille, la nouvelle
  ou la version courante en utilisant <menu|Version|File|Retain old version>,
  <menu|Version|File|Retain new version>, <abbr|resp.>
  <menu|Version|File|Retain current version>. Une alternative pratique pour
  traiter toutes les diff�rences est d'utiliser
  <shortcut|(version-previous-difference)> et
  <shortcut|(version-next-difference)> pour les parcourir, d'utiliser
  <shortcut|(version-show 'version-old)> et <shortcut|(version-show
  'version-new)> pour s�lectionner la version pr�f�r�e, et ensuite de cliquer
  sur <menu|Version|File|Retain current version> aussit�t que toutes les
  diff�rences aurons �t� trait�es.

  <paragraph*|Controle fin et mise � jour des differences>

  Les entr�es dans le sous-menu <menu|Version|Grain> permettent de contr�ler
  la finesse avec laquelle les differences entre les versions sont calcul�es.
  Par d�faut, nous utilisons le niveau <menu|Detailed>. Il est aussi possible
  de calculer les diff�rences au niveau du paragraphe, en utilisant
  <menu|Block>. Dans se cas, c'est le paragraphe entier dans lequel un
  changement intervient,qui va �tre surlign�. Le niveau de finesse le plus
  grossier <menu|Rough> va surlign� le texte entier, si un changement est
  paru.

  La finesse est utilis�e lors de la comparaison � l'aide de
  <menu|Version|File|Compare>, mais il est aussi possible de comparer �
  nouveau une portion de texte s�lectionn�e � l'aide de
  <menu|Version|Reactualize>. Cette derni�re possibilit� est fortement utile
  lors d'un changement du niveau de finesse.

  De fa�on similaire, le curseur �tant � l'int�rieur d'une diff�rence, vous
  pouvez comparer � nouveau les deux versions en utilisant
  <menu|Version|Reactualize>. Cela peut-�tre utile si vous avez effectu� des
  modifications dans l'une des versions. Par exemple, supposons que la
  vieille version contenait un th�or�me et que nous l'ayons chang� en lemme
  dans la nouvelle version et que nous ayons aussi modifi� des passages du
  texte � l'int�rieur. Lorsque nous visualisons les changements, le th�or�me
  entier sera surlign�, parce que il n'y a pas de marqueur appropri� pour
  indiquer que nous avons juste chang� un th�or�me en lemme. N�anmoins, si
  nous voulons comparer le texte � l'int�rieur, nous pouvons changer le vieux
  th�or�me en lemme et ensuite utiliser <menu|Version|Reactualize>.

  <tmdoc-copyright|2010|Joris van der Hoeven|Denis Raux>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<initial|<\collection>
</collection>>