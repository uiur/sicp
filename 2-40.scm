(define (enumerate-interval a b)
 (if (> a b)
  '()
  (cons a (enumerate-interval (+ a 1) b))))
(define (flatmap proc seq)
 (fold-right append '() (map proc seq)))
(define (unique-pairs n)
 (flatmap (lambda (x) (map (lambda (y) (if (> x y) (list x y))) (enumerate-interval 1 (- x 1)))) (enumerate-interval 1 n)))
