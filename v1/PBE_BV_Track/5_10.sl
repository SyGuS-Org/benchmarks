
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


(constraint (= (f #x0b0ee88aa6d83e36) #x0000000000000000))
(constraint (= (f #x089e7415e53ded3a) #x0000f7618bea1ac2))
(constraint (= (f #x9d04373e13670706) #x000062fbc8c1ec98))
(constraint (= (f #xedb5d9e6d00e3e94) #x0000000000000000))
(constraint (= (f #xa5b25cb355c6587d) #x0000000000000000))
(constraint (= (f #xd210e2266521aee5) #xd210e2266521aee4))
(constraint (= (f #x1e5734cea9a5dee5) #x1e5734cea9a5dee4))
(constraint (= (f #x9a9ebedd7a7c1e3b) #x0000000000000000))
(constraint (= (f #x62d04368024530c0) #x00009d2fbc97fdba))
(constraint (= (f #xe26a0c51e2dcdd90) #x0000000000000000))
(check-synth)
