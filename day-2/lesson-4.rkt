;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lesson-4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image -> Number

;; produce image's width * height (area)

(check-expect (image-area (rectangle 2 3 "solid" "red"))
              (* 2 3))

#;
(define (image-area img) 0) ;stub

#;
(define (image-area img) ;template
  (... img))

(define (image-area img)
  (* (image-height img)
     (image-width img)))