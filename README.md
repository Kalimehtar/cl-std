cl-std
======

Restructured standard library for Common Lisp

Guidelines:
- USE-PACKAGE only when extending package
- foo:! means "Create foo". For example, list:! == cl:list array:! == cl:make-array and so on
- foo:? menas "Is it foo?". For example, list:? == listp, hash-table:? == hash-table-p
- Only minimum symbols in base package