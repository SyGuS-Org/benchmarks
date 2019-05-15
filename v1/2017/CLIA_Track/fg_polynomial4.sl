(set-logic LIA)

(synth-fun addExpr1 ((x Int) (y Int)) Int
)

(synth-fun addExpr2 ((x Int) (y Int)) Int
)

(declare-var x Int)
(declare-var y Int)

(constraint (= (+ (addExpr1 x y) (addExpr2 y x)) (+ (+ (+ x y) y) (+ x y))))


(check-synth)

