
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


(constraint (= (f #xd70894e15a6d6477) #x0ae1129c2b4dac8e))
(constraint (= (f #xb47b9809eb1e63c2) #xb933de894c6c7d84))
(constraint (= (f #x4c926e5787ec9514) #x57c947720f6dcbc2))
(constraint (= (f #x3b7a11e01c3a0c05) #x076f423c03874180))
(constraint (= (f #x9051719149096de6) #x974c5a783478d706))
(constraint (= (f #x84d52223ea329667) #x009aa4447d4652cc))
(constraint (= (f #x7a7b84ced6e08801) #x0f4f7099dadc1100))
(constraint (= (f #x0b9de3e38606aee1) #x0173bc7c70c0d5dc))
(constraint (= (f #xd3b8b711ed0de2e5) #x0a7716e23da1bc5c))
(constraint (= (f #xeb83c95898c23a22) #xeccb8cc30f36167e))
(check-synth)
