
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


(constraint (= (f #x7e68103aa3adc1c8) #x7e68103b2215d202))
(constraint (= (f #xeea4069881de9e20) #xeea406997082a4b8))
(constraint (= (f #xda16d0abad2b5818) #xda16d0ac874228c3))
(constraint (= (f #x4801cbab5ace8577) #x004801cbab5ace85))
(constraint (= (f #x09e8d69ebee4add2) #x09e8d69ec8cd8470))
(constraint (= (f #xd402696eb0896b04) #xd402696f848bd472))
(constraint (= (f #x51b74d3de1eb6c2e) #x51b74d3e33a2b96b))
(constraint (= (f #x66618e5291de00c0) #x66618e52f83f8f12))
(constraint (= (f #x1481302b08ee8a77) #x001481302b08ee8a))
(constraint (= (f #x3cb584e035ea3ab1) #x003cb584e035ea3a))
(check-synth)
