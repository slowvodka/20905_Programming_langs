#lang scheme
(require "Q1.rkt")  ; import your function
(provide TESTQ1)


(define train-cases
    (list
        '()
        '(( ( ())))
        '(( ( ( ()))) 1)
        '((1) 2 3 4 5 6 7)
        '((1) (2) 3 4 5 6 7)
        '((1) 2 (3) 4 5 6 7)
        '((1) 2 3 4 (5) 6 (7))
        '((1 2) (3 4 5 6 7))
        '(((1)) 2 3 4 5 6 7)
        '(((1) 2) 3 4 5 6 7)
        '(((1) 2) 3 (4) 5 6 7)
        '(((1) 2) 3 ( (4) 5 6 7))
        '(((1) 2) 3 ( (4) 5 6  (7)))
        '(((((((((((1)))))))))) 2 3 4 5 6 7)
        '((a) b c d e 6 7)
    )
)

(define test-cases
    (list
        '()
        '()
        '(1)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(1 2 3 4 5 6 7)
        '(a b c d e 6 7)
    )
)

(define (TESTQ1)
    (displayln (format "Q1 TESTS:"))
    (for ([input train-cases]
            [expected test-cases]
            [i (in-naturals 1)])
        (define result (my_flat input))
        (if (equal? result expected)
        (displayln (format "TEST ~a: ✅ PASS" i))
        (begin
            (displayln (format "TEST ~a: ❌ FAIL" i))
            (displayln (format "  Input:    ~a" input))
            (displayln (format "  Got:      ~a" result))
            (displayln (format "  Expected: ~a\n" expected)))
        )
    )

)

