
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


(constraint (= (f #x64696e76c5588442) #x64696e76c5588444))
(constraint (= (f #x0bc43a44e7d4533c) #x0000f43bc5bb182c))
(constraint (= (f #x29e61e9e6d51300a) #x29e61e9e6d51300c))
(constraint (= (f #xaa3e30ee79d2945a) #xaa3e30ee79d2945c))
(constraint (= (f #xc27b0bd99b52ba3c) #x00003d84f42664ae))
(constraint (= (f #x8cdd161e33b71ee4) #x00007322e9e1cc49))
(constraint (= (f #x114cc9a56332b3dd) #x0001000000000000))
(constraint (= (f #xc23dee6ce4d1ee12) #xc23dee6ce4d1ee14))
(constraint (= (f #x416ec37e51d9a5ae) #x416ec37e51d9a5b0))
(constraint (= (f #xac5a4153684d624b) #x0000000000000002))
(check-synth)
