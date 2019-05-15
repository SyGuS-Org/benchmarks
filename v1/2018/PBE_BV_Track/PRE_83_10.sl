
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
