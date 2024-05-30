/* classes: h_files */

#ifndef SCM_PROPERTIES_H
#define SCM_PROPERTIES_H

/* Copyright (C) 1995,1996,1998,2000, 2006 Free Software Foundation, Inc.
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

SCM_API SCM scm_primitive_make_property (SCM not_found_proc);
SCM_API SCM scm_primitive_property_ref (SCM prop, SCM obj);
SCM_API SCM scm_primitive_property_set_x (SCM prop, SCM obj, SCM val);
SCM_API SCM scm_primitive_property_del_x (SCM prop, SCM obj);

SCM_API void scm_init_properties (void);

#endif  /* SCM_PROPERTIES_H */

/*
  Local Variables:
  c-file-style: "gnu"
  End:
*/
