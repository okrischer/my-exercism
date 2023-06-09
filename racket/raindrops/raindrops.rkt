#lang racket

(provide convert)

(define (convert n)
  (define factors '((3 "Pling") (5 "Plang") (7 "Plong")))
  (define (make-sounds fct)
    (match fct
      ((list f s) #:when (zero? (remainder n f)) s)
      (_ #f)))
  (let ((sounds (filter-map make-sounds factors)))
    (if (null? sounds)
      (number->string n)
      (string-join sounds ""))))
