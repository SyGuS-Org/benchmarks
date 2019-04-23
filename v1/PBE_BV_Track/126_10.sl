
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


(constraint (= (f #x71c7e1ab41379480) #xfffffffffffffffc))
(constraint (= (f #x7b4319c0667e8b53) #xfffffffffffffffe))
(constraint (= (f #xb4c780718adb8ed7) #x0b4c780718adb8ed))
(constraint (= (f #x204b051e056a95e0) #x0204b051e056a95e))
(constraint (= (f #x758d3e93d508c7aa) #x0758d3e93d508c7a))
(constraint (= (f #xa91e81c7989ab3ed) #xfffffffffffffffe))
(constraint (= (f #x7bb37b8ea0e551bb) #xfffffffffffffffe))
(constraint (= (f #x9e72bc3e96c7ea68) #xfffffffffffffffc))
(constraint (= (f #x35e1057c93242bd7) #xfffffffffffffffe))
(constraint (= (f #x405b3287eb0a36e5) #x0405b3287eb0a36e))
(check-synth)
