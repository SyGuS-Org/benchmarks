
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


(constraint (= (f #x56b71824648d03dc) #xffffffff56b71824))
(constraint (= (f #x2eae5e05e7abe9e8) #xffffffff2eae5e05))
(constraint (= (f #xcd3ec1341d9b9d94) #xffffffffcd3ec134))
(constraint (= (f #xa22c2e44413a449a) #x0bba7a3777d8b76c))
(constraint (= (f #x61cbc78155de393b) #x13c6870fd54438d8))
(constraint (= (f #xeab8219b6ee7b76d) #xffffffffeab8219b))
(constraint (= (f #x93899d46b23e71ce) #x0d8ecc5729b831c6))
(constraint (= (f #x3766ddab39201e64) #xffffffff3766ddab))
(constraint (= (f #xe8a93b7c358a54dc) #xffffffffe8a93b7c))
(constraint (= (f #xbe83736d5754cb8e) #x082f91925515668e))
(check-synth)
