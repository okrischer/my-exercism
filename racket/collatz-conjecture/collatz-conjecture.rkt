#lang racket

(provide collatz)

(define (collatz num)
  (define (solve n steps)
    (cond
      ((< n 1) (error "n is zero or negative"))
      ((= n 1) steps)
      (else
       (cond
         ((even? n) (solve (/ n 2) (add1 steps)))
         (else (solve (add1 (* n 3)) (add1 steps)))))))
  (solve num 0))
