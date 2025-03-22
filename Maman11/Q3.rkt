
#lang scheme 
(provide my_permutations)

#|
function my_permutations 
this function gets a list and returns a list of all possible permutations
args: 
    lst: list
returns: list
|#


(define (my_permutations lst)
    (if (empty? lst) 
        (list '())  
        (apply append (for/list ([i (in-range (length lst))])
            (define elem (list-ref lst i))
            (define rest (append (take lst i) (drop lst (add1 i))))
            (for/list ([p (my_permutations rest)])
                (list* elem p))))
    )

)




