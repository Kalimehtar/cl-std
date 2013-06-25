cl-std
======

Restructured standard library for Common Lisp

Guidelines:
- USE-PACKAGE only when extending package
- foo:! means "Create foo". For example, list:! == cl:list array:! == cl:make-array and so on. Also foo:! designates type.
- foo:? means "Is it foo?". For example, list:? == listp, hash-table:? == hash-table-p
- foo:$ means "destroy foo"
- Only minimum symbols in base package

Used:
- advanced-readtable
- iterate
- message-oo (not yet, will replace implementation of std.message)

Weak dependencies (not yet):
- cffi
- bordeax-threads
- closer-mop

Implemented:
http://cdr.eurolisp.org/document/8/index.html

Usage examples:

    (std:defpackage #:test (:use #:base))
    (std:in-package #:test)

    (func:! sort (list)
        (when list
            (list:append
                (sort (list:filter list 
                                   (func:!! (x) (< x (list:first list)))))
                (list:filter list (func:!! (x) (= x (list:first list))))
                (sort (list:filter list 
                                   (func:!! (x) 
                                            (> x (list:first list))))))))

Of course, you may mix std and cl and use cl:lambda instead of func:!!.
    
