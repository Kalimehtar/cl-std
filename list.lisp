(in-package #:std.list)

(cl:deftype ! () 'cl:list)

(defun ? (object) (cl:listp object))
