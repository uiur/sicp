(define (make-interval a b) (cons a b))
(define (upper-bound x) (cdr x))
(define (lower-bound x) (car x))
(define (add-interval x y) (make-interval (+ (lower-bound x) (lower-bound y))
                            (+ (upper-bound x) (upper-bound y))))
(define (sub-interval x y) (add-interval x (make-interval (- (upper-bound y)) (- (lower-bound y)))))
  
(print (sub-interval (make-interval 1 10) (make-interval 3 6)))

