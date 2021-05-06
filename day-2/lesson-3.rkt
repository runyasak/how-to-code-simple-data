;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lesson-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Number -> Number

;; given of length of one side of square, produce the area of the square

(check-expect (area 3) 9)
(check-expect (area 3.2) (* 3.2 3.2))

#;
(define (area l) 0) ;stub

#;
(define (area l) ;template
  (... l))

(define (area l) ;template
  (* l l))