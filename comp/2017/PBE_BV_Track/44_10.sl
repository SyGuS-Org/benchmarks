
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


(constraint (= (f #xe8e48617023bc847) #x7472430b811de423))
(constraint (= (f #xa70c0a2bc6d4ed4a) #x53860515e36a76a5))
(constraint (= (f #x0ed05860d6e1e703) #x07682c306b70f381))
(constraint (= (f #xa5b01a942a9bcad6) #x52d80d4a154de56b))
(constraint (= (f #xe251dca9acc2d7eb) #x7128ee54d6616bf5))
(constraint (= (f #xb4e255bbe0332348) #x5a712addf01991a4))
(constraint (= (f #x6e38c450a5a725ba) #x371c622852d392dd))
(constraint (= (f #xb383ea0e9eeed2e7) #x59c1f5074f776973))
(constraint (= (f #xec36a2844d2e886e) #x761b514226974437))
(constraint (= (f #x85b2caae9ee05cb6) #x42d965574f702e5b))
(check-synth)
