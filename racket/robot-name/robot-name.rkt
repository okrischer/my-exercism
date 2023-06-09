#lang racket

(provide make-robot
         name
         reset!
         reset-name-cache!)

(define names (make-hash))

(define (rl)
  (integer->char (random 65 91)))

(define (rd)
  (integer->char (random 48 58)))

(define (make-robot)
  (begin
    (hash-set! names "AA000" #t)
    "AA000"))

(define (name robot)
  (let ((new-name (list->string (list (rl) (rl) (rd) (rd) (rd)))))
    (cond
      ((not (equal? robot (make-robot))) (error "cannot rename an already named robot"))
      ((hash-has-key? names new-name) (name robot))
      (else (begin
            (hash-set! names new-name #t)
            new-name)))))

(define (reset! robot)
  (cond
    ((not (hash-has-key? names robot)) (error "cannot `reset!` an unknown robot"))
    (else (begin
      (hash-remove! names robot)
      (make-robot)))))

(define (reset-name-cache!)
  (hash-clear! names))
