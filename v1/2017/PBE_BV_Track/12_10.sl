
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


(constraint (= (f #x7ccc6e8b28aeee9d) #x7ccd6e8b28aeee9c))
(constraint (= (f #x19e8e4125382c6c0) #x19e9e4125382c6bf))
(constraint (= (f #xe137a30c1d3c2eb6) #xfffffffffffffffc))
(constraint (= (f #x54eac1dc9853aed7) #xfffffffffffffffe))
(constraint (= (f #xaeb15d8e05e32553) #xfffffffffffffffe))
(constraint (= (f #x8935e3b7034e6697) #xfffffffffffffffe))
(constraint (= (f #xe0ddea4eb0b4b1e9) #xe0deea4eb0b4b1e8))
(constraint (= (f #xb0ec41ceae410296) #xfffffffffffffffc))
(constraint (= (f #x25a9eb4d0a8717d8) #x25aaeb4d0a8717d7))
(constraint (= (f #x4c80d548e86d4eb5) #x4c81d548e86d4eb4))
(check-synth)
