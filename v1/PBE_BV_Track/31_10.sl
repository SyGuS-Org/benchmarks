
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


(constraint (= (f #x782311ce9a01e21a) #x0fb9dc62cbfc3bca))
(constraint (= (f #xee68c1a59be2955e) #x232e7cb4c83ad542))
(constraint (= (f #x723ba7e585e8282a) #x0000222185e00028))
(constraint (= (f #x758010363b8956ed) #x0000100010001289))
(constraint (= (f #x52ab23ada6e98b72) #x5aa9b8a4b22ce91a))
(constraint (= (f #xde942ad776a2655b) #x42d7aa5112bb3548))
(constraint (= (f #x2635dbbb666b92b5) #xb39448893328da94))
(constraint (= (f #xa6e146c451842a6c) #x000006c040840004))
(constraint (= (f #xb21a19ead2000d63) #x0000100a10000000))
(constraint (= (f #xed82e4ddaa889d6a) #x0000e480a0888808))
(check-synth)
