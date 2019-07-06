(set-logic LIA)

(synth-fun addExpr1 ((x Int) (y Int)) Int
    ((Start Int (x
                 y
		 0
		 1
                 (+ Start Start)
                 (- Start Start)
                 ))
          ))

(synth-fun addExpr2 ((x Int) (y Int)) Int
    ((Start Int (x
                 y
		 0
		 1
                 (+ Start Start)
                 (- Start Start)
                 ))
          ))


(declare-var x Int)
(declare-var y Int)

(constraint (= (+ (addExpr1 x y) (addExpr2 y x)) (- x y)))


(check-synth)

; (x, y), (x-y, 0) ... are valid solutions