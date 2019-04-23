
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


(constraint (= (f #x20856be98e1e206e) #x0df7a941671e1df9))
(constraint (= (f #x376dc13e5ced3bc3) #x376dc13e5ced3bc5))
(constraint (= (f #x840b9c61ea141aa4) #x07bf4639e15ebe55))
(constraint (= (f #x2917d19e25873672) #x0d6e82e61da78c98))
(constraint (= (f #xe1ec806bc484ec45) #xe1ec806bc484ec47))
(constraint (= (f #x7e84ab45de6d6a17) #x7e84ab45de6d6a19))
(constraint (= (f #x12d16e5646e7b8d0) #x0ed2e91a9b918472))
(constraint (= (f #x309166c4cd400648) #x0cf6e993b32bff9b))
(constraint (= (f #xc6bc306c1296379a) #x03943cf93ed69c86))
(constraint (= (f #x45c450e90de32b65) #x45c450e90de32b67))
(check-synth)
