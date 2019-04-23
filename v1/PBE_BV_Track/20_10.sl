
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


(constraint (= (f #x6ba85dde49446e3e) #x0000000000000001))
(constraint (= (f #xd14a9567e1e3e174) #x0000000000000001))
(constraint (= (f #x73eec18bc935e853) #x73eec18bc935e853))
(constraint (= (f #x7e1268367456aa6d) #x7e1268367456aa6f))
(constraint (= (f #xa50b8b60ce5de125) #xa50b8b60ce5de127))
(constraint (= (f #x00d377cc616a4a8b) #x0000000000000000))
(constraint (= (f #xeecbec39e14c9464) #x0000000000000001))
(constraint (= (f #x131376035b872e20) #x0000000000000001))
(constraint (= (f #x9503080bc4444573) #x0000000000000000))
(constraint (= (f #x76222ae89e4c5153) #x0000000000000000))
(check-synth)
