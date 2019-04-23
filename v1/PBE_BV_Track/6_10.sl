
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


(constraint (= (f #xb0b2cba4276ad9a6) #xfffdf75ffd9d767d))
(constraint (= (f #xab3a93b9bde29c3c) #x00000ab3a93b9bde))
(constraint (= (f #x80e2462784378141) #xfffdfbddfffcffff))
(constraint (= (f #x8848bb7e1cc40e4e) #xf7ff74c9ff3bffbb))
(constraint (= (f #x1d753032cce42412) #x000001d753032cce))
(constraint (= (f #x23b59452ad91506b) #xfdceefbfd76eeffd))
(constraint (= (f #x226e09a45c71e776) #x00000226e09a45c7))
(constraint (= (f #x38448ad67016cc92) #x0000038448ad6701))
(constraint (= (f #x2cb3e1e79c6e96d5) #x000002cb3e1e79c6))
(constraint (= (f #xb69c7ce8e63dec24) #xfdf7bb3779de33ff))
(check-synth)
