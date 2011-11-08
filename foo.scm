(define (accumulate combiner null-value term a next b)
  (if (> a b)
   null-value
   (combiner (term a) (accumulate combiner null-value term (next a) next b))))
(define (accumulate2 combiner null-value term a next b)
 (if (> a b)
  null-value
  (accumulate2 combiner (combiner null-value (term a)) term (next a) next b)))
(define (sum a b)
 (accumulate + 0 (lambda (x) x) a (lambda (x) (+ x 1)) b))
(define (product a b) 
 (accumulate * 1 (lambda (x) x) a (lambda (x) (+ x 1)) b))
(define (accumulate-iter combiner null-value term a next b)
 (define (iter a result)
  (if (> a b)
   result
   (iter (next a) (combiner (term a) result))))
 (iter a null-value))

(define (sum-iter a b)
 (accumulate-iter + 0 (lambda (x) x) a (lambda (x) (+ x 1)) b))

