(define (cube-root x)
 (cbrt-iter x x))

(define (cbrt-iter x y) 
 (if (good? x y) y
  (cbrt-iter x (/ (+ (/ x (square y)) (* 2.0 y)) 3.0))))

(define (good? x y) 
 (< (abs (- 1.0 (/ x (cube y)))) 0.01))

(define (square x)
 (* x x))
  
(define (cube x)
 (* x x x))

(print (cube-root 3))
