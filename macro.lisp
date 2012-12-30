(std:in-package #:std.macro)

(setf (cl:fdefinition 'function) 
      (cl:fdefinition 'cl:macro-function)
      (cl:fdefinition '(setf function)) 
      (cl:fdefinition '(setf cl:macro-function)))

(setf (macro:function '!) (macro:function 'cl:defmacro))

(cl:defun ? (symbol)
  (and (cl:fboundp symbol) (cl:macro-function symbol)))

(cl:defmacro macro:let (definitions &rest body)
  `(cl:macrolet ,definitions . ,body))
