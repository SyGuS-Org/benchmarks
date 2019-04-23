
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


(constraint (= (f #xec54b1528e483750) #x0000000000000000))
(constraint (= (f #x83217ee5c2e5aa1e) #x0000000000000000))
(constraint (= (f #x0e64cb96c38e7e0e) #x0e64cc7d1047ea46))
(constraint (= (f #x1835eae3ddec0457) #x0000000000000000))
(constraint (= (f #x58774c55a08d6c70) #x0000000000000000))
(constraint (= (f #xa576265225941ad6) #x0000000000000000))
(constraint (= (f #x86eb0658d7e059ee) #x86eb0ec78845e76c))
(constraint (= (f #x30171ca5a9610ec9) #x30171ca5a9610ec9))
(constraint (= (f #x2aee8cc9a721554b) #x2aee8cc9a721554b))
(constraint (= (f #x3414db69de676130) #x0000000000000000))
(check-synth)
