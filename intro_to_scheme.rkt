#lang racket

(define add2
  (lambda (x) (+ x 2)))
;And then we can reference it
(add2 1)
; Output => 3

 

(define cube
   (lambda (x) (* x x x)))
;And then we can reference it
(cube 3)
; Output => 27


(member 10 '(1 4 5 10 9 7))
; If we don't use quote ', we will get an error because the compiler will evaluate it as (f arg1 arg2 arg3) and not as a list
; Output => '(10 9 7) ; It returns the sublist from which the number 10 begins

(member 50 '(1 4 5 10 9 7))

; Output => #f ; False since 50 doesn't exist within the list


(define (factorial n)
  (if (= n 0) ; Checking for the base case
      1 ; if the base case is true we return 1
      (* n (factorial (- n 1))))) ; otherwise we recurse passing n-1 as an argument