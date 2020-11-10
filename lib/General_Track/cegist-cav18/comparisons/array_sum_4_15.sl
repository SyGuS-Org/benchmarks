(set-logic BV)

(synth-fun findSum ((y1 (_ BitVec 32)) (y2 (_ BitVec 32)) (y3 (_ BitVec 32)) (y4 (_ BitVec 32))) (_ BitVec 32))

(declare-var x1 (_ BitVec 32))
(declare-var x2 (_ BitVec 32))
(declare-var x3 (_ BitVec 32))
(declare-var x4 (_ BitVec 32))
(constraint (=> (bvugt (bvadd x1 x2) #x0000000f) (= (findSum x1 x2 x3 x4) (bvadd x1 x2))))
(constraint (=> (and (bvule (bvadd x1 x2) #x0000000f) (bvugt (bvadd x2 x3) #x0000000f)) (= (findSum x1 x2 x3 x4) (bvadd x2 x3))))
(constraint (=> (and (and (bvule (bvadd x1 x2) #x0000000f) (bvule (bvadd x2 x3) #x0000000f)) (bvugt (bvadd x3 x4) #x0000000f)) (= (findSum x1 x2 x3 x4) (bvadd x3 x4))))
(constraint (=> (and (bvule (bvadd x1 x2) #x0000000f) (and (bvule (bvadd x2 x3) #x0000000f) (bvule (bvadd x3 x4) #x0000000f))) (= (findSum x1 x2 x3 x4) #x00000000)))

(check-synth)

