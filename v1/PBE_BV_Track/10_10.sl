
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


(constraint (= (f #xae064e188be601e0) #x0000000000000001))
(constraint (= (f #xca7ae372909c2906) #x0000000000000001))
(constraint (= (f #x6833e2a6d59ebd8c) #x00006833e2a6d59f))
(constraint (= (f #xe752d90d263734eb) #x0000e752d90d2638))
(constraint (= (f #x1564469c9e2d4247) #x0000000000000000))
(constraint (= (f #xa923ca523156a7ce) #x0000a923ca523157))
(constraint (= (f #x9ec50b4d3cde96be) #x00009ec50b4d3cdf))
(constraint (= (f #x1876d06e3833abce) #x00001876d06e3834))
(constraint (= (f #x03ee74ec16dab097) #x0000000000000000))
(constraint (= (f #x626335a2956e1c8e) #x0000626335a2956f))
(check-synth)
