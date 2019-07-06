
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


(constraint (= (f #xa043199d86d9bdca) #x2810c66761b66f72))
(constraint (= (f #xd0157656939e52c5) #x0000000000000001))
(constraint (= (f #x4b12ae416b7aab37) #x4b12ae416b7aab37))
(constraint (= (f #x6edc862e43e27be5) #x6edc862e43e27be5))
(constraint (= (f #xeee46e8ee3ebb086) #x3bb91ba3b8faec21))
(constraint (= (f #x1352b8171e6e0b23) #x1352b8171e6e0b23))
(constraint (= (f #x753a24cda205c03b) #x0000000000000001))
(constraint (= (f #x773d5d96782e178a) #x0000000000000001))
(constraint (= (f #xa91e181ed0922d7a) #x0000000000000001))
(constraint (= (f #x3d46d2228186d5da) #x0f51b488a061b576))
(check-synth)
