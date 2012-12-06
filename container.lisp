(in-package #:std.container)

(cl:defgeneric length (container)
  (:documentation "Number of elements in the CONTAINER"))

(cl:defgeneric push (container value)
  (:documentation "Add VALUE to CONTAINER"))

(cl:defgeneric map (function container)
  (:documentation "Call FUNCTION on every element in CONTAINER"))
