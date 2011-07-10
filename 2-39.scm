(define (reverser sequence)
  (fold-right (lambda (x y) (append y (list x))) '() sequence))
(define (reversel sequence)
  (fold-left (lambda (x y) (cons y x)) '() sequence))

(define (fold-left op initial sequence)
 (define (iter result rest)
  (if (null? rest)
   result
   (iter (op result (car rest))
    (cdr rest))))
  (iter initial sequence))
