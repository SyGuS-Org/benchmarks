
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


(constraint (= (f #x55533c00d5be6ce0) #x01554cf00356f9b3))
(constraint (= (f #xa64756e3318e7243) #x02991d5b8cc639c9))
(constraint (= (f #xa1167ee86372ec38) #x0e33a8338a597344))
(constraint (= (f #x5b5e3e088674b469) #x016d78f82219d2d1))
(constraint (= (f #xe9199c4d8261e833) #x03b2aa4d686a2385))
(constraint (= (f #xbe7d2b7b076ea6e0) #x02f9f4adec1dba9b))
(constraint (= (f #x8b2e5815ba4d39ec) #x022cb96056e934e7))
(constraint (= (f #x08484e7d34a5a501) #x00212139f4d29694))
(constraint (= (f #x1e69ae205ad2e0a2) #x0079a6b8816b4b82))
(constraint (= (f #x501ee15ecbc5cb6a) #x01407b857b2f172d))
(check-synth)
