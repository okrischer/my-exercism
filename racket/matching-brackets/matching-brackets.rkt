#lang racket

(provide balanced?)

(define (open? c)
  (string-contains? "([{" (string c)))

(define (close? c)
  (string-contains? ")]}" (string c)))

(define (matching b)
  (cond
    ((eq? b #\() #\))
    ((eq? b #\[) #\])
    ((eq? b #\{) #\})
    (else #\?)))
    

(define (balanced? str)
  (let iter ((stack null) (s (string->list str)))
    (cond
      ((null? s) (null? stack))
      ((open? (car s)) (iter (cons (matching (car s)) stack) (cdr s)))
      ((close? (car s))
        (cond
          ((null? stack) #f)
          ((eq? (car s) (car stack)) (iter (cdr stack) (cdr s)))
          (else #f)))
      (else (iter stack (cdr s))))))
