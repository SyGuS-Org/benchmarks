(set-logic BV)

(synth-fun max4 ((x (BitVec 32))(y (BitVec 32))(z (BitVec 32))(w (BitVec 32))) (BitVec 32)
)

(declare-var x (BitVec 32))

(declare-var y (BitVec 32))

(declare-var z (BitVec 32))

(declare-var w (BitVec 32))

(constraint 
(bvuge (max4 x y z w) x)
)

(constraint 
(bvuge (max4 x y z w) y)
)

(constraint 
(bvuge (max4 x y z w) z)
)

(constraint 
(bvuge (max4 x y z w) w)
)

(constraint 
(or (= x (max4 x y z w)) (or (= y (max4 x y z w)) (or (= z (max4 x y z w)) (= w (max4 x y z w)))))
)

(check-synth)


