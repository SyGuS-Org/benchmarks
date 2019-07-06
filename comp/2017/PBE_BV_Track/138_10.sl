
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


(constraint (= (f #x8dd35cbd49233180) #x8dd35cbd49233181))
(constraint (= (f #x366bbea1de6b0bee) #x00006cd77d43bcd6))
(constraint (= (f #x4dd2c3b4e846eb22) #x4dd2c3b4e846eb23))
(constraint (= (f #xd843c1e3007309c2) #xd843c1e3007309c3))
(constraint (= (f #xaea0e94c2ece11c5) #x00005d41d2985d9c))
(constraint (= (f #x52e5d4ab78c94e93) #x52e5d4ab78c94e94))
(constraint (= (f #x284b29584e931890) #x284b29584e931891))
(constraint (= (f #xe0a89468735e7bed) #x0000c15128d0e6bc))
(constraint (= (f #xe85e5eeed078618a) #xe85e5eeed078618b))
(constraint (= (f #x8ee1303e8a504039) #x8ee1303e8a50403a))
(check-synth)
