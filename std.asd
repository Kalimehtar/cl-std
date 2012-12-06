(asdf:defsystem #:std-base
  :serial t
  :components ((:file "base.package")
               (:file "base")))

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

