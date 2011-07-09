(define (for-each proc items)
  (proc (car items))
 (if (not (null? (cdr items)))
  (for-each proc (cdr items))))
