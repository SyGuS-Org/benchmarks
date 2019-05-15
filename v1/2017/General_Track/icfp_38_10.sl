
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


(constraint (= (f #x541a486debee6ee3) #x0000541a486debee))
(constraint (= (f #xe5be55a30ebc7880) #xe5be55a30ebc7882))
(constraint (= (f #x322473791e191dbc) #x0000322473791e19))
(constraint (= (f #xe735725aee3eebeb) #x0000e735725aee3e))
(constraint (= (f #x83bbebe9e88e3257) #x000083bbebe9e88e))
(constraint (= (f #x9dcebed0204c4146) #x9dcebed0204c4148))
(constraint (= (f #x1bb3c7716677ae6c) #x00001bb3c7716677))
(constraint (= (f #xa955e45a3c83cbca) #x0000a955e45a3c83))
(constraint (= (f #x27762c119e3ae5ad) #x000027762c119e3a))
(constraint (= (f #xc49e108cb38623b0) #xc49e108cb38623b2))
(check-synth)
