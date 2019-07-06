(set-logic BV)

(define-fun hd20 ((x (BitVec 32))) (BitVec 32)
    (bvor (bvadd x (bvand (bvneg x) x)) (bvudiv (bvlshr (bvxor x (bvand (bvneg x) x)) #x00000002) (bvand (bvneg x) x)))
)

(synth-fun f ((x (BitVec 32))) (BitVec 32)
)

(declare-var x (BitVec 32))

(constraint 
(= (hd20 x) (f x))
)

(check-synth)


