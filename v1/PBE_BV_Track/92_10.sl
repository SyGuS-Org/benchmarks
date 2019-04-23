
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


(constraint (= (f #xed7e441cc3b3e149) #x00009bc16612a26a))
(constraint (= (f #x9b673d051e3db93a) #x00009b673d051e3d))
(constraint (= (f #x7032d01decb9dd2e) #x00007032d01decb9))
(constraint (= (f #xc6ac10e6056b0e3e) #x0000c6ac10e6056b))
(constraint (= (f #x715e535ae7e9361a) #x0000715e535ae7e9))
(constraint (= (f #x5e6c6529c7b6cce3) #x000000026321080c))
(constraint (= (f #x1433d2c684588bab) #x0000000080961420))
(constraint (= (f #xec57bbe7e3366b41) #x00000002209d1f19))
(constraint (= (f #x5c0b70e35b389e31) #x0000000040030218))
(constraint (= (f #xee39a563d7e29255) #x0000000141090a1e))
(check-synth)
