
#lang racket 

#|>(my_flat '( (1 2) ((3)) (4 5 6)))
'(1 2 3 4 5 6)
>(my_flat '( 2 6 9))
'(2 6 9)
>(my_flat '())
#'()

FUNCTION flatten_recursive(nested_list):
    result_list ← empty list
    
    FOR each element in nested_list:
        IF element is a list:
            flattened_sublist ← flatten_recursive(element)
            APPEND all elements of flattened_sublist to result_list
        ELSE:
            APPEND element to result_list
    
    RETURN result_list


|#


(define my_flat my_list)
    (define results_list '() )
    ; (define (= my_list, (my_list)))

    ; (for [element my_list])
    ;     display (element)

(my_flat (1,2,3,4))
