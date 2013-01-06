(std:in-package #:std.message)

(cl:defgeneric send (object message &rest params)
  (:documentation 
"Message passing object system. MESSAGE is recommended to be keyword")
  (:method (object (message (eql :copy)) &rest params)
    (declare (ignore params))
    (copy object)))

(macro:! ! (class message lambda-list &body body)
  `(cl:defmethod send (,class (message (eql ,message)) &rest params)
     (bind ,lambda-list params
        . ,body)))

(! self :eq? (value)
   (eq self value))

(! self :eql? (value)
   (eql self value))

(! self :equal? (value)
   (equal self value))

(! self :equalp? (value)
   (equalp self value))

(! self :== (value)
   (equals self value))

(! self :tap (func)
   (cl:funcall func self)
   self)


  