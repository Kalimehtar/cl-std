(in-package #:std.sequence)

(defmethod std.base:copy ((sequence sequence))
  (copy sequence))

(defun copy (sequence)
  (cl:copy-seq sequence))

(defmethod std.base:equals ((x sequence) (y sequence) &key)
  (and (= (length x) (length y))
       (every #'std.base:equals x y)))
