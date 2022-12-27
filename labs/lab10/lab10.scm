(define (over-or-under num1 num2) 
    
        (if (> num1 num2)
        1
        (if (< num1 num2)
        -1
        (if (= num1 num2)
        0    
        )))
)

(define (make-adder num) 
    
    (define (adder x)
        (+ x num)
        )
    adder
    
    )

(define (composed f g) 
    (define (composite x)
    (f (g x))
    )
composite
)
(define lst (list (cons 1 nil) 2 (cons 3 (cons 4 nil)) 5))

(define (duplicate lst) 'YOUR-CODE-HERE)
