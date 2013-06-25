(defpackage #:std
  (:use)
  (:import-from #:advanced-readtable #:defpackage)
  (:export #:in-package #:defpackage))

(in-package #:std)

(cl:defmacro in-package (package)
  `(cl:eval-when (:compile-toplevel :load-toplevel :execute)
     (advanced-readtable:!)
     (advanced-readtable:in-package ,package)
     (advanced-readtable:push-import-prefix :std)
     (advanced-readtable:push-local-package 'cl:declare :std.declare)
     (advanced-readtable:push-local-package 'iterate:iter :iterate)
     ,(cl:when (cl:find-package "SWANK")
               (cl:let ((alist (cl:find-symbol "*READTABLE-ALIST*" "SWANK"))
                        (package (cl:package-name (cl:find-package package))))
                 `(cl:let ((entry (cl:find ,package
                                           ,alist 
                                           :test #'cl:string= :key #'cl:car)))
                    (cl:unless entry
                      (cl:setf entry (cl:cons ,package cl:nil))
                      (cl:push entry ,alist))
                    (cl:setf (cl:cdr entry) cl:*readtable*))))))

