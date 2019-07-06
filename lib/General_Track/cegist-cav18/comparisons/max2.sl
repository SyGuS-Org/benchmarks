(set-logic BV)

(synth-fun max2 ((x (BitVec 32))(y (BitVec 32))) (BitVec 32)
)

(declare-var x (BitVec 32))

(declare-var y (BitVec 32))

(constraint 
(bvuge (max2 x y) x)
)

(constraint 
(bvuge (max2 x y) y)
)

(constraint 
(or (= x (max2 x y)) (= y (max2 x y)))
)

(check-synth)


