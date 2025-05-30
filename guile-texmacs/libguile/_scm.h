/* classes: h_files */

#ifndef SCM__SCM_H
#define SCM__SCM_H

/* Copyright (C) 1995,1996,2000,2001, 2002, 2006, 2008 Free Software Foundation, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */



/**********************************************************************
 This file is Guile's central private header.

 When included by other files, this file should preceed any include
 other than __scm.h.  See __scm.h for details regarding the purpose of
 and differences between _scm.h and __scm.h.
 **********************************************************************/

#if defined(__ia64) && !defined(__ia64__)
# define __ia64__
#endif

#if HAVE_CONFIG_H
#  include <config.h>
#endif

/* Undefine HAVE_STRUCT_TIMESPEC, because the libguile C code doesn't
   need it anymore, and because on MinGW:

   - the definition of struct timespec is provided (if at all) by
     pthread.h

   - pthread.h will _not_ define struct timespec if
     HAVE_STRUCT_TIMESPEC is 1, because then it thinks that it doesn't
     need to.

   The libguile C code doesn't need HAVE_STRUCT_TIMESPEC anymore,
   because the value of HAVE_STRUCT_TIMESPEC has already been
   incorporated in how scm_t_timespec is defined (in scmconfig.h), and
   the rest of the libguile C code now just uses scm_t_timespec.
 */
#ifdef HAVE_STRUCT_TIMESPEC
#undef HAVE_STRUCT_TIMESPEC
#endif

#include <errno.h>
#include "libguile/__scm.h"

/* Include headers for those files central to the implementation.  The
   rest should be explicitly #included in the C files themselves.  */
#include "libguile/error.h"	/* Everyone signals errors.  */
#include "libguile/print.h"	/* Everyone needs to print.  */
#include "libguile/pairs.h"	/* Everyone conses.  */
#include "libguile/list.h"	/* Everyone makes lists.  */
#include "libguile/gc.h"	/* Everyone allocates.  */
#include "libguile/gsubr.h"	/* Everyone defines global functions.  */
#include "libguile/procs.h"	/* Same.  */
#include "libguile/numbers.h"	/* Everyone deals with fixnums.  */
#include "libguile/symbols.h"	/* For length, chars, values, miscellany.  */
#include "libguile/boolean.h"	/* Everyone wonders about the truth.  */
#include "libguile/threads.h"	/* You are not alone. */
#include "libguile/snarf.h"	/* Everyone snarfs. */
#include "libguile/variable.h"
#include "libguile/modules.h"
#include "libguile/inline.h"

#ifndef SCM_SYSCALL
#ifdef vms
# ifndef __GNUC__
#  include <ssdef.h>
#  define SCM_SYSCALL(line) do{errno = 0;line;} \
	while(EVMSERR==errno && (vaxc$errno>>3)==(SS$_CONTROLC>>3))
# endif /* ndef __GNUC__ */
#endif /* def vms */
#endif /* ndef SCM_SYSCALL  */

#ifndef SCM_SYSCALL
# ifdef EINTR
#  if (EINTR > 0)
#   define SCM_SYSCALL(line) do{errno = 0;line;}while(EINTR==errno)
#  endif /*  (EINTR > 0) */
# endif /* def EINTR */
#endif /* ndef SCM_SYSCALL */

#ifndef SCM_SYSCALL
# define SCM_SYSCALL(line) line;
#endif /* ndef SCM_SYSCALL */



#ifndef min
#define min(A, B) ((A) <= (B) ? (A) : (B))
#endif
#ifndef max
#define max(A, B) ((A) >= (B) ? (A) : (B))
#endif


#include "system.h"

#if SIZEOF_OFF_T == 4
#  define scm_to_off_t    scm_to_int32
#  define scm_from_off_t  scm_from_int32
#elif SIZEOF_OFF_T == 8
#  define scm_to_off_t    scm_to_int64
#  define scm_from_off_t  scm_from_int64
#else
#  error sizeof(off_t) is not 4 or 8.
#endif
#define scm_to_off64_t    scm_to_int64
#define scm_from_off64_t  scm_from_int64


#endif  /* SCM__SCM_H */

/*
  Local Variables:
  c-file-style: "gnu"
  End:
*/
