/* classes: h_files */

#ifndef SCM_SORT_H
#define SCM_SORT_H

/* Copyright (C) 1999,2000, 2006 Free Software Foundation, Inc.
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



SCM_API SCM scm_restricted_vector_sort_x (SCM vec,
					  SCM less,
					  SCM startpos,
					  SCM endpos);
SCM_API SCM scm_sorted_p (SCM ls, SCM less);
SCM_API SCM scm_merge (SCM ls1, SCM ls2, SCM less);
SCM_API SCM scm_merge_x (SCM ls1, SCM ls2, SCM less);
SCM_API SCM scm_sort (SCM ls, SCM less);
SCM_API SCM scm_sort_x (SCM ls, SCM less);
SCM_API SCM scm_stable_sort (SCM ls, SCM less);
SCM_API SCM scm_stable_sort_x (SCM ls, SCM less);
SCM_API SCM scm_sort_list (SCM ls, SCM less);
SCM_API SCM scm_sort_list_x (SCM ls, SCM less);
SCM_API void scm_init_sort (void);

#endif  /* SCM_SORT_H */

/*
  Local Variables:
  c-file-style: "gnu"
  End:
*/
