
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


(constraint (= (f #xd5a6481ee2ba1030) #xfffffffffffffffe))
(constraint (= (f #x03e887e72dee55cd) #x03e887e72dee55cd))
(constraint (= (f #xaced92921c8e318d) #xaced92921c8e318d))
(constraint (= (f #x95e5e4184e40aaec) #xfffffffffffffffe))
(constraint (= (f #x352367e34d76550b) #x352367e34d76550b))
(constraint (= (f #x398560eeee7b1b6c) #xfffffffffffffffe))
(constraint (= (f #x099be4899986c29a) #xfffffffffffffffe))
(constraint (= (f #xb14b75be2e13445a) #xfffffffffffffffe))
(constraint (= (f #xb4c680ad7e6b16ce) #xfffffffffffffffe))
(constraint (= (f #x7e4954872868acb8) #xfffffffffffffffe))
(check-synth)
