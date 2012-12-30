(std:in-package #:std.function)

(setf (macro:function '!) (macro:function 'cl:defun))

(setf (cl:fdefinition '(setf definition))
      (cl:fdefinition '(setf cl:fdefinition))
      (cl:fdefinition 'definition)
      (cl:fdefinition 'cl:fdefinition))

(setf (definition '?) (definition 'cl:functionp))


