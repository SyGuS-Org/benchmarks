
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


(constraint (= (f #x4cb86ddc83ce50a2) #x4cb86ddc83ce50a2))
(constraint (= (f #xec64bb73d0e8ba14) #xec64bb73d0e8ba14))
(constraint (= (f #x7cae1d68e5ee2eb8) #x7cae1d68e5ee2eb8))
(constraint (= (f #x1aedd0e026c49408) #x1aedd0e026c49408))
(constraint (= (f #x540b2c9e007b5422) #x540b2c9e007b5422))
(constraint (= (f #x3ea34ed7052e99db) #x3ea34ed7052e99d9))
(constraint (= (f #x9900ed412c53262c) #x9900ed412c53262c))
(constraint (= (f #x8e21e59225eae682) #x8e21e59225eae682))
(constraint (= (f #x81bc9ed221c6a904) #x81bc9ed221c6a904))
(constraint (= (f #x12e6ec5aac0e57e7) #x12e6ec5aac0e57e5))
(check-synth)
