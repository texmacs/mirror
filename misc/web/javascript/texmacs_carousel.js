
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
