#! /bin/bash
###############################################################################
# MODULE     : Install desktop and mime files
# COPYRIGHT  : (C) 2019  Denis RAUX
###############################################################################
# This software falls under the GNU general public license version 3 or later.
# It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
# in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
###############################################################################

shopt -s nullglob
test -z "$1" && exit 10
mode=$1;shift

# exit if we are in a packaging process
test ! -w /usr/share -a "$XDG_UTILS_INSTALL_MODE" == "system" && exit 0

if test -z "$XDG_UTILS_INSTALL_MODE"
then  test -w /usr/share && export XDG_UTILS_INSTALL_MODE=system ||
        export XDG_UTILS_INSTALL_MODE=user
fi
export XDG_UTILS_DEBUG_LEVEL=0

case $mode in
install)
  test -n "$1" && cd $1 || exit 11
  #test if packaging mode
  if test ! -w /usr/share -a "$XDG_UTILS_INSTALL_MODE" == "system"
  then cp texmacs.desktop $DESTDIR/usr/share/applications/
  else 
    xdg-desktop-menu install --novendor texmacs.desktop
    xdg-mime install --novendor texmacs.xml
  fi
  ;;
uninstall)
  test -n "$1" && cd $1 || exit 11
  xdg-desktop-menu uninstall texmacs.desktop
  xdg-mime uninstall texmacs.xml
  ;;
*) exit 1;;
esac
