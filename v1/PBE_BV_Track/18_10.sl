
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


(constraint (= (f #x79c583151dccecdc) #x0000000000000000))
(constraint (= (f #x145e6dd46e84741d) #x28bcdba8dd08e83a))
(constraint (= (f #xb87396e7d47b3cae) #x70e72dcfa8f6795c))
(constraint (= (f #xdd3bae7dce765576) #x0000000000000000))
(constraint (= (f #xc865922a66de88d1) #x90cb2454cdbd11a2))
(constraint (= (f #xe677bbc3e08b2ba5) #x000188c360830104))
(constraint (= (f #xb8174e198a4698dd) #x702e9c33148d31ba))
(constraint (= (f #x86a7a27c6e6485cc) #x0d4f44f8dcc90b98))
(constraint (= (f #x39028982d50c909a) #x0000000000000000))
(constraint (= (f #x5b7bec9e09e225ce) #xb6f7d93c13c44b9c))
(check-synth)
