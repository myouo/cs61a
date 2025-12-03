(define (ascending? s) 
    (cond
        [(null? s) #t]
        [(null? (cdr s)) #t]
        [(> (car s) (car (cdr s))) #f]
        [else (ascending? (cdr s))]
    )
)

(define (my-filter pred s) 
    (cond
        [(null? s) nil]
        [((pred 1) )]

    )
)

(define (interleave lst1 lst2) 'YOUR-CODE-HERE)

(define (no-repeats s) 'YOUR-CODE-HERE)
