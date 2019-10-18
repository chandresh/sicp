#lang sicp
; Example Program to calculate Square Root by Newton's Mehtod
; 

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))
(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y ) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x )) 1e-15))

(define (square n)
  (* n n))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.0001)