
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


(constraint (= (f #xb3c79edee2095aed) #x9870c2423bed4a26))
(constraint (= (f #x76ed5eee31143254) #x122542239dd79b54))
(constraint (= (f #x21a53457d7654c7e) #x10d29a2bebb2a63f))
(constraint (= (f #x535aaae1c56215c5) #x594aaa3c753bd476))
(constraint (= (f #x3d6b06edc5e5deb0) #x8529f2247434429c))
(constraint (= (f #xee385e33e0e31233) #x771c2f19f071891a))
(constraint (= (f #xe11ba934ae84d2ad) #x3dc8ad96a2f65aa6))
(constraint (= (f #x3527c488dee7d6a1) #x95b076ee423052be))
(constraint (= (f #xe8e1be4ee47d47e5) #x2e3c836237057036))
(constraint (= (f #x5684914527a22c91) #x52f6dd75b0bba6de))
(check-synth)
