
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


(constraint (= (f #x544b5bbdc571c6b2) #x000002a25addee2b))
(constraint (= (f #xb0e3e76e26dec17d) #x41878c98093900f0))
(constraint (= (f #xaa57bd1e9404189e) #x00000552bde8f4a0))
(constraint (= (f #xee8945eee40843e9) #x000007744a2f7720))
(constraint (= (f #x7765687d88e2b740) #x000003bb2b43ec47))
(constraint (= (f #xb8a35d2394b12601) #x000005c51ae91ca5))
(constraint (= (f #xbde490e51eee6803) #x7380018039988004))
(constraint (= (f #x944b84dc0d85e3aa) #x0006013012038600))
(constraint (= (f #x67e425422e8a5b77) #x0000033f212a1174))
(constraint (= (f #x4426a656eeeb0ae3) #x0008080999840184))
(check-synth)
