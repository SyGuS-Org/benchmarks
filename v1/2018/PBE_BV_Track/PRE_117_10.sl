
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


(constraint (= (f #x9bbc9a8037ebabc8) #x9bbc9a8037ebabc9))
(constraint (= (f #x97e64ac15279e90a) #x02fcc9582a4f3d21))
(constraint (= (f #x0b29a7367e4154dc) #x0b29a7367e4154dd))
(constraint (= (f #xe04d4640a6077568) #xe04d4640a6077569))
(constraint (= (f #xc45de3b998c119ea) #x088bbc773318233d))
(constraint (= (f #xb6bebc97944c7bac) #xb6bebc97944c7bad))
(constraint (= (f #xd87adc2caed18135) #xd87adc2caed18134))
(constraint (= (f #x4520104ba3b189e5) #x4520104ba3b189e4))
(constraint (= (f #x698cba6a92662eee) #x0d31974d524cc5dd))
(constraint (= (f #xd1910ae768491370) #xd1910ae768491371))
(check-synth)
