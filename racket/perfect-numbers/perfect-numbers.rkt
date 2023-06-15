#lang racket

(provide classify)

(define (classify number)
  (let ((aliquot
        (for/sum ((f (range 1 number)))
          (if (zero? (remainder number f)) f 0))))
    (cond
      ((equal? aliquot number) 'perfect)
      ((> aliquot number) 'abundant)
      (else 'deficient))))
