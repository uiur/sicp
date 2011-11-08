(define (simpson-iter f a b n) 
  (let* ((h (/ (- b a) n)) (y (lambda (k) (f (+ a (* k h))))))
    (define (iter count sum)
      (if (= count n) (+ sum (y n))
        (iter (+ count 1) (+ sum (* (+ 2 (* 2 (remainder count 2))) (y count))))))
    (* (/ h 3) (iter 1 (y 0)))))


(define (simpson f a b n)
  (let* ((h (/ (- b a) n)) (y (lambda (k) (f (+ a (* k h))))))
    (define (sum k)
      (if (= k n) (y k)
        (+ (* (if (= (remainder k 2) 0) 2 4)
              (y k)) (sum (+ k 1)))))
    (* (/ h 3) (+ (y 0) (sum 1)))))

(simpson-iter (lambda (x) (* x x x)) 0 1 100)
