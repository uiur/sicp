(define (reverse ls)
 (define (iter ls1 ls2)
  (if (null? ls2)
   ls1
   (iter (cons (car ls2) ls1) (cdr ls2))))
 (iter '() ls))

(print (reverse (list 1 2 3 4)))
