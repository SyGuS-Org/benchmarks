
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


(constraint (= (f #x306c7a7c13802c06) #x0000000000000000))
(constraint (= (f #x4bc3915643c40629) #x0000000000000001))
(constraint (= (f #x53ed3096d41c57b4) #x0000000000000000))
(constraint (= (f #x81a38de92e3badec) #x03471bd25c775bd8))
(constraint (= (f #xa929321a893e34eb) #x0000000000000001))
(constraint (= (f #xae0e47401697eb6b) #x5c1c8e802d2fd6d6))
(constraint (= (f #xba6e53bb706d9eb5) #x74dca776e0db3d6a))
(constraint (= (f #x98e661bcb965c620) #x31ccc37972cb8c40))
(constraint (= (f #x2abe37287eb8067e) #x0000000000000000))
(constraint (= (f #xebb7071ea9950202) #xd76e0e3d532a0404))
(check-synth)
