#lang racket

(provide collatz)

(define (collatz number)
  (let solve ((n number) (steps 0))
    (cond
      ((< n 1) (error "n is zero or negative"))
      ((= n 1) steps)
      ((even? n) (solve (/ n 2) (add1 steps)))
      (else (solve (add1 (* n 3)) (add1 steps))))))
