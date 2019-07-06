
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


(constraint (= (f #x78816e053d4a20ea) #x0000000000000001))
(constraint (= (f #xe788a27d860dbde8) #x0000000000000001))
(constraint (= (f #x76256d76c3e5d986) #x0000000000000001))
(constraint (= (f #x8ee5bd7343229e4e) #x0000000000000001))
(constraint (= (f #x92b25872224e4c64) #x0000000000000001))
(constraint (= (f #x71c02511615e82b7) #x0001c70094458578))
(constraint (= (f #x83b21aa78589590b) #x00020ec86a9e1624))
(constraint (= (f #xe044e7b5ea939aa8) #x0000000000000001))
(constraint (= (f #xa481a4a2889de652) #x0000000000000001))
(constraint (= (f #x2e1572e70432518a) #x0000000000000001))
(check-synth)
