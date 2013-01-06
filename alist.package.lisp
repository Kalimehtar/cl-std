(defpackage #:std.alist
  (:use #:std.base)
  (:import-from #:cl
                #:assoc #:assoc-if #:assoc-if-not
                #:rassoc #:rassoc-if #:rassoc-if-not)
  (:export
   #:! #:? #:cons
   #:assoc #:assoc-if #:assoc-if-not
   #:rassoc #:rassoc-if #:rassoc-if-not))