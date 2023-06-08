#lang racket

(provide score)

(define (score x y)
  (let ((z (sqrt (+ (sqr x) (sqr y)))))
    (cond
      ((<= z 1) 10)
      ((<= z 5) 5)
      ((<= z 10) 1)
      (else 0))))
