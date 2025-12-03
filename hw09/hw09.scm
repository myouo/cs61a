(define (curry-cook formals body)
  (if (null? formals)
      body
      (let ((first (car formals))
            (rest  (cdr formals)))
        (list 'lambda (list first)
              (curry-cook rest body)))))


(define (curry-consume curry args)
  (if (null? args)
      curry
      (curry-consume (curry (car args))
                     (cdr args)
      )
  )
)


(define-macro (switch expr options)
  (switch-to-cond (list 'switch expr options)))

(define (switch-to-cond switch-expr)
  (cons _________
        (map (lambda (option)
               (cons _______________ (cdr option)))
             (car (cdr (cdr switch-expr))))))
