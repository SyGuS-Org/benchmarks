
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


(constraint (= (f #x00983eba6e3050dd) #x0000000000000000))
(constraint (= (f #xce7b84b2369ed225) #x0000843204921204))
(constraint (= (f #x84a7d40166cb42de) #x0000000000000000))
(constraint (= (f #x4d5705a9239673e5) #x0000050101802384))
(constraint (= (f #xaa373e0beb2dde83) #x00002a032a09ca01))
(constraint (= (f #xe36141cb84a2c164) #x000071b0a0e5c251))
(constraint (= (f #x5e673d99deb8e6da) #x0000000000000000))
(constraint (= (f #x76e02ceec77e4d40) #x000024e0046e4540))
(constraint (= (f #x051ae67e0d4ce044) #x0000041a044c0044))
(constraint (= (f #xebbb66266593389b) #x0000000000000000))
(check-synth)
