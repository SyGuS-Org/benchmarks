(set-logic LIA)

(synth-fun mux_8 ((x1 Int) (x2 Int) (x3 Int) (x4 Int) (x5 Int) (x6 Int) (x7 Int) (x8 Int)) Int)

(declare-var x1 Int)
(declare-var x2 Int)
(declare-var x3 Int)
(declare-var x4 Int)
(declare-var x5 Int)
(declare-var x6 Int)
(declare-var x7 Int)
(declare-var x8 Int)
(constraint (>= (mux_8 x1 x2 x3 x4 x5 x6 x7 x8) x1))
(constraint (>= (mux_8 x1 x2 x3 x4 x5 x6 x7 x8) x2))
(constraint (>= (mux_8 x1 x2 x3 x4 x5 x6 x7 x8) x3))
(constraint (>= (mux_8 x1 x2 x3 x4 x5 x6 x7 x8) x4))
(constraint (>= (mux_8 x1 x2 x3 x4 x5 x6 x7 x8) x5))
(constraint (>= (mux_8 x1 x2 x3 x4 x5 x6 x7 x8) x6))
(constraint (>= (mux_8 x1 x2 x3 x4 x5 x6 x7 x8) x7))
(constraint (>= (mux_8 x1 x2 x3 x4 x5 x6 x7 x8) x8))
(constraint (or (= x1 (mux_8 x1 x2 x3 x4 x5 x6 x7 x8)) (or (= x2 (mux_8 x1 x2 x3 x4 x5 x6 x7 x8)) (or (= x3 (mux_8 x1 x2 x3 x4 x5 x6 x7 x8)) (or (= x4 (mux_8 x1 x2 x3 x4 x5 x6 x7 x8)) (or (= x5 (mux_8 x1 x2 x3 x4 x5 x6 x7 x8)) (or (= x6 (mux_8 x1 x2 x3 x4 x5 x6 x7 x8)) (or (= x7 (mux_8 x1 x2 x3 x4 x5 x6 x7 x8)) (= x8 (mux_8 x1 x2 x3 x4 x5 x6 x7 x8))))))))))

(check-synth)

