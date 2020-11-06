(set-logic BV)

(synth-fun findSum ((y1 (_ BitVec 32)) (y2 (_ BitVec 32))) (_ BitVec 32))

(declare-var x1 (_ BitVec 32))
(declare-var x2 (_ BitVec 32))
(constraint (=> (bvugt (bvadd x1 x2) #x00000005) (= (findSum x1 x2) (bvadd x1 x2))))
(constraint (=> (bvule (bvadd x1 x2) #x00000005) (= (findSum x1 x2) #x00000000)))

(check-synth)

