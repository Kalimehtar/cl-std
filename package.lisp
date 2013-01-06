(std:in-package #:std.package)

(cl:defmacro ! (package &rest options)
  (unless (cl:find :use options :key #'cl:car)
    (cl:push '(:use) options))
  `(cl:defpackage ,package . ,options))

(symbol:f! ? cl:packagep
           name cl:package-name
           $ cl:delete-package
           find advanced-readtable:find-package
           list-all cl:list-all-packages
           name cl:package-name
           nicknames cl:package-nicknames
           use cl:package-use-list
           used-by cl:package-use-list
           shadowing-symbols cl:package-use-list
           use! cl:use-package
           unuse! cl:unuse-package)

(cl:deftype ! () 'package)