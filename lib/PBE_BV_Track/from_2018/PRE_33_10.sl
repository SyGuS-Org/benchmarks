
(set-logic BV)

(define-fun ehad ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (BitVec 64))) (BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (BitVec 64)) (y (BitVec 64)) (z (BitVec 64))) (BitVec 64) (ite (= x #x0000000000000001) y z))

(synth-fun f ( (x (BitVec 64))) (BitVec 64)
(

(Start (BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start)
                    (smol Start)
 		    (ehad Start)
		    (arba Start)
		    (shesh Start)
		    (bvand Start Start)
		    (bvor Start Start)
		    (bvxor Start Start)
		    (bvadd Start Start)
		    (im Start Start Start)
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
