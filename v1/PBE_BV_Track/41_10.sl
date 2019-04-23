
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


(constraint (= (f #x0b80bcce081d6022) #x00b80bcce081d603))
(constraint (= (f #xd9eabcbc78ac8230) #x0d9eabcbc78ac823))
(constraint (= (f #x8c852ae6e269a12e) #x08c852ae6e269a13))
(constraint (= (f #x6b32e26d1ca63440) #x06b32e26d1ca6345))
(constraint (= (f #x119a7e445ee7eed3) #x119bffe45feffeff))
(constraint (= (f #x23b0b691ca45585e) #x023b0b691ca45585))
(constraint (= (f #x579729ee56601c26) #x0579729ee56601c3))
(constraint (= (f #x229c90c44d29c079) #x22bdd9cc4dfbdc7f))
(constraint (= (f #x7ced72a06c5b771d) #x7feff7aa6edff77d))
(constraint (= (f #xb5e879e31e817da3) #xbffeffff3fe97ffb))
(check-synth)
