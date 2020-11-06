(set-logic BV)

(synth-fun addExpr1 ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32))

(synth-fun addExpr2 ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32))

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(constraint (= (bvadd (addExpr1 x y) (addExpr2 y x)) (bvsub x (bvadd x y))))

(check-synth)

