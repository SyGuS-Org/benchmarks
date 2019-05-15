(set-logic LIA)

;; f1 is x plus 2 ;; f2 is 2x plus 5

(synth-fun f1 ((x Int)) Int
	   (
	   (Start Int (
	   	      (let ((y1 Int CInt) (y2 Int CInt) (y3 Int CInt) (y4 Int CInt) (y5 Int CInt)
	   	            (y6 Int CInt) (y7 Int CInt) (y8 Int CInt) (y9 Int CInt) (y10 Int CInt)) 
	   	            (+ (+ (+ (+ (+ (+ (+ (+ (+ x y1) y2) y3) y4) y5) y6) y7) y8) y9))
	   	      )
 	   )
	   (CInt Int (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -1 -2 -3 -4 -5 -6 -7 -8 -9 -10))
	   )
)

(synth-fun f2 ((x Int)) Int
	   (
	   (Start Int (
	   	      (let ((y1 Int CInt) (y2 Int CInt) (y3 Int CInt) (y4 Int CInt) (y5 Int CInt)
	   	            (y6 Int CInt) (y7 Int CInt) (y8 Int CInt) (y9 Int CInt) (y10 Int CInt)) 
	   	            (+ (+ (+ (+ (+ (+ (+ (+ (+ x y1) y2) y3) y4) y5) y6) y7) y8) y9))
	   	      )
 	   )
	   (CInt Int (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 -1 -2 -3 -4 -5 -6 -7 -8 -9 -10))
	   )
)


(declare-var x1 Int)
(declare-var x2 Int)

(constraint (= (+ (f1 x1)(f2 x2)) (+ (+ x2 x2) (+ x1 8))))

(check-synth)

