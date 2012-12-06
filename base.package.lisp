(defpackage #:std.base
  (:use #:cl)
  (:shadow
   #:+ #:- #:* #:/
   #:< #:> #:= #:>= #:<= #:/=)
  (:export
   #:copy
   #:+
   #:-
   #:*
   #:/
   #:/=
   #:<
   #:>
   #:>=
   #:<=
   #:=
   ;; CDR 8
   #:equals
   #:compare
   ;; reexport
   #:defun
   #:defmacro
   #:setf
   #:do
   #:do*
   #:if
   #:cond
   #:case
   #:ccase
   #:ecase
   #:typecase
   #:etypecase
   #:ctypecase
   #:declare
   #:optimize
   #:debug
   #:speed
   #:type
   #:typep
   #:subtypep
   #:satisfies
   #:not
   #:and
   #:or
   #:type-of
   #:eql
   #:eq
   #:equal
   #:equalp
   #:member
   #:values
   #:let
   #:let*))
