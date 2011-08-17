(define (count-pairs x)
 (cond ((not (pair? x)) 0)
  ((and (eq? (car x) 'counted) (eq? (cdr x) 'counted)) 0)
  (else
    (begin 
     (let ((carx (car x)) (cdrx (cdr x)))
      (set-car! x 'counted)
      (set-cdr! x 'counted)
      (+ (count-pairs carx)
         (count-pairs cdrx)
         1))))))
