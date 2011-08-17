(define (append! x y)
 (set-cdr! (last-pair x) y)
 x)

(define (last-pair x)
 (if (null? (cdr x))
  x
  (last-pair (cdr x))))

(b)
(b c d)
