
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


(constraint (= (f #x2e6535c581a8392a) #x2e6535c581a8392a))
(constraint (= (f #xa153d2ee3ed0ce5d) #xa153d2ee3ed0ce5f))
(constraint (= (f #x802ca6c48dad2e26) #x802ca6c48dad2e26))
(constraint (= (f #xe724ed68de88bead) #xe724ed68de88beaf))
(constraint (= (f #x29d1733e35663b5e) #x29d1733e35663b5e))
(constraint (= (f #x45c8ec3283143ebb) #x45c8ec3283143ebb))
(constraint (= (f #x214938924a27324d) #x214938924a27324f))
(constraint (= (f #x895e15ace4700348) #x895e15ace4700348))
(constraint (= (f #xa110d71639987076) #xa110d71639987076))
(constraint (= (f #xa0b469693dd6ad2d) #xa0b469693dd6ad2f))
(check-synth)
