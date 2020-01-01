
/******************************************************************************
* MODULE     : number_parser.hpp
* DESCRIPTION: shared number parsing routines for various programming languages
* COPYRIGHT  : (C) 2019  Darcy Shen
*******************************************************************************
* This software falls under the GNU general public license version 3 or later.
* It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
* in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
******************************************************************************/

#ifndef NUMBER_PARSER_H
#define NUMBER_PARSER_H

#include "parser.hpp"

class number_parser_rep : public parser_rep {
public:
  number_parser_rep ();

  bool can_parse (string s, int pos);
  string get_parser_name () { return "number_parser"; }

  inline void support_double_suffix (bool param) { double_suffix= param; }
  inline void support_float_suffix (bool param) { float_suffix= param; }
  inline void support_j_suffix (bool param) { j_suffix= param; }
  inline void support_long_suffix (bool param) { long_suffix= param; }
  inline void support_ull_suffix (bool param) { ull_suffix= param; }
  inline void support_locase_i_suffix (bool param) { locase_i_suffix= param; }
  inline void support_scientific_notation (bool param) { scientific_notation= param; }
  inline void support_prefix_0x (bool param) { prefix_0x= param; }
  inline void support_prefix_0b (bool param) { prefix_0b= param; }
  inline void support_prefix_0o (bool param) { prefix_0o= param; }
  inline void support_no_suffix_with_box (bool param) { no_suffix_with_box= param; }
  inline void support_separator (char param) { sep= param; separator= true; }
  inline bool is_separator (char param) { return separator && sep == param; }

  void use_cpp_style ();
  void use_python_style ();
  void use_fortran_style ();
  void use_java_style ();
  void use_scala_style ();
  void use_r_style ();

private:
  bool long_suffix;
  bool double_suffix;
  bool float_suffix;
  bool j_suffix;
  bool ull_suffix;
  bool locase_i_suffix;
  bool scientific_notation;
  bool prefix_0b;
  bool prefix_0x;
  bool prefix_0o;
  bool no_suffix_with_box;
  bool separator;
  char sep;

  void do_parse (string s, int& pos);

  bool can_parse_prefix_0b (string s, int pos);
  bool can_parse_prefix_0o (string s, int pos);
  bool can_parse_prefix_0x (string s, int pos);

  void parse_binary (string s, int& pos);
  void parse_hex (string s, int& pos);
  void parse_octal (string s, int& pos);
  void parse_suffix (string s, int& pos);
  void parse_decimal (string s, int& pos);
};

#endif // defined NUMBER_PARSER_H
