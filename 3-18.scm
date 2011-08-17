(define (cycle? x)
 (cond ((null? (cdr x)) #f)
  ((eq? (cdr x) 'counted) #t)
  (else 
   (begin 
     (let ((temp (cdr x)))
       (set-cdr! x 'counted)
       (cycle? temp))))))

(define y (cons 1 '()))
(set-cdr! y y)
#?=(cycle? y)
#?=(cycle? (list 1 2 3))
