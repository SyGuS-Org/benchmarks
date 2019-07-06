
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


(constraint (= (f #x346e81ee5e6e7b8e) #x68dd03dcbcdcf71d))
(constraint (= (f #x1b953974763ce562) #x372a72e8ec79cac5))
(constraint (= (f #x97017b13600a38aa) #x2e02f626c0147155))
(constraint (= (f #x446be8317c4e7e55) #x77282f9d07630356))
(constraint (= (f #x00275721e39063de) #x004eae43c720c7bd))
(constraint (= (f #x3d7264e6ce8182bd) #x851b363262fcfa86))
(constraint (= (f #x1bd8572c94021e76) #x37b0ae5928043ced))
(constraint (= (f #xe153274d4eeed5ea) #xc2a64e9a9dddabd5))
(constraint (= (f #xe22ee857bb80e9c8) #xc45dd0af7701d391))
(constraint (= (f #xa203cd9864e5a014) #x44079b30c9cb4029))
(check-synth)
