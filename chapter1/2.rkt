#lang sicp

(define num (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))))
(define den (* 3 (- 6 2) (- 2 7)))
(/ num den)