(define (iterative-improve good-enough? improve)
 (define (foo guess) (if (good-enough? guess) guess (foo (improve guess))))
 foo)

(define (average a b)
 (/ (+ a b) 2))

(define (sqrt x)
  ((iterative-improve (lambda (guess) (< (abs (- (* guess guess) x)) 0.001)) (lambda (guess) (average guess (/ x guess)))) 1.0))

(define (fixed-point f first-guess)
 (define tolerance 0.00001)
 (define (close-enough? guess)
  (< (abs (- guess (f guess))) tolerance))
 ((iterative-improve close-enough? f) first-guess))
