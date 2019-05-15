
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


(constraint (= (f #x9838c02283e8a235) #x9838c02283e8a235))
(constraint (= (f #xbea5b19521dee588) #x0000000000000001))
(constraint (= (f #xba010ecd01a176eb) #xba010ecd01a176eb))
(constraint (= (f #x2d51e856b031ca52) #x0000000000000001))
(constraint (= (f #x409d73e061a4c778) #x409d77ea38e2cd92))
(constraint (= (f #xe723ee480a2e98b3) #x0000000000000000))
(constraint (= (f #x6428aebe501e7ad4) #x6428b500db0a5fd5))
(constraint (= (f #x6b715d4c4ede7816) #x0000000000000001))
(constraint (= (f #x1ea0ac3ca7b9b74a) #x1ea0ae26b27d81c5))
(constraint (= (f #xd6bb7b0a79dd39e6) #xd6bb8876318de183))
(check-synth)
