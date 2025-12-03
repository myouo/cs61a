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
    [(pred (car s))
     (cons (car s) (my-filter pred (cdr s)))]
    [else
     (my-filter pred (cdr s))]))


(define (interleave lst1 lst2) 
    (cond
        [(null? lst1) lst2]
        [(null? lst2) lst1]
        [else (cons (car lst1) (cons (car lst2) (interleave (cdr lst1) (cdr lst2))))]
        )

)

(define (no-repeats s) 
    (define (my-member val s)
        (cond
            [(null? s) #f]
            [(= val (car s)) #t]
            [else (my-member val (cdr s))]
        )
    )

    (define (my-reverse s)
        (define (helper s acc)
            (if (null? s)
                acc
                (helper (cdr s) (cons (car s) acc))
            )
        )
        (helper s '())
    )

    (define (helper s seen)
        (cond
            [(null? s) seen]
            [(my-member (car s) seen) (helper (cdr s) seen)]
            [else (helper (cdr s) (cons (car s) seen))]
        )
    )
    (my-reverse (helper s '()))
)
