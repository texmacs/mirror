<TeXmacs|1.0.7.15>

<style|<tuple|tmweb2|maxima|giac>>

<\body>
  <tmweb-current|Contribute|Contributing><tmweb-title|GeoGebra|<hlink| Idées
  Vincent |main.fr.tm>>

  <\abstract>
    GeoGebra étant utilisée par tous les enseignants du secondaire, il faut
    stratégiquement que nous développions un lien avec <TeXmacs>.
  </abstract>

  <section|Comment est fait un fichier GeoGebra>

  Ce sont des .xml zippés et l'on remplace l'extension .zip par .ggb.

  Voici un exemple de figure :

  <big-figure|<image|vinz_documents/geogebrafile.png|7cm|||->|>

  En fichier annexe le code source xml de cette figure.

  La taille est faible. Le fichier .ggb de cette figure pèse 8 Ko (taille
  générique des fichiers \<less\>8Ko sous mac os X).

  Voici son <hlink|code source|vinz_documents/codegg.txt>.

  <section|Quelle est la position de la GeoGebra team>

  Message de Markus le gérant de GeoGebra :

  <cite*|I think that an integration of GeoGebra into Texmacs would be very
  nice! Of course, our strength are dynamic figures and we only have a third
  party eps export library. However, I suggest to you start playing with this
  and keep in touch with our lead developer.>

  <section|Quelles sont les pistes possibles>

  The first pistes turn around inserting a dead picture of the dynamic
  GeoGebra figure. For this we use the GeoGebra \S export to picture \T
  feature : the ggb<math|\<rightarrow\>>eps export has some bugs (see
  <hlink|here|http://www.geogebra.org/forum/viewtopic.php?f=8&t=26854>). It
  seems that the eps export does not have a long future... The
  ggb<math|\<rightarrow\>>png export is perfect. The
  ggb<math|\<rightarrow\>>pdf is to verify but i can not manage to insert any
  pdf in <TeXmacs>.

  What do you think ? Could <math|png> be a right format to insert pictures
  into <TeXmacs> ?

  Is the ggb <math|\<rightarrow\>> eps \ or ggb<math|\<rightarrow\>>png
  export via the command line planed ? <hlink|Yes|http://dev.geogebra.org/trac/ticket/1993>
  but for when ?

  Now, there are at least 3 possibilities.

  first possibility, currently available :

  <\itemize>
    <item>in gg, export to eps somewhere on the harddrive

    <item>in texmacs, link or insert image, look in the path to find the eps
    image

    <item>the result : an image that will not evolve if you modify the ggb
    file

    <item>maybe modify this first possibility by replacing eps with png ?
  </itemize>

  second possiblity with ggb<math|\<rightarrow\>>eps export command line :

  <\itemize>
    <item>Create a new menu in Texmacs "insert a GeoGebra picture".

    <item>When the user chooses this menu he just has to find (one time), in
    the harddrive, the path to the ggb files.

    <item>Advantage : there could be in texmacs an "actualize page" and, at
    the clic on this option, texmacs would retake the ggb file and reconvert
    it to eps and reinsert or link it in the texmacs page.\ 

    <item>This lets opened the possiblity to drive this ggb file from
    javascript if the user wants so.

    <item>Summary : menu in texmacs <math|\<rightarrow\>>insertion of graphic
    ggb <math|\<rightarrow\>> choice of the gg file <math|\<rightarrow\>>
    command line export to image <math|\<rightarrow\>> insertion of image in
    <TeXmacs> document.
  </itemize>

  third possibility by creating an environment around ggb

  <\itemize>
    <item>Create a java "environment" (sorry for the unprecize word) that
    would be droven by texmacs and would drive geogebra to do this :

    <item>in texmacs there would be a button "insert gg figure"

    <item>on the clic this button would open a new ggb window ; in this new
    window you could either build a new gg picture or drag and drop an
    existing ggb file to open it "in" this window

    <item>at the close of this window there would be a "return" where texmacs
    would (tell ggb to) record simultaneously a toto.ggb and a toto.eps file
    somewhere hidden and insert the eps picture in the texmacs document
    [replace eps with png ?]

    <item>we can also imagine a system to double-clic on the figure in the
    texmacs page and open a window with this figure in order to modify it.

    <item>Summary : menu <math|\<rightarrow\>> intégration of ggb graphic
    <math|\<rightarrow\>> opening of ggb <math|\<rightarrow\>> work in ggb
    (or open existing file) <math|\<rightarrow\>> close geogebra
    <math|\<rightarrow\>> save in a precise file choosen by the developper
    <math|\<rightarrow\>> texmacs detects the close of ggb and runs the
    comand that creates the graphic from the ggb file <math|\<rightarrow\>>
    then the picture is inserted in the texmacs document and and the ggb file
    source code too (in invisible mode ?) <math|\<rightarrow\>> when double
    clic on ggb picture in texmacs, the ggb file integrated in the texmacs
    document is save as a ggb file in a temp folder and ggb is launched and
    that's it.
  </itemize>

  <subsection|Pour info>

  GeoGebra dispose d'un module de calcul formel.

  Forum GeoGebra, août 2011 :

  <cite*|GeoGebra a changé son CAS. Ce n'est plus MathsPiper, ni Maxima.
  C'est maintenant MPReduce (implémenté en LISP)>.

  <section|Aides nécessaires>

  <\itemize>
    <item>un connaisseur java ou GeoGebra pour aider à comprendre si l'export
    ggb<math|\<rightarrow\>>png via ligne de commande peut être accéléré dans
    le calendrier, et si la solution 2 ou 3 sont faisables vu les sources de
    GeoGebra.
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