#lang racket

(provide isogram?)

(define (isogram? s)
  (let ((letters
        (filter char-alphabetic? (string->list (string-downcase s)))))
    (not (check-duplicates letters))))
