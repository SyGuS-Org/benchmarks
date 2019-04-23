
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


(constraint (= (f #x2e06e138a01be4ec) #x0000000000000002))
(constraint (= (f #xc5479a03b8ad40d5) #xc5479a03b8ad40d4))
(constraint (= (f #xb84d9d77284eb244) #xb84d9d77284eb244))
(constraint (= (f #x7e14893876abdc0a) #x7e14893876abdc0a))
(constraint (= (f #x75e909118e5b5ae4) #x0000000000000002))
(constraint (= (f #x2d85aa78aace1add) #x2d85aa78aace1adc))
(constraint (= (f #xee4b91c8a03ae200) #x0000000000000002))
(constraint (= (f #x8549d93e95b13e60) #x0000000000000002))
(constraint (= (f #xd96912ebe9be9ceb) #x0000000000000002))
(constraint (= (f #xe2413169cecd32de) #xe2413169cecd32de))
(check-synth)
