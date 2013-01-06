(std:in-package #:std.message)

(macro:! ! (class message lambda-list &body body)
  `(cl:defmethod send ((,(intern "SELF") ,class) (message (eql ,message)) &rest params)
     (bind:,lambda-list params
        . ,body)))

(! t :eq? (value)
   (eq self value))

(! t :eql? (value)
   (eql self value))

(! t :equal? (value)
   (equal self value))

(! t :equalp? (value)
   (equalp self value))

(! t :== (value)
   (equals self value))

(! t :tap (func)
   (cl:funcall func self)
   self)


  