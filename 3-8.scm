(define f
  (let ((num 1))
    (lambda (n)
      (if (= num 0)
        0
        (begin 
          (set! num n)
          num)))))
