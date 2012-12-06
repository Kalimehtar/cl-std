(defpackage #:std.list
  (:use #:std.base)
  (:import-from #:cl 
                #:first 
                #:rest
                #:map 
                #:append)
  (:export
   #:! #:?
   #:first 
   #:rest
   #:map 
   #:append))
