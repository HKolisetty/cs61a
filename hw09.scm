(define (ascending? asc-lst)
    (if (null? asc-lst) #t (if (null? (cdr asc-lst)) #t (if (< (car (cdr asc-lst)) (car asc-lst)) #f (ascending? (cdr asc-lst)))))
)

(define (my-filter pred s)
    (if (null? s) () (if (pred (car s)) (cons (car s) (my-filter pred (cdr s))) (my-filter pred (cdr s))))
)

(define (interleave lst1 lst2)
    (if (or (null? lst1) (null? lst2)) (append lst1 lst2) (cons (car lst1) (interleave lst2 (cdr lst1))))
)

(define (no-repeats lst)
    (if (null? lst) () (if (equal? (cdr lst) (my-filter (lambda (x) (not (= x (car lst)))) (cdr lst))) (cons (car lst) (no-repeats (cdr lst))) (no-repeats (cdr lst))))
)
