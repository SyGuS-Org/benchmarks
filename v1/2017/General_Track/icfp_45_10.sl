
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


(constraint (= (f #xed5eee4004416702) #x0000000000000000))
(constraint (= (f #x59a7e2ee2a47d16e) #x0000000000000000))
(constraint (= (f #xa9616e3dac571c3a) #x0000000000000000))
(constraint (= (f #x6ac6c6e143ce3bc5) #x00009539391ebc31))
(constraint (= (f #x6c6eb64dedeedce2) #x0000000000000000))
(constraint (= (f #x8a25e96cd52e2ec5) #x000075da16932ad1))
(constraint (= (f #x31e8d0a38a4e167e) #x0000000000000000))
(constraint (= (f #xe4272013c59595ac) #x0000000000000000))
(constraint (= (f #x38e5937596e06d47) #x0000c71a6c8a691f))
(constraint (= (f #x9eeeadb04d099ea8) #x0000000000000000))
(check-synth)
