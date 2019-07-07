(set-logic BV)

(synth-fun addExpr1 ((x (BitVec 32)) (y (BitVec 32))) (BitVec 32))

(synth-fun addExpr2 ((x (BitVec 32)) (y (BitVec 32))) (BitVec 32))

(declare-var x (BitVec 32))
(declare-var y (BitVec 32))
(constraint (= (addExpr1 x y) (addExpr2 y x)))

(check-synth)

