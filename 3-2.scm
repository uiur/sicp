(define (make-monitored f)
  (let ((call-count 0))
  (lambda (mf)
      (cond ((eq? mf 'how-many-calls?) call-count)
        ((eq? mf 'reset-count) (set! call-count 0))
        (else (begin
                (set! call-count (+ call-count 1))
                (f mf)
                ))))))

