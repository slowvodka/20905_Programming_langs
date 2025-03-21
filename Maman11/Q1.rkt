
#lang scheme 
(provide my_flat)

#|
furction my_flat 
this function should get any list and flatten it


|#

(define (my_flat my_list)
        (cond
            [(empty? my_list) 
                empty] ; return nothing
            [(list? (first my_list)) 
                (append (my_flat (first my_list)) (my_flat (rest my_list)))
                ] ;if first element not a list
            [else 
                (cons (first my_list) (my_flat (rest my_list)))
            ] ;if first elemt is a list

        ) 
)
