(set-logic LIA)

(synth-fun inv ((x Int) (y Int)) Int
    ((Start Int (x
                 y
                 0
                 1
                 (+ Start Start)
                 (- Start Start)
                 (ite StartBool Start Start)))
     (StartBool Bool ((and StartBool StartBool)
                      (or  StartBool StartBool)
                      (not StartBool)
                      (<=  Start Start)
                      (=   Start Start)
                      (>=  Start Start)))))

(define-fun implies ((b1 Bool) (b2 Bool)) Bool (or (not b1) b2))
(define-fun and3 ((b1 Bool) (b2 Bool) (b3 Bool)) Bool (and (and b1 b2) b3))
(define-fun and4 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool)) Bool (and (and3 b1 b2 b3) b4))
(define-fun and5 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool) (b5 Bool)) Bool (and (and4 b1 b2 b3 b4) b5))
(define-fun and6 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool) (b5 Bool) (b6 Bool)) Bool (and (and5 b1 b2 b3 b4 b5) b6))
(define-fun or3 ((b1 Bool) (b2 Bool) (b3 Bool)) Bool (or (or b1 b2) b3))
(define-fun or4 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool)) Bool (or (or3 b1 b2 b3) b4))
(define-fun or5 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool) (b5 Bool)) Bool (or (or4 b1 b2 b3 b4) b5))


(declare-var x Int)
(declare-var x1 Int)
(declare-var x2 Int)
(declare-var y Int)
(declare-var y1 Int)
(declare-var y2 Int)
(declare-var i Int)
(declare-var i1 Int)
(declare-var i2 Int)
(declare-var i3 Int)


(constraint (implies (and (= x 0) (= 0 y)) (= 0 (inv x y))))

(constraint (implies (and5 (= i (inv x y)) (>= x y) (= x1 (+ x 1)) (= i1 (+ i 1)) (= i2 (+ i1 1))) 
	             (= i2 (inv x1 y))))

(constraint (implies (and5 (= i (inv x y)) 
	    	           (>= x y) 
                           (= y1 (+ y 1)) 
                           (= i1 (+ i 1)) 
                           (or (and (< x y1) (= i3 (+ i1 1))) (and (>= x y1) (= i3 i1))))
                     (= i3 (inv x y1))))

(constraint (implies (and4 (= i (inv x y)) (< x y) (= x1 (+ x 1)) (= i1 (+ i 1))) 
	             (= i1 (inv x1 y))))

(constraint (implies (and5 (= i (inv x y)) (< x y) (= y1 (+ y 1)) (= i1 (+ i 1)) (= i2 (+ i1 1))) 
                     (= i2 (inv x y1))))

(check-synth)

