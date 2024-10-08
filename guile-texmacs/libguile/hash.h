/* classes: h_files */

#ifndef SCM_HASH_H
#define SCM_HASH_H

/* Copyright (C) 1995,1996,2000, 2006 Free Software Foundation, Inc.
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



#include "libguile/__scm.h"



SCM_API nat scm_string_hash (const unsigned char *str, size_t len);
SCM_API nat scm_hasher (SCM obj, nat n, size_t d);
SCM_API nat scm_ihashq (SCM obj, nat n);
SCM_API SCM scm_hashq (SCM obj, SCM n);
SCM_API nat scm_ihashv (SCM obj, nat n);
SCM_API SCM scm_hashv (SCM obj, SCM n);
SCM_API nat scm_ihash (SCM obj, nat n);
SCM_API SCM scm_hash (SCM obj, SCM n);
SCM_API void scm_init_hash (void);

static inline nat
scm_ihash_var (SCM obj, nat n, void* closure)
{
  (void) closure;
  return scm_ihash (obj, n);
}

static inline nat
scm_ihashq_var (SCM obj, nat n, void* closure)
{
  (void) closure;
  return scm_ihashq (obj, n);
}

static inline nat
scm_ihashv_var (SCM obj, nat n, void* closure)
{
  (void) closure;
  return scm_ihashv (obj, n);
}

#endif  /* SCM_HASH_H */

/*
  Local Variables:
  c-file-style: "gnu"
  End:
*/
