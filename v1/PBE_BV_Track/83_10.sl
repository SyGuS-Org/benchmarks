
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


(constraint (= (f #xae8222e8155d4a81) #xafc233fc15ffeac1))
(constraint (= (f #xe610de43d0868381) #xe710de63d8868381))
(constraint (= (f #x1a1e5274e339bb63) #x1a1e7276e339fff3))
(constraint (= (f #x1a4351575b97eba4) #x0ec5ddc12385748c))
(constraint (= (f #x1e267c44cc3beaae) #x10f5a5e6b2e1b401))
(constraint (= (f #x403ba2870033d967) #x403bf3870033dde7))
(constraint (= (f #xe57587e9652017b6) #x81121c7348e20d56))
(constraint (= (f #x95c600e75ac36e1d) #x95e600e77ac37f1d))
(constraint (= (f #x86db6296a33eebb7) #x86fff396b33fffff))
(constraint (= (f #x7a761e4b7ad2269c) #x44e2710a751635b7))
(check-synth)
