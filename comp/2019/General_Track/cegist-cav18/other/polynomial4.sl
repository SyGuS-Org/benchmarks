(set-logic BV)

(synth-fun addExpr1 ((x (BitVec 32)) (y (BitVec 32))) (BitVec 32))

(synth-fun addExpr2 ((x (BitVec 32)) (y (BitVec 32))) (BitVec 32))

(declare-var x (BitVec 32))
(declare-var y (BitVec 32))
(constraint (= (bvadd (addExpr1 x y) (addExpr2 y x)) (bvadd (bvadd (bvadd x y) y) (bvadd x y))))

(check-synth)

