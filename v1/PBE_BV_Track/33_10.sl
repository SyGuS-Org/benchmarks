
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


(constraint (= (f #xa58199527021aecd) #x0000000000000002))
(constraint (= (f #x0a8e1b47152b045b) #x0000000000000002))
(constraint (= (f #xa2ae6e15ae402a80) #x0000000000000000))
(constraint (= (f #xcd3e2c76d2967379) #x0000000000000000))
(constraint (= (f #xe432767845375e02) #x0000000000000002))
(constraint (= (f #x7ce2ec4d032e4006) #x0000000000000000))
(constraint (= (f #x7b04438bb147022c) #x0000000000000002))
(constraint (= (f #x67e90e24e2aadeac) #x0000000000000000))
(constraint (= (f #x14e560c5b8b59c65) #x0000000000000002))
(constraint (= (f #xd0dd6177289ba994) #x0000000000000002))
(check-synth)
