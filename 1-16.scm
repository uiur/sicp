(define (exp b n)
  (exp-iter n 1 b))

(define (exp-iter n a b)
  (cond ((= n 0) a)
    ((even? n) (exp-iter (/ n 2) (* a (square a)) b))
    (else (exp-iter (- n 1) (* a b) b))))

(define (square x)
  (* x x))

(print (exp 2 10))

