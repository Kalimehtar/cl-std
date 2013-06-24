(defpackage #:std.func
  (:use #:std.base)
  (:import-from #:cl #:apply)
  (:export
   #:! #:? #:$
   #:definition #:bound?
   #:apply #:call))