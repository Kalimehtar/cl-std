(std:in-package #:std.type)

(macro::= ? cl:typep)

(defun < (type1 type2 &rest more-types)
  (if more-types
      (and (< type1 type2) (func:apply #'< type2 more-types))
      (cl:subtypep type1 type2)))


