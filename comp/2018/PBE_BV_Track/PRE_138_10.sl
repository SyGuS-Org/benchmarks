
(set-logic BV)

(define-fun ehad ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (BitVec 64))) (BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (BitVec 64)) (y (BitVec 64)) (z (BitVec 64))) (BitVec 64) (ite (= x #x0000000000000001) y z))

(synth-fun f ( (x (BitVec 64))) (BitVec 64)
(

(Start (BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start)
                    (smol Start)
 		    (ehad Start)
		    (arba Start)
		    (shesh Start)
		    (bvand Start Start)
		    (bvor Start Start)
		    (bvxor Start Start)
		    (bvadd Start Start)
		    (im Start Start Start)
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