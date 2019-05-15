(set-logic LIA)

;; f1 is x plus 2 ;; f2 is 2x plus 5

(synth-fun f1 ((x Int)) Int
	   (
	   (Start Int (
	   	      (let ((y Int CInt) (z Int CInt) (w Int CInt) (u Int CInt)) 
	   	      (+ (+ (+ (+ y x) z) w) u))
	   	      )
 	   )
	   (CInt Int (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))

	   )
)

(synth-fun f2 ((x Int)) Int
	   (
	   (Start Int (x
	   	      (let ((y Int Start) (z Int CInt) (w Int CInt) (u Int CInt)) 
	   	      (+ (+ (+ (+ y x) z) w) u))
	   	      )
 	   )
	   (CInt Int (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))

	   )
)


(declare-var x Int)

(constraint (= (+ (f1 x)(f2 x)) (+ (+ x x) (+ x 8))))
(constraint (= (- (f2 x)(f1 x)) (+ x 2)))

(check-synth)