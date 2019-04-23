
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


(constraint (= (f #xdc452be7242c1a1e) #x0000b88a57ce4858))
(constraint (= (f #xc4636197a50b3e36) #x0000a652d15c778e))
(constraint (= (f #x1e8da262013499e5) #x00001e8da2620134))
(constraint (= (f #x58e046e06b41306b) #x0000749065905ee1))
(constraint (= (f #xdeec6ae8e5ed97eb) #x0000b19a5f9c971b))
(constraint (= (f #x5d713121e99b6151) #x0000bae26243d336))
(constraint (= (f #x8c5cc5e425bada5c) #x000018b98bc84b75))
(constraint (= (f #xbeaebdece50913e4) #x0000beaebdece509))
(constraint (= (f #x84e219ddd90314d8) #x000084e219ddd903))
(constraint (= (f #x11674b54ee3623d1) #x000022ce96a9dc6c))
(check-synth)
