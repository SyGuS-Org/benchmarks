
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


(constraint (= (f #x44ccce634ace1b4a) #x09999cc6959c3694))
(constraint (= (f #xa8156b111c178b62) #x0001502ad622382e))
(constraint (= (f #xa6e07852e989c07e) #x00014dc0f0a5d312))
(constraint (= (f #x1127052aee98853e) #x224e0a55dd310a7c))
(constraint (= (f #x84a5e15c77ce2ca0) #x094bc2b8ef9c5940))
(constraint (= (f #x609844195a9e8761) #x0000c1308832b53c))
(constraint (= (f #x3ee4c84a6aa90298) #x00007dc99094d552))
(constraint (= (f #xed8b1e372e1b98dd) #x0001db163c6e5c36))
(constraint (= (f #x437473a7e33042ee) #x06e8e74fc66085dc))
(constraint (= (f #x69dd4e35a0e80909) #x0000d3ba9c6b41d0))
(check-synth)
