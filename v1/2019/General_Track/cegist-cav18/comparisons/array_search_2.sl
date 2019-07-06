(set-logic BV)

(synth-fun findIdx ((y1 (BitVec 32))(y2 (BitVec 32))(k1 (BitVec 32))) (BitVec 32)
)

(declare-var x1 (BitVec 32))

(declare-var x2 (BitVec 32))

(declare-var k (BitVec 32))

(constraint 
(=> (bvult x1 x2) (=> (bvult k x1) (= (findIdx x1 x2 k) #x00000000)))
)

(constraint 
(=> (bvult x1 x2) (=> (bvugt k x2) (= (findIdx x1 x2 k) #x00000002)))
)

(constraint 
(=> (bvult x1 x2) (=> (and (bvugt k x1) (bvult k x2)) (= (findIdx x1 x2 k) #x00000001)))
)

(check-synth)


