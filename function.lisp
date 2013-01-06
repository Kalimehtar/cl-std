(std:in-package #:std.func)

(symbol:m! ! cl:defun)

(symbol:f!! definition cl:fdefinition)
(symbol:f! ? cl:functionp
           bound? cl:fboundp
           $ cl:fmakunbound)

(cl:deftype ! (&optional arg-typespec value-typespec)
  (if value-typespec
    `(cl:function ,arg-typespec ,value-typespec)
    (if arg-typespec
        `(cl:function ,arg-typespec)
        'cl:function)))