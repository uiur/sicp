(define (new-good-enough? guess x)
 (< (abs (- 1.0 (/ guess (improve guess x)))) 0.001))
