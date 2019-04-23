
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


(constraint (= (f #x0e6b171e43c3eaa2) #x00001cd62e3c8784))
(constraint (= (f #x0c304d27a8177561) #x000018609a4f502c))
(constraint (= (f #xee6c6e9e9da6d272) #x0001dcd8dd3d3b4c))
(constraint (= (f #x92e6dd6ae5477983) #x92e64f8c382d9cc4))
(constraint (= (f #x91c26d7214762523) #x00012384dae428ec))
(constraint (= (f #x5b1c9bb9835eee34) #x0000b639377306bc))
(constraint (= (f #x5a9a0e1850ee9ea8) #x0000b5341c30a1dc))
(constraint (= (f #x661ee53c4698b7be) #x0000cc3dca788d30))
(constraint (= (f #xbe79cd6be8b0a19e) #xbe79731225db492f))
(constraint (= (f #x3b35d14cd6bea4a1) #x0000766ba299ad7c))
(check-synth)
