(define (product term a next b)
  (if (> a b) 1
    (* (term a) (product term (next a) next b))))

(define (product-iter term a next b)
 (define (iter a result)
  (if (> a b) result
   (iter (next a) (* result (term a)))))
 (iter a 1))

(define (identity x) x)
(define (inc n) (+ n 1))
(define (factorial n)
  (product identity 1 inc n))

(define (bunsi n)
  (if (= (remainder n 2) 0) (+ n 2)
    (+ n 1)))
(define (bunbo n)
  (if (= (remainder n 2) 0) (+ n 1)
    (+ n 2)))
(define (pi-apx n)
  (* 4.0 (/ (product-iter bunsi 1 inc n) (product-iter bunbo 1 inc n))))

