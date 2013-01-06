(defpackage #:std.symbol
  (:use #:std.base)
  (:export 
   #:! #:? #:$
   #:macro #:function #:bound? #:fbound? #:unbound! #:funbound!
   #:keyword? #:gen #:function #:name #:package #:plist #:value
   #:prop #:remprop
   #:f! #:m! #:f!!))