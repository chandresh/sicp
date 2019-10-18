#lang sicp

; some programs to practice Scheme

(define (square x) (* x x))

(square 4)

(define (sum a b) (+ a b))

(sum 1 2)

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(sum-of-squares 2 4)

(define (f a)
  (sum-of-squares (+ a 1) (* a 2)))

(f 2)


(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(abs 1)
(abs -1)

(define (abs2 x)
  (cond ((< x 0) (- x))
        (else x))
  )

(abs2 1)
(abs2 -1)
(abs2 0)


(define (fact n)
  (if (< n 2) 1
      (* n  (fact (- n 1)))))

(fact 5)

(remainder 5 5)

(define (leap? year)
  (or (= (remainder year 400) 0)
      (and (not (= (remainder year 100) 0)) (= (remainder year 4) 0))))
(leap? 1900)
(leap? 2000)
(leap? 1904)
