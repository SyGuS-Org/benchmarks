(set-logic LIA)

(synth-fun mux_6 ((x1 Int) (x2 Int) (x3 Int) (x4 Int) (x5 Int) (x6 Int)) Int)

(declare-var x1 Int)
(declare-var x2 Int)
(declare-var x3 Int)
(declare-var x4 Int)
(declare-var x5 Int)
(declare-var x6 Int)
(constraint (>= (mux_6 x1 x2 x3 x4 x5 x6) x1))
(constraint (>= (mux_6 x1 x2 x3 x4 x5 x6) x2))
(constraint (>= (mux_6 x1 x2 x3 x4 x5 x6) x3))
(constraint (>= (mux_6 x1 x2 x3 x4 x5 x6) x4))
(constraint (>= (mux_6 x1 x2 x3 x4 x5 x6) x5))
(constraint (>= (mux_6 x1 x2 x3 x4 x5 x6) x6))
(constraint (or (= x1 (mux_6 x1 x2 x3 x4 x5 x6)) (or (= x2 (mux_6 x1 x2 x3 x4 x5 x6)) (or (= x3 (mux_6 x1 x2 x3 x4 x5 x6)) (or (= x4 (mux_6 x1 x2 x3 x4 x5 x6)) (or (= x5 (mux_6 x1 x2 x3 x4 x5 x6)) (= x6 (mux_6 x1 x2 x3 x4 x5 x6))))))))

(check-synth)

