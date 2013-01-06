(std:in-package #:std.alist)

(macro:! ! (keys data &optional alist)
  `(cl:pairlis ,keys ,data ,alist))

(function:! ? (object)
  (and (cl:listp object) (cl:every #'consp object)))

(macro:! cons (key datum alist)
  `(cl:acons ,key ,datum ,alist))