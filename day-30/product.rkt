;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname product) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; (listof Number) -> Number
;; produce product of all elements of lon

(check-expect (product empty) 1)
(check-expect (product (list 2 4 5)) 40)
(check-expect (product (list 2 4 5 6 0)) 0)

#;
(define (product lon)
  (cond [(empty? lon) (...)]
        [else
         (... (first lon)
              (product (rest lon)))]))

(define (product lon0)
  ;; acc: Number; the product of numbers that seen so far
  ;; (product (list 2 3 4))
  ;; (product (list 2 3 4)  1)
  ;; (product (list   3 4)  2)
  ;; (product (list     4)  6)
  ;; (product (list      ) 24)
  (local [(define (product lon acc)
            (cond [(empty? lon) acc]
                  [else
                   ;; (... acc
                   ;;    (first lon)
                        (product (rest lon)
                                 (* (first lon) acc))]))]
    (product lon0 1)))