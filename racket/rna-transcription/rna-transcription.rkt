#lang racket

(provide to-rna)

(define (to-rna dna)
  (define (complement n)
    (match n
      [#\G #\C]
      [#\C #\G]
      [#\T #\A]
      [#\A #\U]))
  (list->string (map complement (string->list dna))))
