#lang racket

(provide nucleotide-counts)

(define (nucleotide-counts nucleotides)
  (define counter (hash #\A 0 #\C 0 #\G 0 #\T 0))
  (define (update key hash)
    (hash-update hash key add1))
  (hash->list
    (foldr update counter (string->list nucleotides))
    #t))
