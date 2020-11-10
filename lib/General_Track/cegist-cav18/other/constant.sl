(set-logic BV)

(synth-fun constant ((x (_ BitVec 32))) (_ BitVec 32))

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(constraint (= (constant x) (constant y)))

(check-synth)

