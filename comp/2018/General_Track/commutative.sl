; commutative function

(set-logic LIA)

(synth-fun comm ((x Int) (y Int)) Int
    ((Start Int (x
                 y
                 (+ Start Start)
                 (- Start Start)
                 ))
          ))

(declare-var x Int)
(declare-var y Int)

(constraint (= (comm x y) (comm y x)))


(check-synth)

; (+ x y) is a valid solution