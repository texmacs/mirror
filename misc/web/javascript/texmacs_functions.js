
/******************************************************************************
* MODULE     : texmacs_functions.css
* DESCRIPTION: Various functions for TeXmacs website
* COPYRIGHT  : (C) 2001-2019  Joris van der Hoeven
*******************************************************************************
* This software falls under the GNU general public license version 3 or later.
* It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
* in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
******************************************************************************/

function detectOS () {
  if (navigator.userAgent.indexOf ('Linux') != -1) return "Linux";
  else if (navigator.userAgent.indexOf ('Mac') != -1) return "MacOS";
  else if (navigator.userAgent.indexOf ('Win') != -1) return "Windows";
  else return "Unknown";
}

function downloadPage (dir) {
  var OS = detectOS ();
  if (OS == "Linux")
    return dir + "/download/linux.en.html";
  else if (OS == "MacOS")
    return dir + "/download/macosx.en.html";
  else if (OS == "Windows")
    return dir + "/download/windows.en.html";
  else
    return dir + "/download/download.en.html";
}

function downloadRelativeLink (text) {
  return "<a href=\"" + downloadPage ("..") + "\">" + text + "</a>";
}

function downloadLink (text) {
  var dir = "http://www.texmacs.org/tmweb";
  return "<a href=\"" + downloadPage (dir) + "\">" + text + "</a>";
}

function downloadButton (text, color) {
  return downloadLink ("<font color=" + color + ">" + text + "</font>");
}

function downloadButtonImage () {
  return downloadLink ("<img border=0 src=\"http://www.texmacs.org/Images/download_texmacs.png\"></img>");
}

function selectVideo (id) {
  var vs = document.getElementsByClassName("toggle");
  var ts = document.getElementsByClassName("tmweb-thumbnail-image");
  for (k = 0; k < ts.length && k < vs.length; k++) {
    if (ts[k].id == id) vs[k].style.display = "block";
    else vs[k].style.display = "none";
  }
}
