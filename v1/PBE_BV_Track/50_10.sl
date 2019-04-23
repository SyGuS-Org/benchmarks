
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


(constraint (= (f #xbc9b36c3d3a6d7ae) #x0c5ad5b4474eb78f))
(constraint (= (f #x618e7d2b3028b505) #x0a292877d5079df0))
(constraint (= (f #xb2b31021e72b4583) #xb2b31021e72b4584))
(constraint (= (f #x903339ca8258b7e1) #x0b0554a5f86e9d82))
(constraint (= (f #x0d72a11da419b8ba) #x01797e326ec2ac9c))
(constraint (= (f #x2aa39ec9b16d03ed) #x2aa39ec9b16d03ee))
(constraint (= (f #xa5eed08e88aa35e9) #xa5eed08e88aa35ea))
(constraint (= (f #xa114ed4659e71556) #xa114ed4659e71557))
(constraint (= (f #x115e3b5bccb66c11) #x115e3b5bccb66c12))
(constraint (= (f #xd0c872b4060c0d8a) #xd0c872b4060c0d8b))
(check-synth)
