
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


(constraint (= (f #xdeb381c72cbc89c2) #xfffff214c7e38d34))
(constraint (= (f #x1daae07b7ad8ce3c) #xfffffe2551f84852))
(constraint (= (f #x3808341e47ede38e) #xfffffc7f7cbe1b81))
(constraint (= (f #x218949588221e8c5) #x0000000000000002))
(constraint (= (f #x5c472b66076ebde3) #x0000000000000002))
(constraint (= (f #x2395e7e10a51a8d3) #x0000000000000002))
(constraint (= (f #x5b4e6bb40dee30ed) #x0000000000000002))
(constraint (= (f #x88ede962bb9583b4) #xfffff7712169d446))
(constraint (= (f #xeb343ee1e896e112) #xfffff14cbc11e176))
(constraint (= (f #x2e60e3eee22cd9e9) #x0000000000000002))
(check-synth)
