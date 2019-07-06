
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


(constraint (= (f #x5d1a1ba411b5e373) #x5d1a1ba411b5e373))
(constraint (= (f #xa67ee6e7e3761380) #xa67ee6e7e3761381))
(constraint (= (f #x70144724b1edc80e) #x70144724b1edc80f))
(constraint (= (f #x48ea0967ae1181da) #xb715f69851ee7e25))
(constraint (= (f #x7603ee9e575097aa) #x7603ee9e575097ab))
(constraint (= (f #x964ee3271e075e3e) #x69b11cd8e1f8a1c1))
(constraint (= (f #xd7ec5702beea39ca) #x2813a8fd4115c635))
(constraint (= (f #x071b4c9b73e617a1) #x071b4c9b73e617a1))
(constraint (= (f #x860b79c184d6c7e6) #x79f4863e7b293819))
(constraint (= (f #xd8cb21de63aa1a38) #xd8cb21de63aa1a39))
(check-synth)
