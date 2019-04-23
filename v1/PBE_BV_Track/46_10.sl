
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


(constraint (= (f #x8a58ae9717d6609e) #x0000000000000000))
(constraint (= (f #x95ecde6028563645) #x00000095ecde6028))
(constraint (= (f #xe984b6e7d44eeb66) #x0000000000000000))
(constraint (= (f #x17be5d03173c2103) #x00000017be5d0317))
(constraint (= (f #x293464579a6bc09a) #x0000000000000000))
(constraint (= (f #x550e81a29ab3da53) #x000000550e81a29a))
(constraint (= (f #x665924aae4267679) #x000000665924aae4))
(constraint (= (f #xec16561c7952ad1b) #x000000ec16561c79))
(constraint (= (f #x6e395d22e2a26718) #x0000000000000000))
(constraint (= (f #xec8b67e0c40e5829) #x000000ec8b67e0c4))
(check-synth)
