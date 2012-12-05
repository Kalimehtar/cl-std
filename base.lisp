(in-package #:std.base)

(defgeneric copy (object)
  (:documentation "Returns shallow copy of object")
  (:method (primitive)
    primitive))

(defgeneric + (arg &rest args)
  (:documentation ("Common + operation.")))

(defgeneric - (arg &rest args)
  (:documentation ("Common - operation.")))

(defgeneric * (arg &rest args)
  (:documentation ("Common * operation.")))

(defgeneric / (arg &rest args)
  (:documentation ("Common / operation.")))

(defun = (arg &rest args)
  (every (lambda (x) (equals arg x)) args)) 

(defgeneric equals (x y &rest keys &key recursive &allow-other-keys)
  (:documentation ("Common logical equality operation (CDR 8)"))
  (:method (x y &key)
    (eq x y)))

(defgeneric compare (x y &rest keys &key recursive &allow-other-keys)
  (:documentation ("Common logical comparison operation (CDR 8)
Returns member of '(< > = /=)"))
  (:method (x y &key) 
    (if (equals x y) '= '/=)))
  
(defun < (arg &rest args)
  (and (eq (compare arg (car args)) '<)
       (apply #'< args)))

(defun <= (arg &rest args)
  (and (member (compare arg (car args)) '(< =))
       (apply #'<= args)))

(defun >= (arg &rest args)
  (and (member (compare arg (car args)) '(> =))
       (apply #'>= args)))

(defun > (arg &rest args)
  (and (eq (compare arg (car args)) '>)
       (apply #'> args)))

(defun /= (arg &rest args)
  (and (every (lambda (x) (not (= arg x))) args)
       (/= args)))
