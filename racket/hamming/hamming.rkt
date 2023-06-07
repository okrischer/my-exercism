#lang racket

(provide hamming-distance)

(define (hamming-distance source target)
  (if (not (eq? (string-length source) (string-length target)))
    (error "string length missmatch")
    (count (λ (s t) (not (eq? s t))) (string->list source) (string->list target))))
