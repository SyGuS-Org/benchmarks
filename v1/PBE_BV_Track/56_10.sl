
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


(constraint (= (f #x3e028b121ce9770b) #x01f0145890e74bb9))
(constraint (= (f #x2612baaa403edde9) #x013095d55201f6ef))
(constraint (= (f #xbaac9b72a25aeae5) #x05d564db9512d757))
(constraint (= (f #x41614953a3eed8d9) #x0000000000000001))
(constraint (= (f #xe8e28e56e35b9bb5) #x0000000000000001))
(constraint (= (f #xe876e15baebbbe9e) #xb964a4130c333bda))
(constraint (= (f #xd5b1e6be238d4c47) #x06ad8f35f11c6a63))
(constraint (= (f #x07c63e46a22ed5e1) #x003e31f2351176af))
(constraint (= (f #x8b18a86eeaeca52b) #x0458c54377576529))
(constraint (= (f #x66b3d68cb990c91e) #x341b83a62cb25b5a))
(check-synth)
