(defpackage #:std.package
  (:use #:std.base)
  (:export #:! #:? #:$
           #:name #:find #:list-all
           #:nicknames #:use #:used-by #:shadowing-symbols
           #:use! #:unuse!))