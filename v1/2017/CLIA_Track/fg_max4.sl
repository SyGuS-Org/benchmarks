; max4.sl
; Synthesize the maximum of 4 integers, from a purely declarative spec

(set-logic LIA)

(synth-fun max4 ((x Int) (y Int) (z Int) (w Int)) Int
)

(declare-var x Int)
(declare-var y Int)
(declare-var z Int)
(declare-var w Int)

(constraint (>= (max4 x y z w) x))
(constraint (>= (max4 x y z w) y))
(constraint (>= (max4 x y z w) z))
(constraint (>= (max4 x y z w) w))
(constraint (or (= x (max4 x y z w))
            (or (= y (max4 x y z w))
            (or (= z (max4 x y z w))
	        (= w (max4 x y z w))))))

(check-synth)

