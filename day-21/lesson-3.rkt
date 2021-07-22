;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname lesson-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define a 1)
(define b 2)

(+ a
   (local [(define b 3)]
     (+ a b))
   b)

(+ 1
   (local [(define b 2)]
     (* b b))
   b)

;rename
;lift
;replace
(define b_0 2)
(+ 1
   (* b_0 b_0)
   b)

(+ 1
   (* 2 b_0)
   b)

(+ 1
   (* 2 2)
   b)

(+ 1
   4
   b)

(+ 1 4 1)

6
