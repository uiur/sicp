(define (list-of-values-from-left-to-right exps env)
 (if (no-operands? exps)
  '()
  (let ((val (eval (first-operand exps) env)))
   (cons val
         (list-of-values-from-left-to-right (rest-exps exps) env)))))

(define (list-of-values-from-right-to-left exps env)
 (if (no-operands? exps)
  '()
  (let ((rest-list-of-val (list-of-values-from-right-to-left (rest-exps exps) env)))
   (cons (eval (first-operand exps) env)
         rest-list-of-val))))
