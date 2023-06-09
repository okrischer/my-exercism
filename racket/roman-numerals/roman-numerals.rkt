#lang racket

(provide to-roman)

(define (to-roman number)
  (define numbers '((1000 . "M") (900 . "CM") (500 . "D") (400 . "CD") (100 . "C")
    (90 . "XC") (50 . "L") (40 . "XL") (10 . "X") (9 . "IX") (5 . "V") (4 . "IV") (1 . "I")))
  (let loop ((n number) (acc ""))
    (if (zero? n) acc
      (let ((dr (findf (lambda (arg) (<= (car arg) n)) numbers)))
        (loop (- n (car dr)) (string-append acc (cdr dr)))))))
