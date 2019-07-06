
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


(constraint (= (f #xe037be6b4e8b9a78) #x701bdf35a745cd3c))
(constraint (= (f #x2a8b7c5be7d117b4) #x1545be2df3e88bda))
(constraint (= (f #x6a0b469313010a20) #x3505a34989808510))
(constraint (= (f #x89480e7d5361277c) #x44a4073ea9b093be))
(constraint (= (f #x22da0d08a693cd1b) #x116d06845349e68d))
(constraint (= (f #xd7b0e6a3b081207e) #x6bd87351d840903f))
(constraint (= (f #x201027ad1948b188) #xeff7ec29735ba73b))
(constraint (= (f #x83e0ce570116d363) #xbe0f98d47f74964e))
(constraint (= (f #x33bd43ee87c9b3d1) #x19dea1f743e4d9e8))
(constraint (= (f #x7ae36a145e676d42) #x3d71b50a2f33b6a1))
(check-synth)
