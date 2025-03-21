#lang scheme
(require "Q2.rkt")  ; import your function
(provide TESTQ2)

(define train-cases
    (list
    (list '() '())  
    (list '(1) '()) 
    (list '(1 2) '()) 
    (list '() '(1)) 
    (list '() '(1 2)) 
    (list '(1 2 3) '(1 2 3)) 
    (list '(1 2) '(1 2 3)) 
    (list '(1 2 3) '(1 2)) 
    (list '(1 2 3) '(3 4 5)) 
    (list '(1 2 3) '(4 5 6)) 
    (list '(a b c 3 4 5) '(c d e 5 6 7)) 


))

(define test-cases
(list
    '()     
    '(1)     
    '(1 2)     
    '(1)     
    '(1 2)     
    '()     
    '(3)     
    '(3)     
    '(1 2 4 5)     
    '(1 2 3 4 5 6)      
    '(a b d e 3 4 6 7)                

))

(define (unordered-equal? a b)
    (and (subset? a b) (subset? b a)))

(define (subset? xs ys)
    (andmap (lambda (x) (member x ys)) xs))

(define (TESTQ2)
    (displayln (format "Q2 TESTS:"))
    (for ([pair train-cases]
        [expected test-cases]
        [i (in-naturals 1)])
    (define a (first pair))
    (define b (second pair))
    (define result (set-dif a b))
    (if (unordered-equal? result expected)
        (displayln (format "TEST ~a: ✅ PASS" i))
        (begin
            (displayln (format "TEST ~a: ❌ FAIL" i))
            (displayln (format "  Input:    (~a ~a)" a b))
            (displayln (format "  Got:      ~a" result))
            (displayln (format "  Expected: ~a\n" expected))))))

