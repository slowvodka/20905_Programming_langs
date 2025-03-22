
#lang scheme 
(provide my_flat)

#|
function my_flat 
this function gets any list and flattens it
args: 
    my_list: list
returns: list
|#

(define (my_flat lst)
    (reverse
    (foldl (lambda (elem acc)
            (if (list? elem)
                (append (my_flat elem) acc)
                (cons elem acc)))
        '()
        lst)))
