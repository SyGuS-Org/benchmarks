(set-logic BV)

(synth-fun findIdx ((y1 (_ BitVec 32)) (y2 (_ BitVec 32)) (k1 (_ BitVec 32))) (_ BitVec 32))

(declare-var x1 (_ BitVec 32))
(declare-var x2 (_ BitVec 32))
(declare-var k (_ BitVec 32))
(constraint (=> (bvult x1 x2) (=> (bvult k x1) (= (findIdx x1 x2 k) #x00000000))))
(constraint (=> (bvult x1 x2) (=> (bvugt k x2) (= (findIdx x1 x2 k) #x00000002))))
(constraint (=> (bvult x1 x2) (=> (and (bvugt k x1) (bvult k x2)) (= (findIdx x1 x2 k) #x00000001))))

(check-synth)

