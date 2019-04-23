
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


(constraint (= (f #x9932c15ebaeb4269) #x9932c15ebaeb4268))
(constraint (= (f #x8a5e2b8e6262b9bc) #x8a5e2b8e6262b9bc))
(constraint (= (f #x5b3578d17e645464) #x5b3578d17e645464))
(constraint (= (f #x6355a7b4e2a7c28e) #x6355a7b4e2a7c28e))
(constraint (= (f #x02c1a60948c6ae37) #x0000000000000001))
(constraint (= (f #x73c46e35cb448e1d) #x0000000000000001))
(constraint (= (f #xedc3d723c6c90eea) #xedc3d723c6c90eea))
(constraint (= (f #x1c5246ed346ba5d4) #x1c5246ed346ba5d4))
(constraint (= (f #xe4c081bb2a2eea78) #xe4c081bb2a2eea78))
(constraint (= (f #xc2d8e4ed35bde115) #x0000000000000001))
(check-synth)
