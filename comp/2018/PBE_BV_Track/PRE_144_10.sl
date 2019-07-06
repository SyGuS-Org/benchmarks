
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


(constraint (= (f #x2b1da9306cb4eb14) #xfd4e256cf934b14e))
(constraint (= (f #xa011c2452cc97991) #xf5008e1229664bcc))
(constraint (= (f #xe8376aaee5ad0e18) #xe83782998f03ebb5))
(constraint (= (f #x8e07b682d6e783cc) #x8e0738856065552b))
(constraint (= (f #xa1091b0ebd139a7a) #xf5ef6e4f142ec658))
(constraint (= (f #x0aa6670a04b97cbe) #xff55998f5fb46834))
(constraint (= (f #x9e25186aac01e7e1) #xf4f128c355600f3f))
(constraint (= (f #xec7e6d355e274c91) #xf763f369aaf13a64))
(constraint (= (f #x992e3a3ed15c6aba) #xf66d1c5c12ea3954))
(constraint (= (f #xa39e2ed3a1c30ec0) #xa39e8d4d8f10af03))
(check-synth)
