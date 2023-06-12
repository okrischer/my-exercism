#lang racket

(provide sublist?)

(define (sublist? a b)
  (cond
    ((equal? a b) 'equal)
    ((list-infix? a b) 'sublist)
    ((list-infix? b a) 'superlist)
    (else 'unequal)))

(define (list-infix? needle haystack)
  (ormap
    (lambda (hay) (list-prefix? needle hay))
    (list-tails haystack)))

(define (list-tails lat)
  (cond
    ((null? lat) '())
    (else (cons lat (list-tails (cdr lat))))))