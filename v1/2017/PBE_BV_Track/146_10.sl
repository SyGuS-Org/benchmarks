
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


(constraint (= (f #x057b494d47c86436) #x0af6929a8f90c86d))
(constraint (= (f #xa3b05289dc347d26) #xa3b05289dc347d26))
(constraint (= (f #xaec1e4ce32a79336) #xaec1e4ce32a79336))
(constraint (= (f #x221ca8b7490eaa6e) #x4439516e921d54dd))
(constraint (= (f #x0e5e645ae81ba346) #x0e5e645ae81ba346))
(constraint (= (f #x866723d29e0d05e3) #x866723d29e0d05e3))
(constraint (= (f #x998d30ede66b88b5) #x998d30ede66b88b5))
(constraint (= (f #x4533148bc4913e4e) #x4533148bc4913e4e))
(constraint (= (f #x13c6a8c49aeee9a6) #x13c6a8c49aeee9a6))
(constraint (= (f #x23ee0489de1ebee3) #x23ee0489de1ebee3))
(check-synth)
