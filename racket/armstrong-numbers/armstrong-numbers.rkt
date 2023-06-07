#lang racket

(provide armstrong-number?)

(define (char->digit c)
  (- (char->integer c) 48))

(define (armstrong-number? n)
  (let* ([digits (map char->digit (string->list (number->string n)))]
         [s (length digits)])
  (= n (foldl (lambda (d sum)
          (+ sum (expt d s)))
          0
          digits))))
