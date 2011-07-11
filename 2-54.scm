(define (equal? a b)
  (cond ((and (null? a) (null? b)) 
          #t)
        ((eq? (car a) (car b))
         (equal? (cdr a) (cdr b)))
        (else 
          #f)))
