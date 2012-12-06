(in-package #:std.list)

(cl:deftype ! () 'cl:list)

(defmacro ? (object) `(cl:listp ,object))
