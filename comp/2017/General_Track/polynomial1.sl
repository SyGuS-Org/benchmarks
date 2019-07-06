(set-logic LIA)

(synth-fun addExpr1 ((x Int) (y Int)) Int
    ((Start Int (x
                 y
                 (+ Start Start)
                 (- Start Start)
                 ))
          ))

(synth-fun addExpr2 ((x Int) (y Int)) Int
    ((Start Int (x
                 y
                 (+ Start Start)
                 (- Start Start)
                 ))
          ))


(declare-var x Int)
(declare-var y Int)

(constraint (= (+ (addExpr1 x y) (addExpr2 y x)) (+ x y)))


(check-synth)

; (x, y), (y,x) ... are valid solutions