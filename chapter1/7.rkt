; For small numbers the limit in good-enough? might not be sufficient to calculate the square root accurately.
; The iteration might stop at a rather large value which would be totally false

; For large values, we might have imprecisions in floating point values due to machine capabilites.
; Also takes more time due to more approximations 

#lang sicp

(define (square a)
    (* a a))

(define (sqrt-iter guess x) (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x) (average guess (/ x guess)))

(define (average x y) (/ (+ x y) 2))

(define (good-enough? guess x)
(< (abs (- (square guess) x)) 0.001))

(define (sqrt x) (sqrt-iter 1.0 x))


; Example
(sqrt 0.0001) ;1e-4 -> 0.01 but the answer we get is 0.032...
(sqrt 2000000000000) ; I dont have any trouble calculating this and I'm not sure how large a number is needed ...