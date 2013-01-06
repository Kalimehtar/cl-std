(asdf:defsystem #:std-base
  :serial t
  :depends-on (#:advanced-readtable 
               #:iterate #:alexandria #:closer-mop
               #:metabang-bind)
  :components ((:file "declare")
               (:file "std")
               (:file "base.package")
               (:file "message.package")
               (:file "base")               
               (:file "symbol.package")
               (:file "symbol")
               (:file "package.package")
               (:file "package")
               (:file "macro.package")
               (:file "macro")
               (:file "message")               
               (:file "function.package")
               (:file "function")
               (:file "method.package")
               (:file "method")
               (:file "const.package")
               (:file "const")))

(asdf:defsystem #:std-container
  :serial t
  :depends-on (#:std-base)
  :components ((:file "container.package")
               (:file "container")))

(asdf:defsystem #:std-sequence
  :serial t
  :depends-on (#:std-container)
  :components ((:file "sequence.package")
               (:file "sequence")))

(asdf:defsystem #:std-number
  :serial t
  :depends-on (#:std-base)
  :components ((:file "number.package")
               (:file "number")))

(asdf:defsystem #:std-string
  :serial t
  :depends-on (#:std-sequence)
  :components ((:file "string.package")
               (:file "string")))

(asdf:defsystem #:std-list
  :serial t
  :depends-on (#:std-sequence)
  :components ((:file "list.package")
               (:file "list")))

(asdf:defsystem #:std
  :depends-on (#:std-list))

