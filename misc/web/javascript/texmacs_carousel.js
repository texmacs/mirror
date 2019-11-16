
/******************************************************************************
* MODULE     : texmacs_carousel.css
* DESCRIPTION: Carousel for new TeXmacs website
* COPYRIGHT  : (C) 2019  Joris van der Hoeven
*******************************************************************************
* This software falls under the GNU general public license version 3 or later.
* It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
* in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
******************************************************************************/

function carousel() {
  var c = document.getElementsByClassName("tmweb-carousel");
  for (k = 0; k < c.length; k++) {
    var i;
    var j = -1;
    var x = c[k].getElementsByClassName("tmweb-slide");
    for (i = 0; i < x.length; i++) {
      if (x[i].style.display != "none") { j = i }
      x[i].style.display = "none";  
    }
    j++;
    if (j >= x.length) { j = 0 }
    x[j].style.display = "block";  
  }
}

setTimeout (carousel, 1);
setInterval (carousel, 5000);
