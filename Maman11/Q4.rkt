#lang scheme
(provide foo)

(define foo
    (lambda (ls s)
        (cond
            [(null? ls) `(() . ,s)]  

            [(pair? (car ls))        
                (let ((p (foo (car ls) s)))
                (let ((p1 (foo (cdr ls) (cdr p))))
                `(,(cons (car p) (car p1)) . ,(cdr p1))))]

            [(or (null? (car ls)) (odd? (car ls)))  
                (let ((p (foo (cdr ls) s)))
                `(,(cons (car ls) (car p)) . ,(cdr p)))]

            [else                    
                (let ((p (foo (cdr ls) s)))
                `(,(car p) . ,(add1 (cdr p))))])))


