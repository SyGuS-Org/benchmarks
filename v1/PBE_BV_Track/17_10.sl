
(set-logic BV)

(define-fun shr1 ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000001))
(define-fun shr4 ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shr16 ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000010))
(define-fun shl1 ((x (BitVec 64))) (BitVec 64) (bvshl x #x0000000000000001))
(define-fun if0 ((x (BitVec 64)) (y (BitVec 64)) (z (BitVec 64))) (BitVec 64) (ite (= x #x0000000000000001) y z))

(synth-fun f ( (x (BitVec 64))) (BitVec 64)
(

(Start (BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start)
                    (shl1 Start)
 		    (shr1 Start)
		    (shr4 Start)
		    (shr16 Start)
		    (bvand Start Start)
		    (bvor Start Start)
		    (bvxor Start Start)
		    (bvadd Start Start)
		    (if0 Start Start Start)
 ))
)
)


(constraint (= (f #x462de0de1125b950) #x0000000000000002))
(constraint (= (f #x23564099dc9e076d) #xfffffffffffffffd))
(constraint (= (f #xa1199b5717c3bcee) #x0000000000000002))
(constraint (= (f #x3a5ee8e4e34da67b) #xfffffffffffffffd))
(constraint (= (f #xeca686a3eaec9565) #xfffffffffffffffd))
(constraint (= (f #xcbe015cc4240ac1b) #xfffffffffffffffd))
(constraint (= (f #x6c9271a3b619b696) #x0000000000000002))
(constraint (= (f #x1bedceca48c8e033) #xfffffffffffffffd))
(constraint (= (f #xd0b46cc12deb61e0) #x0000000000000002))
(constraint (= (f #x51205ccce3ba2880) #x0000000000000002))
(check-synth)
