#lang simply-scheme ;; To use functions from the lecture like - butfirst in DrRacket

;; Topc: Functional Programming
;; Some examples

;; All code is from: CS 61A: Structure and Interpretation of Computer Programs


3
(+ 2 3)
(sqrt 16)
(+ (* 3 4) 5)

+
'+
'hello
'(+ 2 3)
'(good morning)

;; these functions only work with simply-scheme

(first 274)
(butfirst 274)
(first 'hello) 
; (first hello) ;; error
(first (bf 'hello)) ; second
(+ (first 23) (last 45))

;; variable and procedure definitions

(define pi 3.14159)
pi
'pi
(+ pi 7)
(* pi pi)

(define (square x)
    (* x x))

(square 5)
(square (+ 2 3))

(define (plural-simple wd)
(word wd 's))

(plural-simple 'rat)

(plural-simple 'fly)

(define (plural wd)
    (if (equal? (last wd) 'y)
        (word (bl wd) 'ies)
        (word wd 's)))


;;; Pig Latin: Move initial consonants to the end of the word and append "ay"; SCHEME becomes SCHEMESCHAY

(define (vowel? letter)
    (member? letter '(a e i o u) ))

(define (pigl wd)
    (if (vowel? (first wd))
        (word wd 'ay)
        (pigl (word (bf wd) (first wd)))))

(pigl 'hello)