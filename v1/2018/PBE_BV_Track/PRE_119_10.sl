
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


(constraint (= (f #xaeb7c6a4cce5da7d) #xf3d84bed552e6e87))
(constraint (= (f #xa58be9d4ac5e9755) #xee9c3a7df4e3b9ff))
(constraint (= (f #x8072c4019611c34e) #x778813be608e2081))
(constraint (= (f #xbde1560090759e33) #x4000a89f6688200c))
(constraint (= (f #x1c3de1da08aaa0cc) #x2446226e19ffe154))
(constraint (= (f #x900791e23e66e404) #xb008b22642ab2c0c))
(constraint (= (f #xb320361a529cebb3) #x44cdc88408421044))
(constraint (= (f #xbb3185ce299caac4) #xcd528e527aa5ff4c))
(constraint (= (f #xd5eaccdcc1e076e0) #x7e3f556542209b20))
(constraint (= (f #x6edbe9b1c8bac512) #x91000044234412ac))
(check-synth)
