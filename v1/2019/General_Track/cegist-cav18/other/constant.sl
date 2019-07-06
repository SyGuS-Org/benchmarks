(set-logic BV)

(synth-fun constant ((x (BitVec 32))) (BitVec 32)
)

(declare-var x (BitVec 32))

(declare-var y (BitVec 32))

(constraint 
(= (constant x) (constant y))
)

(check-synth)


