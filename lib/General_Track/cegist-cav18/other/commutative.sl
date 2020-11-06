(set-logic BV)

(synth-fun comm ((x (_ BitVec 8)) (y (_ BitVec 8))) (_ BitVec 8))

(declare-var x (_ BitVec 8))
(declare-var y (_ BitVec 8))
(constraint (= (comm x y) (comm y x)))

(check-synth)

