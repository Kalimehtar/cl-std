(std:in-package #:std.list)

(cl:deftype ! () 'cl:list)

(cl:defmacro ? (object) `(cl:listp ,object))

(func:! filter (list cond)
  (iter (for i in list)
        (when (func:call cond i)
          (collect i))))


