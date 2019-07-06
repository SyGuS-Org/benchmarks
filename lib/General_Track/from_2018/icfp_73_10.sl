
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


(constraint (= (f #xbd2e7ea9b463ce62) #x05e973f54da31e73))
(constraint (= (f #x3e9d2a58375e0cec) #x01f4e952c1baf067))
(constraint (= (f #x549693d347db136e) #x02a4b49e9a3ed89b))
(constraint (= (f #xa51d9c807d697b37) #x5ae2637f829684c8))
(constraint (= (f #xacbc0945b57eedd9) #x5343f6ba4a811226))
(constraint (= (f #xcde4c5943e78c87b) #x321b3a6bc1873784))
(constraint (= (f #x31ab192ce1eb4ca4) #x018d58c9670f5a65))
(constraint (= (f #xe14e457ec37821da) #x1eb1ba813c87de25))
(constraint (= (f #xb64a18144e5d70d8) #x49b5e7ebb1a28f27))
(constraint (= (f #xd1a7d7c2c6c511ad) #x2e58283d393aee52))
(check-synth)
