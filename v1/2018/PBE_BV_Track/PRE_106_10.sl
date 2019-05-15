
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


(constraint (= (f #xd294433703509ebe) #x0000000000000001))
(constraint (= (f #x3a3bedc07eed85c2) #x0223acc006ec8040))
(constraint (= (f #x56e47683a3048407) #x0464460022000000))
(constraint (= (f #x0d1c0dc1a60067e9) #x0000000000000000))
(constraint (= (f #xc376beca2c4543cc) #x0000000000000001))
(constraint (= (f #x5e28869a0431dea4) #x0420800800011ca0))
(constraint (= (f #xed6e301cc30c8297) #x0c462000c0008001))
(constraint (= (f #x48e4d74b57acd410) #x008445401528c400))
(constraint (= (f #x2939610db8da9e01) #x0011000098888800))
(constraint (= (f #x14a2ea25d992879c) #x0000000000000001))
(check-synth)
