(set-logic LIA)

(synth-fun f ((x Int) (y Int)) Int)

(declare-var x Int)
(declare-var y Int)
(constraint (= (f x y) (f y x)))
(constraint (or (= (- x y) (f x y)) (= (- y x) (f x y))))

(check-synth)

