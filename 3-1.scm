(define (make-accumulator result)
 (lambda (num)
  (begin (set! result (+ result num))
   result)))
