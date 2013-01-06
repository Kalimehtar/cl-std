(defpackage #:std.base
  (:use)
  (:import-from #:cl 
                #:&rest #:&key #:&allow-other-keys #:&optional #:&body #:&whole
                #:or #:not #:and #:nil #:t
                #:declare ; #:proclaim #:declaim rare used
                #:cond #:case #:ccase #:ecase 
                #:if #:do #:do* #:let #:let* #:labels #:flet
                #:setf ; #:setq #:set rare used
                #:eval-when 
                #:let #:let* #:macrolet #:flet #:labels
                #:typecase #:etypecase #:ctypecase
                #:eq #:eql #:equal #:equalp
                #:member #:values #:lambda #:funcall
                #:defun #:the #:locally #:declare
                #:defmethod #:defgeneric #:defmacro
                #:every #:listp #:car #:apply
                #:when #:unless
                #:defvar #:defparameter
                #:block #:catch #:throw #:tagbody #:go #:return-from #:return
                #:prog1 #:progn
                #:*readtable* #:*package*)
  (:import-from #:advanced-readtable
                #:find-symbol #:find-package)
  (:import-from #:iterate #:iter)
  (:import-from #:metabang-bind #:bind)
  (:export
   #:copy #:@
   #:+ #:- #:* #:/ #:/= #:< #:> #:>= #:<= #:=
   ;; CDR 8
   #:equals
   #:compare
   ;; reexport
   #:setf
   #:cond #:case #:ccase #:ecase 
   #:if #:do #:do* #:let #:let* #:labels #:flet
   #:when #:unless
   #:typecase #:etypecase #:ctypecase
   #:declare #:eval-always
   #:not #:and #:or #:nil #:t
   #:eq #:eql #:equal #:equalp 
   #:member #:values #:lambda #:funcall
   #:the #:locally
   #:find-symbol #:find-package
   #:&rest #:&key #:&allow-other-keys #:&optional #:&body #:&whole
   #:defvar #:defparameter #:bind
   #:block #:catch #:throw #:tagbody #:go #:return-from #:return
   #:prog1 #:progn
   #:*readtable* #:*package*))
