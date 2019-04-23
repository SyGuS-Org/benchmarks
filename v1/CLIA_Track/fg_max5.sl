; max5.sl
; Synthesize the maximum of 5 integers, from a purely declarative spec

(set-logic LIA)

(synth-fun max5 ((x Int) (y Int) (z Int) (w Int) (u Int)) Int
)

(declare-var x Int)
(declare-var y Int)
(declare-var z Int)
(declare-var w Int)
(declare-var u Int)

(constraint (>= (max5 x y z w u) x))
(constraint (>= (max5 x y z w u) y))
(constraint (>= (max5 x y z w u) z))
(constraint (>= (max5 x y z w u) w))
(constraint (>= (max5 x y z w u) u))
(constraint (or (= x (max5 x y z w u))
            (or (= y (max5 x y z w u))
            (or (= z (max5 x y z w u))
            (or (= w (max5 x y z w u))
	        (= u (max5 x y z w u)))))))

(check-synth)


