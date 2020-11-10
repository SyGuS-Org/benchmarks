(set-logic BV)

(synth-fun findIdx ((y1 (_ BitVec 32)) (y2 (_ BitVec 32)) (y3 (_ BitVec 32)) (y4 (_ BitVec 32)) (k1 (_ BitVec 32))) (_ BitVec 32))

(declare-var x1 (_ BitVec 32))
(declare-var x2 (_ BitVec 32))
(declare-var x3 (_ BitVec 32))
(declare-var x4 (_ BitVec 32))
(declare-var k (_ BitVec 32))
(constraint (=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (bvult k x1) (= (findIdx x1 x2 x3 x4 k) #x00000000))))
(constraint (=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (bvugt k x4) (= (findIdx x1 x2 x3 x4 k) #x00000004))))
(constraint (=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (and (bvugt k x1) (bvult k x2)) (= (findIdx x1 x2 x3 x4 k) #x00000001))))
(constraint (=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (and (bvugt k x2) (bvult k x3)) (= (findIdx x1 x2 x3 x4 k) #x00000002))))
(constraint (=> (and (bvult x1 x2) (and (bvult x2 x3) (bvult x3 x4))) (=> (and (bvugt k x3) (bvult k x4)) (= (findIdx x1 x2 x3 x4 k) #x00000003))))

(check-synth)

