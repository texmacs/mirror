<TeXmacs|1.99.12>

<style|<tuple|tmdoc|french|old-spacing|old-dots>>

<\body>
  <tmdoc-title|Impression de documents>

  Vous pouvez imprimer le fichier actif avec <menu|File|Print|Print all>.
  L'imprimante d�finie par d�faut dans <TeXmacs> a une r�solution de 600 dpi
  et g�re un format de papier A4. Vous pouvez changer ces r�glages avec
  <menu|File|Page setup...> . Vous pouvez aussi g�n�rer un fichier PostScript
  avec <menu|File|Print|Print all to file> (dans ce cas, ce sont les r�glages
  de l'imprimante par d�faut qui sont utilis�s pour cr�er le fichier
  r�sultant) ou <menu|File|Export|Postscript> (dans ce cas, les r�glages de
  l'imprimante ne sont pas pris en compte).

  Vous pouvez g�n�rer un ficier PDF avec <menu|File|Export|Pdf>. Notez que
  vous devez d�finir <menu|�diter|Pr�f�rences|Imprimante|Type de police|Type
  1> si vous souhaitez que le Postcript ou PDF produit soit de police de
  <name|Type 1.> Cependant, seules les polices CM peuvent recevoir la version
  <name|Type 1>. Ces polices CM sont d'une qualit� l�g�rement inf�rieure aux
  polices EC principalement pour les caract�res accentu�s. Par cons�quent,
  vous pourriez pr�f�rer utiliser les polices CE aussi longtemps que vous
  n'avez pas besoin d'un fichier PDF qui soit joli dans <name|Acrobat
  Reader>.

  Quand <TeXmacs> est configur� correctement, l'�diteur est un vrai �diteur
  <em|tel �cran, tel �crit :> le r�sultat � l'impression est identique � ce
  que vous voyez sur l'�cran. Pour obtenir ce r�sultat, vous devez
  s�lectionner <menu|Document|Page|Type|Paper> et <menu|Document|Page|Screen
  layout|Marges comme sur le papier>. Vous devez aussi vous assurer que les
  caract�res sur l'�cran utilisent le m�me nombre de points par pouce que
  votre imprimante. La r�solution peut �tre modifi�e avec
  <menu|Document|Font|Dpi>. � l'heure actuelle, il est possible que le
  changement de dpi entra�ne des changements typographiques mineurs qui se
  r�percutent sur l'ensemble du document et affectent les sauts de ligne et
  de page. Ce probl�me sera r�solu dans une prochaine version.

  <tmdoc-copyright|1998--2011|Joris van der Hoeven|Mich�le Garoche, Daouda
  Niang Diatta>

  <tmdoc-license|Permission is granted to copy, distribute and/or modify this
  document under the terms of the GNU Free Documentation License, Version 1.1
  or any later version published by the Free Software Foundation; with no
  Invariant Sections, with no Front-Cover Texts, and with no Back-Cover
  Texts. A copy of the license is included in the section entitled "GNU Free
  Documentation License".>
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>