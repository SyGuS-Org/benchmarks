
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


(constraint (= (f #x0e710eaca45caeeb) #xf18ef1535ba35114))
(constraint (= (f #xb322271bee6a4318) #xe6998aac34c136b7))
(constraint (= (f #x76eed95b6b4a1db8) #x9b3373edbe21a6d7))
(constraint (= (f #x3a8023d138c8387e) #x507f948c55a75685))
(constraint (= (f #x7998de93b53a88b6) #x93356444e05065dd))
(constraint (= (f #x288bc73657059770) #x865caa5cfaef39af))
(constraint (= (f #x3c91a460d8c7c338) #x4a4b12dd75a8b657))
(constraint (= (f #xd19e4e31274048ea) #x8b25156c8a3f2541))
(constraint (= (f #x4b76c459eed41be9) #xb4893ba6112be416))
(constraint (= (f #xb82a693d190cadce) #xd780c448b4d9f695))
(check-synth)
