
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


(constraint (= (f #xebe5824b78c14870) #x000041208020a420))
(constraint (= (f #xcb475e2ecc79224e) #x0000250326140024))
(constraint (= (f #x5e4cd698331aea5e) #x00002b04090c110d))
(constraint (= (f #x3207d55929cbe707) #x640faab25397ce0e))
(constraint (= (f #xe09e922b84d0bb0c) #x0000400540004000))
(constraint (= (f #x7d6edeaa19d3ece3) #xfaddbd5433a7d9c6))
(constraint (= (f #xdebe3b485a26576e) #x00000d040d002913))
(constraint (= (f #x2d5d4e59ed4e33ec) #x0000062ca62410a6))
(constraint (= (f #x1d59ee5b7e3ea36e) #x0000062cb70d1117))
(constraint (= (f #x37e14126a2914aa0) #x0000009000000140))
(check-synth)
