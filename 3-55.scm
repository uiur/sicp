(define (partial-sum s)
 (cons-stream (stream-car s) (add-stream (stream-cdr s) (partial-sum s))))
