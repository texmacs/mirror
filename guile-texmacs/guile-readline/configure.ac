AC_PREREQ([2.71])

dnl Don't use "echo -n", which is not portable (e.g., not available on
dnl MacOS X).  Instead, use `patsubst' to remove the newline.
AC_INIT([guile-readline],[1.8.8],[bug@texmacs.org])

AC_CONFIG_AUX_DIR([.])
AC_CONFIG_MACRO_DIR([../m4])
AC_CONFIG_SRCDIR(readline.c)
AC_CONFIG_HEADERS([guile-readline-config.h])
AM_INIT_AUTOMAKE([foreign no-define])
AM_MAINTAINER_MODE

. $srcdir/../GUILE-VERSION

AC_PROG_INSTALL
AC_PROG_CC

LT_INIT([win32-dll])

dnl
dnl Check for Winsock and other functionality on Win32 (*not* CygWin)
dnl
AC_CANONICAL_HOST
case $host_os in
  *cygwin* ) CYGWIN=yes;;
	 * ) CYGWIN=no;;
esac

AC_CANONICAL_HOST
case $host_os in
  *mingw32* ) MINGW32=yes;;
	  * ) MINGW32=no;;
esac

EXTRA_DEFS=""
if test "$MINGW32" = "yes" ; then
    if test $enable_shared = yes ; then
      EXTRA_DEFS="-DSCM_IMPORT"
    fi
fi
AC_SUBST(EXTRA_DEFS)

for termlib in ncurses curses termcap terminfo termlib ; do
   AC_CHECK_LIB(${termlib}, tgoto,
                [LIBS="-l${termlib} $LIBS"; break])
done

AC_CHECK_LIB(readline, readline)
if test $ac_cv_lib_readline_readline = no; then
  AC_MSG_WARN([libreadline was not found on your system.])
fi

AC_CHECK_FUNCS(siginterrupt rl_clear_signals rl_cleanup_after_signal)

dnl Check for modern readline naming
AC_CHECK_FUNCS(rl_filename_completion_function)

dnl Check for rl_get_keymap.  We only use this for deciding whether to
dnl install paren matching on the Guile command line (when using
dnl readline for input), so it's completely optional.
AC_CHECK_FUNCS(rl_get_keymap_name)

AC_CACHE_CHECK([for rl_getc_function pointer in readline],
		 ac_cv_var_rl_getc_function,
		 [AC_LINK_IFELSE([AC_LANG_PROGRAM([[
#include <stdio.h>
#include <readline/readline.h>]], [[printf ("%ld", (long) rl_getc_function)]])],[ac_cv_var_rl_getc_function=yes],[ac_cv_var_rl_getc_function=no])])
if test "${ac_cv_var_rl_getc_function}" = "yes"; then
  AC_DEFINE(HAVE_RL_GETC_FUNCTION, 1,
    [Define if your readline library has the rl_getc_function variable.])
fi

if test $ac_cv_lib_readline_readline = yes \
        -a $ac_cv_var_rl_getc_function = no; then
  AC_MSG_WARN([*** libreadline is too old on your system.])
  AC_MSG_WARN([*** You need readline version 2.1 or later.])
fi

AC_CHECK_FUNCS(strdup)

. $srcdir/LIBGUILEREADLINE-VERSION
AC_SUBST(LIBGUILEREADLINE_MAJOR)
AC_SUBST(LIBGUILEREADLINE_INTERFACE_CURRENT)
AC_SUBST(LIBGUILEREADLINE_INTERFACE_REVISION)
AC_SUBST(LIBGUILEREADLINE_INTERFACE_AGE)
AC_SUBST(LIBGUILEREADLINE_INTERFACE)

AC_SUBST(GUILE_EFFECTIVE_VERSION)

AC_CONFIG_FILES(Makefile ice-9/Makefile)
AC_OUTPUT
