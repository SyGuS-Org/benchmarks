(set-logic LIA)

(synth-fun mux_3 ((x Int) (y Int) (z Int)) Int)

(declare-var x Int)
(declare-var y Int)
(declare-var z Int)
(constraint (>= (mux_3 x y z) x))
(constraint (>= (mux_3 x y z) y))
(constraint (>= (mux_3 x y z) z))
(constraint (or (= x (mux_3 x y z)) (or (= y (mux_3 x y z)) (= z (mux_3 x y z)))))

(check-synth)

