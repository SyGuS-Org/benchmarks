
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


(constraint (= (f #x67e8e46bb31d6e42) #x0000000000000001))
(constraint (= (f #xa3dc6c9be02db165) #x0000000000000001))
(constraint (= (f #x0b640eeedc8306eb) #x0000000000000001))
(constraint (= (f #x6c74cac0054bc64d) #x6c74cac0054bc64d))
(constraint (= (f #x46ee8602ccabea5e) #x0000000000000001))
(constraint (= (f #xc4300d3937d2e24d) #x88601a726fa5c49a))
(constraint (= (f #xe1e315a3ee2164b7) #x0000000000000001))
(constraint (= (f #xcac874b956d47ea4) #x9590e972ada8fd48))
(constraint (= (f #xcc44d4d8b20e4a16) #x9889a9b1641c942c))
(constraint (= (f #xe224ce8d6ecc4b15) #xc4499d1add98962a))
(check-synth)
