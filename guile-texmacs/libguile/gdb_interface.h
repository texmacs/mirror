/* classes: h_files */

#ifndef GDB_INTERFACE_H
#define GDB_INTERFACE_H
/* Simple interpreter interface for GDB, the GNU debugger.
   Copyright (C) 1996, 2000, 2001, 2006 Free Software Foundation

 This library is free software; you can redistribute it and/or
 modify it under the terms of the GNU Lesser General Public
 License as published by the Free Software Foundation; either
 version 2.1 of the License, or (at your option) any later version.

 This library is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 Lesser General Public License for more details.

 You should have received a copy of the GNU Lesser General Public
 License along with this library; if not, write to the Free Software
 Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA

The author can be reached at djurfeldt@nada.kth.se
Mikael Djurfeldt, SANS/NADA KTH, 10044 STOCKHOLM, SWEDEN  */

/* This is the header file for GDB's interpreter interface.  The
   interpreter must supply definitions of all symbols declared in this
   file.

   Before including this file, you must #define GDB_TYPE to be the
   data type used for communication with the interpreter. */

/* The following macro can be used to anchor the symbols of the
   interface in your main program.  This is necessary if the interface
   is defined in a library, such as Guile. */

#if !defined (__MINGW32__) && !defined (__CYGWIN__)
#define GDB_INTERFACE \
void *gdb_interface[] = { \
  &gdb_options, \
  &gdb_language, \
  &gdb_result, \
  &gdb_output, \
  &gdb_output_length, \
  (void *) gdb_maybe_valid_type_p, \
  (void *) gdb_read, \
  (void *) gdb_eval, \
  (void *) gdb_print, \
  (void *) gdb_binding \
}
#else /* __MINGW32__, __CYGWIN__  */
/* Because the following functions are imported from a DLL (some kind of
   shared library) these are NO static initializers. That is why you need to
   define them and assign the functions and data items at run time. */
#define GDB_INTERFACE \
void *gdb_interface[] = \
  { NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL };
#define GDB_INTERFACE_INIT \
  do { \
    gdb_interface[0] = &gdb_options; \
    gdb_interface[1] = &gdb_language; \
    gdb_interface[2] = &gdb_result; \
    gdb_interface[3] = &gdb_output; \
    gdb_interface[4] = &gdb_output_length; \
    gdb_interface[5] = (void *) gdb_maybe_valid_type_p; \
    gdb_interface[6] = (void *) gdb_read; \
    gdb_interface[7] = (void *) gdb_eval; \
    gdb_interface[8] = (void *) gdb_print; \
    gdb_interface[9] = (void *) gdb_binding; \
  } while (0);
#endif /* __MINGW32__ */

/* GDB_OPTIONS is a set of flags informing gdb what features are present
   in the interface.  Currently only one option is supported: */

/* GDB_HAVE_BINDINGS: Set this bit if your interpreter can create new
   top level bindings on demand (through gdb_top_level_binding) */

#define GDB_HAVE_BINDINGS 1

SCM_API unsigned short gdb_options;

/* GDB_LANGUAGE holds the name of the preferred language mode for this
   interpreter.  For lisp interpreters, the suggested mode is "lisp/c". */

SCM_API char *gdb_language;
   
/* GDB_RESULT is used for passing results from the interpreter to GDB */

SCM_API GDB_TYPE gdb_result;

/* The interpreter passes strings to GDB in GDB_OUTPUT and
   GDB_OUTPUT_LENGTH.  GDB_OUTPUT should hold the pointer to the
   string.  GDB_OUTPUT_LENGTH should hold its length.  The string
   doesn't need to be terminated by '\0'. */

SCM_API char *gdb_output;

SCM_API int gdb_output_length;

/* Return TRUE if the interpreter regards VALUE's type as valid.  A
   lazy implementation is allowed to pass TRUE always.  FALSE should
   only be returned when it is certain that VALUE is not valid.

   In the "lisp/c" language mode, this is used to heuristically
   discriminate lisp values from C values during printing. */

SCM_API int gdb_maybe_valid_type_p (GDB_TYPE value);

/* Parse expression in string STR.  Store result in GDB_RESULT, then
   return 0 to indicate success.  On error, return -1 to indicate
   failure.  An error string can be passed in GDB_OUTPUT and
   GDB_OUTPUT_LENGTH.  Be careful to set GDB_OUTPUT_LENGTH to zero if
   no message is passed.  Please note that the resulting value should
   be protected against garbage collection. */

SCM_API int gdb_read (char *str);

/* Evaluate expression EXP.  Store result in GDB_RESULT, then return 0
   to indicate success.  On error, return -1 to indicate failure.  Any
   output (both on success and failure) can be passed in GDB_OUTPUT
   and GDB_OUTPUT_LENGTH.  Be careful to set GDB_OUTPUT_LENGTH to zero
   if no output is passed.  Please note that the resulting lisp object
   should be protected against garbage collection. */

SCM_API int gdb_eval (GDB_TYPE exp);

/* Print VALUE.  Store output in GDB_OUTPUT and GDB_OUTPUT_LENGTH.
   Return 0 to indicate success.  On error, return -1 to indicate
   failure.  GDB will not look at GDB_OUTPUT or GDB_OUTPUT_LENGTH on
   failure.  Note that this function should be robust against strange
   values.  It could in fact be passed any kind of value. */

SCM_API int gdb_print (GDB_TYPE value);

/* Bind NAME to VALUE in interpreter.  (GDB has previously obtained
   NAME by passing a string to gdb_read.)  Return 0 to indicate
   success or -1 to indicate failure.  This feature is optional.  GDB
   will only call this function if the GDB_HAVE_BINDINGS flag is set
   in gdb_options.  Note that GDB may call this function many times
   for the same name.

   For scheme interpreters, this function should introduce top-level
   bindings. */

SCM_API int gdb_binding (GDB_TYPE name, GDB_TYPE value);

#endif  /* GDB_INTERFACE_H */

/*
  Local Variables:
  c-file-style: "gnu"
  End:
*/
