(set-logic LIA)

(synth-fun mux_5 ((x Int) (y Int) (z Int) (w Int) (u Int)) Int)

(declare-var x Int)
(declare-var y Int)
(declare-var z Int)
(declare-var w Int)
(declare-var u Int)
(constraint (>= (mux_5 x y z w u) x))
(constraint (>= (mux_5 x y z w u) y))
(constraint (>= (mux_5 x y z w u) z))
(constraint (>= (mux_5 x y z w u) w))
(constraint (>= (mux_5 x y z w u) u))
(constraint (or (= x (mux_5 x y z w u)) (or (= y (mux_5 x y z w u)) (or (= z (mux_5 x y z w u)) (or (= w (mux_5 x y z w u)) (= u (mux_5 x y z w u)))))))

(check-synth)

