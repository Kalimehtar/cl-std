(std:in-package #:std.macro)

(symbol:f!! function cl:macro-function
            compiler-function cl:compiler-macro-function)
(symbol:f! expand cl:macroexpand
           expand-1 cl:macroexpand-1)

(advanced-readtable:set-macro-symbol  '*expand-hook* 
                                      (cl:lambda (stream symbol) 
                                        (declare (ignore stream symbol))
                                        'cl:*macroexpand-hook*))

(symbol:m! ! cl:defmacro
           define-compiler cl:define-compiler-macro)

(cl:defun ? (symbol)
  (and (cl:fboundp symbol) (cl:macro-function symbol)))

(cl:defun $ (symbol)
  (setf (function symbol) nil))

(cl:defmacro let (definitions &rest body)
  `(cl:macrolet ,definitions . ,body))


