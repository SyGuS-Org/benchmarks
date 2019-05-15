
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


(constraint (= (f #x1ee1a02ae82bbd5d) #x1ee1a02ae82bbd5c))
(constraint (= (f #x0acd72d89a2cea29) #x0acd72d89a2cea28))
(constraint (= (f #x2c3b8d463c3e31d8) #x084b2a7d2b4ba958))
(constraint (= (f #x281ee351059ee7d3) #x281ee351059ee7d2))
(constraint (= (f #x79b5452658cabc0e) #x06d1fcf730a60342))
(constraint (= (f #xc75649ee0c398b30) #x05602ddca24aca19))
(constraint (= (f #x732aeee686c80d7c) #x05980ccb39458287))
(constraint (= (f #x5ecaede3c57db56d) #x5ecaede3c57db56c))
(constraint (= (f #x3ce3b23e2dbe4e96) #x0b6ab16ba893aebc))
(constraint (= (f #x745366e292980959) #x745366e292980958))
(check-synth)
