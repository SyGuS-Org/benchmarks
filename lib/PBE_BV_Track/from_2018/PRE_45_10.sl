
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
