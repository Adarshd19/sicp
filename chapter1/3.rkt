#lang sicp

(define (sqr a)
    (* a a))

(define (largest-sumofsqr a b c)
    (define sum (+ (sqr a) (sqr b) (sqr c)))
    (define mini (sqr (min a b c)))
    (- sum mini))



