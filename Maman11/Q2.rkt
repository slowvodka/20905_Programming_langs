
#lang scheme 
(provide set-dif)


#|
function isin
this function gets element and a list and return true if a in list
args: 
    x: any element
    l list
returns: bool

|#

(define (isin x l)
    (cond
        [(empty? l) #f]
        [(equal? x (first l)) #t]
        [else (isin x (rest l))]
        )
    
)

#|
function set-dif 
this function gets 2 flattened lists returns the symmetric diff between the two
args: 
    list_a: list
    list_b: list
returns: list

|#

(define (set-dif list_a list_b)
    (define solution empty)
    (define all_elements (append list_a list_b))
    (for ([element all_elements])
        (when (not (and (isin element list_a ) (isin element list_b)) )
        (set! solution (cons element solution))
        )
    )
    solution
)






