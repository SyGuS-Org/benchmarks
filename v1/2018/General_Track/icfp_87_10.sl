
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


(constraint (= (f #x66724b71e3b8a452) #x66724b71e3b8a454))
(constraint (= (f #x6b566e6d3670d9ce) #x6b566e6d3670d9d0))
(constraint (= (f #xd3e1ac6bb2e995c3) #x0000000000000002))
(constraint (= (f #x0226c8a04ebeea5e) #x0226c8a04ebeea60))
(constraint (= (f #x9489e05b83e0784c) #x9489e05b83e0784e))
(constraint (= (f #x87de2ed85dc94818) #x43ef176c2ee4a40c))
(constraint (= (f #x3352ea4b75c79e83) #x0000000000000002))
(constraint (= (f #x2970e37c57ad922e) #x14b871be2bd6c917))
(constraint (= (f #xbba2644d2de32e14) #x5dd1322696f1970a))
(constraint (= (f #xe481b69326876ec3) #x0000000000000002))
(check-synth)
