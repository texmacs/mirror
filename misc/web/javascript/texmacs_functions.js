
function detectOS () {
  if (navigator.userAgent.indexOf ('Linux') != -1) return "Linux";
  else if (navigator.userAgent.indexOf ('Mac') != -1) return "MacOS";
  else if (navigator.userAgent.indexOf ('Win') != -1) return "Windows";
  else return "Unknown";
}

function downloadPage () {
  var OS = detectOS ();
  if (OS == "Linux")
    return "http://www.texmacs.org/tmweb/download/unix.en.html";
  else if (OS == "MacOS")
    return "http://www.texmacs.org/tmweb/download/macosx.en.html";
  else if (OS == "Windows")
    return "http://www.texmacs.org/tmweb/download/windows.en.html";
  else
    return "http://www.texmacs.org/tmweb/download/download.en.html";
}

function downloadLink (text) {
  return "<A href=\"" + downloadPage () + "\">" + text + "</A>";
}

function downloadButton (text, color) {
  return downloadLink ("<font color=" + color + ">" + text + "</font>");
}

function downloadButtonImage () {
  return downloadLink ("<img border=0 src=\"http://www.texmacs.org/Images/download_texmacs.png\"></img>");
}
