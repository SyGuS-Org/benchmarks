(set-logic BV)

(define-fun hd14 ((x (BitVec 32))(y (BitVec 32))) (BitVec 32)
    (bvadd (bvand x y) (bvlshr (bvxor x y) #x00000001))
)

(synth-fun f ((x (BitVec 32))(y (BitVec 32))) (BitVec 32)
)

(declare-var x (BitVec 32))

(declare-var y (BitVec 32))

(constraint 
(= (hd14 x y) (f x y))
)

(check-synth)


