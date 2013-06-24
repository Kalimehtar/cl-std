(std:in-package #:std.symbol)

(eval-always
 (cl:defmacro make-setter (name new old &body body)
   `(cl:defmacro ,name (,new ,old &rest other)
      (if other
          (let ((name ',name))
            `(progn
               (,name ,,new ,,old)
               (,name . ,other)))
          . ,body)))

 (make-setter f! new old
   `(setf (cl:fdefinition ',new) (cl:fdefinition ',old)))
 
 (make-setter m! new old
   `(setf (cl:macro-function ',new) (cl:macro-function  ',old)))
 
 (make-setter f!! new old
   `(progn (f! ,new ,old) (f! (setf ,new) (setf ,old)))))

(f! ? cl:symbolp
    ! cl:intern
    $ cl:unintern
    bound? cl:boundp
    fbound? cl:fboundp
    unbound! cl:makunbound
    funbound! cl:fmakunbound
    keyword? cl:keywordp
    gen cl:gensym
    function cl:symbol-function
    name cl:symbol-name
    package cl:symbol-package
    plist cl:symbol-plist
    value cl:symbol-value
    remprop cl:remprop
    prop cl:get
    find advanced-readtable:find-symbol)

;;; Strange, but in SBCL no (setf get) function
(cl:defun (setf prop) (val symbol indicator &optional default)
  (declare (ignore default))
  (setf (cl:get symbol indicator) val))

(f!! macro cl:macro-function)

(cl:deftype ! () 'cl:symbol)

