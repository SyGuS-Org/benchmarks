
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


(constraint (= (f #xec1e737c37696a3d) #x89f0c641e44b4ae1))
(constraint (= (f #xd7cc6b697551c449) #x9419ca4b45571ddb))
(constraint (= (f #xd9b86bade91c4cee) #x9323ca290b71d989))
(constraint (= (f #x1cb71cee8216310d) #xf1a47188bef4e779))
(constraint (= (f #x0686d155e141e629) #xfcbc97550f5f0ceb))
(constraint (= (f #x115c812037db0dba) #xf751bf6fe4127923))
(constraint (= (f #xa5174eeb6dd36a07) #xad74588a49164afd))
(constraint (= (f #x5eeb1cb494e1b33b) #xd08a71a5b58f2663))
(constraint (= (f #x9ce38ea84e8e2ae1) #xb18e38abd8b8ea8f))
(constraint (= (f #xb0e0a62e25ee6adc) #xa78face8ed08ca91))
(check-synth)
