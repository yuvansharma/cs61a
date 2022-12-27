(define (cddr s) (cdr (cdr s)))

(define (cadr s) (car (cdr s)))

(define (caddr s) (car (cdr (cdr s))))

(define (ascending? asc_lst) 
        (if (or (null? asc_lst) (null? (cdr asc_lst)))
        #t
        (if (> (car asc_lst) (car (cdr asc_lst)))
        #f
        (ascending? (cdr asc_lst))

        )
        )
        
)

(define (square n) (* n n))

(define (pow base exp) 
        (if (or (= base 0) (= base 1))
        base
        

        (if (= exp 1)
        base
        
        (if (even? exp)
        (square (pow base (/ exp 2)))
        
        (if (odd? exp)
        (* (square (pow base (/ (- exp 1) 2))) base)
        
        )
        )))
)
