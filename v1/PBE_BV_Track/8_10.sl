
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


(constraint (= (f #x2963d0b107bb27a8) #x0a58f42c41eec9ea))
(constraint (= (f #xe46e1ea225c311ba) #x391b87a88970c46e))
(constraint (= (f #x068c92dda82cade4) #xfffffffffffffffe))
(constraint (= (f #x2461aa8e4eb06e58) #x09186aa393ac1b96))
(constraint (= (f #xc7cab4c50b4c26a3) #x0000000000000000))
(constraint (= (f #x2cc767751283b208) #x0b31d9dd44a0ec82))
(constraint (= (f #x6b044d2c4a769e58) #x1ac1134b129da796))
(constraint (= (f #xa4de59beeb52d8e8) #x2937966fbad4b63a))
(constraint (= (f #x1ee075b4a42c2509) #x0000000000000000))
(constraint (= (f #xde1d5e85ec587acc) #xfffffffffffffffe))
(check-synth)
