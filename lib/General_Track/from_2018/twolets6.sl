(set-logic LIA)

;; f1 is x plus 2 ;; f2 is 2x plus 5

(synth-fun f1 ((x Int)) Int
	   ((Start Int) (CInt Int))
 (
	   (Start Int (
	   	      (let ((y1 CInt) (y2 CInt) (y3 CInt) (y4 CInt) (y5 CInt)
	   	            (y6 CInt)) 
	   	            (+ (+ (+ (+ (+ (+ x y1) y2) y3) y4) y5) y6))
	   	      )
 	   )
	   (CInt Int (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 (- 1) (- 2) (- 3) (- 4) (- 5) (- 6) (- 7) (- 8) (- 9) (- 10)))
	   )
)

(synth-fun f2 ((x Int)) Int
	   ((Start Int) (CInt Int))
 (
(Start Int (
	   	      (let ((y1 CInt) (y2 CInt) (y3 CInt) (y4 CInt) (y5 CInt)
	   	            (y6 CInt)) 
	   	            (+ (+ (+ (+ (+ (+ x y1) y2) y3) y4) y5) y6))
	   	      )
 	   )
	   (CInt Int (0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 (- 1) (- 2) (- 3) (- 4) (- 5) (- 6) (- 7) (- 8) (- 9) (- 10)))
	   )
)


(declare-var x1 Int)
(declare-var x2 Int)

(constraint (= (+ (f1 x1)(f2 x2)) (+ (+ x2 x2) (+ x1 8))))

(check-synth)

