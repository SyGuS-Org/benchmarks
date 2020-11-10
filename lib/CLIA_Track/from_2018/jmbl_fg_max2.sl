(set-logic LIA)

(synth-fun mux_2 ((x Int) (y Int)) Int)

(declare-var x Int)
(declare-var y Int)
(constraint (>= (mux_2 x y) x))
(constraint (>= (mux_2 x y) y))
(constraint (or (= x (mux_2 x y)) (= y (mux_2 x y))))

(check-synth)

