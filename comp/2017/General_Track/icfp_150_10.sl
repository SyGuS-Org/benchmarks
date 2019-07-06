
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


(constraint (= (f #xea72d9508ddee7b7) #x0000d4e5b2a11bbd))
(constraint (= (f #x1423b7e1e38305b1) #x075ee240f0e3e7d2))
(constraint (= (f #x397be52b796e2456) #x063420d6a4348edd))
(constraint (= (f #x63c19e9d309eeee4) #x04e1f30b167b0888))
(constraint (= (f #xa49e9e74a2470610) #x0000493d3ce9448e))
(constraint (= (f #xe62213447e7982de) #x0000cc442688fcf3))
(constraint (= (f #xe78e89273859600a) #x0000cf1d124e70b2))
(constraint (= (f #x42cdeee85e2b0730) #x0000859bddd0bc56))
(constraint (= (f #x3338c1dbd2994d63) #x0000667183b7a532))
(constraint (= (f #x11984da0daeaee43) #x000023309b41b5d5))
(check-synth)
