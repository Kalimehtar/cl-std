(defpackage #:std.base
  (:use)
  (:import-from #:cl 
                #:&rest #:&key #:&allow-other-keys #:&optional #:&body #:&whole
                #:or #:not #:and #:nil #:t
                #:declare #:proclaim #:declaim
                #:cond #:case #:ccase #:ecase #:if #:do #:do* #:loop
                #:setf #:setq
                #:eval-when 
                #:let #:let* #:macrolet #:flet #:labels
                #:typecase #:etypecase #:ctypecase
                #:eq #:eql #:equal #:equalp
                #:member #:values #:let #:let*
                #:defun #:the #:declare
                #:defmethod #:defgeneric #:defmacro)
  (:import-from #:advanced-readtable
                #:find-symbol #:find-package)
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
   #:not
   #:and
   #:or
   #:eql
   #:eq
   #:equal
   #:equalp
   #:member
   #:values
   #:let
   #:let*
   #:the
   #:&rest #:&key #:&allow-other-keys #:&optional #:&body #:&whole))
