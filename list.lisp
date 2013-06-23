(in-package #:std.list)

(cl:deftype ! () 'cl:list)

(cl:defmacro ? (object) `(cl:listp ,object))
