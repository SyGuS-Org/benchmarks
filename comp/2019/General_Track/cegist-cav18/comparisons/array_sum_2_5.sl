(set-logic BV)

(synth-fun findSum ((y1 (BitVec 32)) (y2 (BitVec 32))) (BitVec 32))

(declare-var x1 (BitVec 32))
(declare-var x2 (BitVec 32))
(constraint (=> (bvugt (bvadd x1 x2) #x00000005) (= (findSum x1 x2) (bvadd x1 x2))))
(constraint (=> (bvule (bvadd x1 x2) #x00000005) (= (findSum x1 x2) #x00000000)))

(check-synth)

