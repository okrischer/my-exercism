#lang racket

(provide acronym)

(define (acronym string)
  (regexp-replace* #rx"[^A-Z]" (string-titlecase string) ""))