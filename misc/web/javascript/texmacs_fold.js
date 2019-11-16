
/******************************************************************************
* MODULE     : tmfold.css
* DESCRIPTION: Folding and unfolding for foldable TeXmacs markup
* COPYRIGHT  : (C) 2019  Joris van der Hoeven
*******************************************************************************
* This software falls under the GNU general public license version 3 or later.
* It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
* in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
******************************************************************************/

function findParent (node, kind) {
  if (node == document) return node;
  if (node.classList.contains (kind)) return node;
  return findParent (node.parentNode, kind);  
}

function makeClickable (buttons) {
  for (var i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener ("click", function () {
      var switchable= findParent (this, "switchable");
      switchable.classList.toggle("enabled");
      var l = switchable.getElementsByClassName ("unfolded");
      for (var k = 0; k < l.length; k++) {
        if (l[k].style.maxHeight)
          l[k].style.maxHeight = null;
        else
          l[k].style.maxHeight = l[k].scrollHeight + "px";
      }
    });
  }
}

makeClickable (document.getElementsByClassName ("detailed-button"));
makeClickable (document.getElementsByClassName ("summary-button"));
