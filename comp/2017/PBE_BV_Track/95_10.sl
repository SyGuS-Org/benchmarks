
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


(constraint (= (f #x6a526433946db183) #x95ad9bcc6b924e7c))
(constraint (= (f #x70537e3e52455423) #x8fac81c1adbaabdc))
(constraint (= (f #x3a13584c406871a1) #xc5eca7b3bf978e5e))
(constraint (= (f #xe9e3d11eb6208ebd) #x161c2ee149df7142))
(constraint (= (f #xbe5cc03822a3a7e1) #x41a33fc7dd5c581e))
(constraint (= (f #x4aeec336b4e610e3) #xb5113cc94b19ef1c))
(constraint (= (f #x6ebd666ee4eec9e7) #x914299911b113618))
(constraint (= (f #x06dd6314116d2195) #xf9229cebee92de6a))
(constraint (= (f #xce6b15de5ab2d1ce) #xce6b15de5ab2d1ce))
(constraint (= (f #x457ad0e42c41ac31) #xba852f1bd3be53ce))
(check-synth)
