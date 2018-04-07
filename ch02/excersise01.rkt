;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname excersise01) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))

;; Area of disk
(define (area-of-disk radius)
  (* 3.14 (sqr radius)))

;; Area of ring
(define (area-of-ring outer inner)
  (- (area-of-disk outer)
     (area-of-disk inner)))

;; Exc 2.2.1
(define (fahrenheit->celsius deg)
  (* (- deg 32)
     0.55))

;; Exc 2.2.2
(define (dollar->euro dollar)
  (* dollar 0.95))

;; Exc 2.2.3
(define (triangle length height)
  (* 0.5 length height))

;; Wage program
(define (wage hours)
  (* 12 hours))

;; Exc 2.2.4
(define (convert3 ones tens hundreds)
  (+ ones
     (* 10 tens)
     (* 100 hundreds)))

;; Exc 2.2.5
(define (f n)
  (+ (/ n 3) 2))
;; n = 2 res: 8/3
;; n = 5 res: 11/3
;; n = 9 res: 5

;; 1.
(define (f1 n)
  (+ (sqr n) 10))

;; 2.
(define (f2 n)
  (+ (* (/ 1 2) (sqr n))
     20))

;; 3.
(define (f3 n)
  (- 2
     (/ 1 n)))

;; Exc 2.3.1
;;
(define (tax pay)
  (* 0.15 pay))

(define (netpay hours)
  (- (wage hours) (tax (wage hours))))

;; Exc 2.3.2
(define (sum-coins pennies nickels dimes quarters)
  (+ pennies
     (* 5 nickels)
     (* 10 dimes)
     (* 25 quarters)))

;; Exc 2.3.3
(define (total-profit people)
  (- (* people 5)
     (+ (* people 0.5) 20)))

;; Exc 2.4.1
; (+ (10)20)
; (10 + 20) should be:
;(+ 10 20)

;(+ +)
; Contract violation

;; Exc 2.4.2
;; (define (f 1)
;;   (+ x 10))
(define (f10 x)
  (+ x 10))
