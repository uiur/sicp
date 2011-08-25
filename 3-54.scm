(define (mul-streams a b)
 (cons-stream (* (stream-car a) (stream-car b)) (mul-streams (stream-cdr a) (stream-cdr b))))
;or
(define (mul-streams a b)
 (stream-map * a b))
(define factorials (cons-stream 1 (mul-streams integers factorials)))
