(set-logic BV)

(synth-fun comm ((x (BitVec 8)) (y (BitVec 8))) (BitVec 8))

(declare-var x (BitVec 8))
(declare-var y (BitVec 8))
(constraint (= (comm x y) (comm y x)))

(check-synth)

