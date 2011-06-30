(define (pt n k)
 (if (or (= n k) (= k 0)) 1
  (+ (pt (- n 1) k) (pt (- n 1) (- k 1)))))

(print (pt 4 2))
