(set-logic BV)

(synth-fun findIdx ((y1 (BitVec 32))(y2 (BitVec 32))(y3 (BitVec 32))(y4 (BitVec 32))(k1 (BitVec 32))) (BitVec 32)
)

(declare-var x1 (BitVec 32))

(declare-var x2 (BitVec 32))

(declare-var x3 (BitVec 32))

(declare-var x4 (BitVec 32))

(declare-var k (BitVec 32))

(constraint 
(=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (bvult k x1) (= (findIdx x1 x2 x3 x4 k) #x00000000)))
)

(constraint 
(=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (bvugt k x4) (= (findIdx x1 x2 x3 x4 k) #x00000004)))
)

(constraint 
(=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (and (bvugt k x1) (bvult k x2)) (= (findIdx x1 x2 x3 x4 k) #x00000001)))
)

(constraint 
(=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (and (bvugt k x2) (bvult k x3)) (= (findIdx x1 x2 x3 x4 k) #x00000002)))
)

(constraint 
(=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (and (bvugt k x3) (bvult k x4)) (= (findIdx x1 x2 x3 x4 k) #x00000003)))
)

(check-synth)


