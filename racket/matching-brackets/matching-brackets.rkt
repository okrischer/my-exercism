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
  (let loop ((stack null) (loc (string->list str)))
    (cond
      ((null? loc) (null? stack))
      ((open? (car loc)) (loop (cons (matching (car loc)) stack) (cdr loc)))
      ((close? (car loc))
        (cond
          ((null? stack) #f)
          ((eq? (car loc) (car stack)) (loop (cdr stack) (cdr loc)))
          (else #f)))
      (else (loop stack (cdr loc))))))
