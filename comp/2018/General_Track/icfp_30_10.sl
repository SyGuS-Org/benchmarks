
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


(constraint (= (f #x058767e45e7b87d4) #x00000001f4f13037))
(constraint (= (f #xee7ede4e01ee3428) #x0000000023024363))
(constraint (= (f #x0d8c239eb8b788e2) #x00000001e4e7b8c2))
(constraint (= (f #xc263d516250d671c) #x000000007b3855d3))
(constraint (= (f #x7e3bc4a78e1b3363) #x00007e3bc4a78e1a))
(constraint (= (f #x0e8e32c4db1a0e29) #x00000e8e32c4db1b))
(constraint (= (f #x2cc0d2ae491ea6b8) #x00000001a67e5aa3))
(constraint (= (f #x1871b609e2280353) #x00001871b609e229))
(constraint (= (f #x6ccec6c79043606e) #x0000000126627270))
(constraint (= (f #x1413ca735596d82c) #x00000001d7d86b19))
(check-synth)
