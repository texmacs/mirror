
function detectOS () {
  if (navigator.userAgent.indexOf ('Linux') != -1) return "Linux";
  else if (navigator.userAgent.indexOf ('Mac') != -1) return "MacOS";
  else if (navigator.userAgent.indexOf ('Win') != -1) return "Windows";
  else return "Unknown";
}

function downloadPage (dir) {
  var OS = detectOS ();
  if (OS == "Linux")
    return dir + "/download/unix.en.html";
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
