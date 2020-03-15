
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MODULE      : python-lang.scm
;; DESCRIPTION : Python Language
;; COPYRIGHT   : (C) 2020  Darcy Shen
;;
;; This software falls under the GNU general public license version 3 or later.
;; It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
;; in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(texmacs-module (prog python-lang))

(tm-define (python-keywords)
  (list
   `(constant
     "Ellipsis" "False" "None" "NotImplemented" "True" "__debug__" "__import__" "abs"
     "all" "any" "apply" "ascii" "basestring" "bin" "bool" "buffer"
     "bytearray" "bytes" "callable" "chr" "classmethod" "cmp" "coerce" "compile"
     "complex" "delattr" "dict" "dir" "divmod" "enumerate" "eval" "execfile"
     "file" "filter" "float" "format" "frozenset" "getattr" "globals" "hasattr"
     "hash" "help" "hex" "id" "input" "int" "intern" "isinstance"
     "issubclass" "iter" "len" "list" "locals" "long" "map" "max"
     "memoryview" "min" "next" "nonlocal" "object" "oct" "open" "ord"
     "pow" "property" "range" "raw_input" "reduce" "reload" "repr" "reversed"
     "round" "set" "setattr" "slice" "sorted" "staticmethod" "str" "sum"
     "super" "tuple" "type" "unichr" "unicode" "vars" "xrange" "zip"
     "BaseException" "Exception" "ArithmeticError" "EnvironmentError" "LookupError"
     "StandardError" "AssertionError" "AttributeError" "BufferError" "EOFError"
     "FloatingPointError" "GeneratorExit" "IOError" "ImportError" "IndentationError"
     "IndexError" "KeyError" "KeyboardInterrupt" "MemoryError" "NameError"
     "NotImplementedError" "OSError" "OverflowError" "ReferenceError" "RuntimeError"
     "StopIteration" "SyntaxError" "SystemError" "SystemExit" "TabError"
     "TypeError" "UnboundLocalError" "UnicodeError" "UnicodeDecodeError" "UnicodeEncodeError"
     "UnicodeTranslateError" "ValueError" "VMSError" "WindowsError" "ZeroDivisionError"
     "BytesWarning" "DeprecationWarning" "FutureWarning" "ImportWarning" "PendingDeprecationWarning"
     "RuntimeWarning" "SyntaxWarning" "UnicodeWarning" "UserWarning" "Warning")
   `(declare_function "def" "lambda")
   `(declare_module "import")
   `(declare_type "class")
   `(keyword
     "as" "del" "from" "global" "in" "is" "with")
   `(keyword_conditional
     "break" "continue" "elif" "else" "for" "if" "while")
   `(keyword_control
     "assert" "except" "exec" "finally" "pass" "print" "raise" "return"
     "try" "yield")))

(tm-define (python-operators)
  (list
   `(operator
     "and" "not" "or"
     "+" "-" "/" "*" "**" "//" "%" "|" "&" "^"
     "<less><less>" "<gtr><gtr>" "==" "!="
     "<less><gtr>" "<less>" "<gtr>" "<less>=" "<gtr>="
     "=" "+=" "-=" "/=" "*=" "%=" "|=" "&=" "^="
     "**=" "//=" "<less><less>=" "<gtr><gtr>="
     "~")
   `(operator_special ":")
   `(operator_decoration "@")
   `(operator_field ".")
   `(operator_openclose "{" "[" "(" ")" "]" "}")))
