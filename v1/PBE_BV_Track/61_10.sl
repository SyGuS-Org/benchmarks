
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


(constraint (= (f #xedee2a48b7853845) #xedee2a48b7853845))
(constraint (= (f #x064d2ba44438e16e) #x064d2ba44438e16f))
(constraint (= (f #x8ceed2803c300ae6) #x8ceed2803c300ae7))
(constraint (= (f #xa4410e00e3a0abca) #xa4410e00e3a0abcb))
(constraint (= (f #xa5c2e52b88ad5a44) #x000014b85ca57115))
(constraint (= (f #x36d8137e3eb0a2a1) #x36d8137e3eb0a2a1))
(constraint (= (f #x068d0a456788c03b) #x000000d1a148acf1))
(constraint (= (f #xc9e2c45e256664b3) #x0000193c588bc4ac))
(constraint (= (f #x930e85d58d8ea100) #x00001261d0bab1b1))
(constraint (= (f #x3b96bb9033aa2bed) #x3b96bb9033aa2bed))
(check-synth)
