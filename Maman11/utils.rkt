#lang scheme

(provide unordered-equal?)
(provide subset?)


(define (unordered-equal? a b)
    (and (subset? a b) (subset? b a)))

(define (subset? xs ys)
    (andmap (lambda (x) (member x ys)) xs))