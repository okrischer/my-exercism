#lang racket

(provide hamming-distance)

(define (hamming-distance source target)
  (cond
    ((not (eq? (string-length source) (string-length target)))
      (error "string length missmatch"))
    (else (count (λ (s t) (not (eq? s t)))
          (string->list source) (string->list target)))))
