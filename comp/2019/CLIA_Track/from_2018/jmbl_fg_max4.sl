(set-logic LIA)

(synth-fun mux_4 ((x Int) (y Int) (z Int) (w Int)) Int)

(declare-var x Int)
(declare-var y Int)
(declare-var z Int)
(declare-var w Int)
(constraint (>= (mux_4 x y z w) x))
(constraint (>= (mux_4 x y z w) y))
(constraint (>= (mux_4 x y z w) z))
(constraint (>= (mux_4 x y z w) w))
(constraint (or (= x (mux_4 x y z w)) (or (= y (mux_4 x y z w)) (or (= z (mux_4 x y z w)) (= w (mux_4 x y z w))))))

(check-synth)

