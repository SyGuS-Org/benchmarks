(set-logic LIA)

(synth-fun add_expr_1 ((x Int) (y Int)) Int)

(synth-fun add_expr_2 ((x Int) (y Int)) Int)

(declare-var x Int)
(declare-var y Int)
(constraint (= (+ (add_expr_1 x y) (add_expr_2 y x)) (+ (+ (+ x y) y) (+ x y))))

(check-synth)

