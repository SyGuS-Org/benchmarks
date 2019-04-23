
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


(constraint (= (f #x079d6cad4a88077e) #x0e30901000000cf8))
(constraint (= (f #xbe1863d9211bc3de) #x7c30c7b2423787bd))
(constraint (= (f #x0174eb79eec52e84) #x02e9d6f3dd8a5d09))
(constraint (= (f #xd0d396dc6e1e49d4) #xa1a72db8dc3c93a8))
(constraint (= (f #xa216b83d87cb304c) #x442d707b0f966099))
(constraint (= (f #x1395680e44e4c257) #x272ad01c89c984af))
(constraint (= (f #xb50c0be6453d8979) #x40100788007200e0))
(constraint (= (f #x699e23340de2d37c) #x82380440138104f0))
(constraint (= (f #x1e829e1c5847e41e) #x3d053c38b08fc83d))
(constraint (= (f #x07d79b0bdcdece98) #x0faf3617b9bd9d30))
(check-synth)
