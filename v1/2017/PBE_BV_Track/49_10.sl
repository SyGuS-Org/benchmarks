
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


(constraint (= (f #x4a4e85e8c6ea8e2a) #x949d0bd18dd51c56))
(constraint (= (f #x8d9cb7e53c37917e) #x1b396fca786f22fe))
(constraint (= (f #x0cc6be549e771135) #x00000cc6be549e77))
(constraint (= (f #x25e7b608ebd6e358) #x4bcf6c11d7adc6b2))
(constraint (= (f #xb086795a31e75330) #x610cf2b463cea662))
(constraint (= (f #xc4a0e023eb9259e1) #x0000c4a0e023eb92))
(constraint (= (f #x4e07475142118aa7) #x00004e0747514211))
(constraint (= (f #x21ae4ebe5ee394ac) #x435c9d7cbdc7295a))
(constraint (= (f #xa7ed87165ba054e1) #x0000a7ed87165ba0))
(constraint (= (f #x435d6926745c40d9) #x0000435d6926745c))
(check-synth)
