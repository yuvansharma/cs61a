(define-macro (when condition exprs)
  
  (list 'if condition (cons 'begin exprs) ''okay)
)
  
  ;(list 'if condition `(begin ,exprs) ''okay)
  ;)
;)
;(begin (eval (car exprs)) (when condition (cdr exprs)))
;(begin (if condition ______ 'okay) )
; 
(define-macro (switch expr cases)
  (let ((val (eval expr)))
  (cons 'cond
        (map (lambda (case)
                        (cons (eq? val (car case)) (cdr case)))
             cases))))