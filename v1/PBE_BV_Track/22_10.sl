
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


(constraint (= (f #x539baa47cce652eb) #xa20a5367007f9e97))
(constraint (= (f #x1830a28d0397ede3) #x78f32cc111f7a56f))
(constraint (= (f #xce446c93184237e3) #x07561edf794b176f))
(constraint (= (f #x4c5db01617c2543a) #x4c5db01617c2543a))
(constraint (= (f #x5b91db88014c9bea) #x5b91db88014c9bea))
(constraint (= (f #xdeb38e93e565aadb) #x5981c8e37afc5647))
(constraint (= (f #x9ecddee93607e0e9) #x1a055a8e0e27648d))
(constraint (= (f #x33b5e3eae3c68e7c) #x33b5e3eae3c68e7c))
(constraint (= (f #x09ee594e3446334e) #x09ee594e3446334e))
(constraint (= (f #x5d3800240bda631e) #x5d3800240bda631e))
(check-synth)
