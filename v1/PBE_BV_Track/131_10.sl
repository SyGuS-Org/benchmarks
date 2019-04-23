
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


(constraint (= (f #x1a5465e6ded59d1a) #x072d5cd0c9095317))
(constraint (= (f #x82c812e32014aba7) #x82c812e32014aba6))
(constraint (= (f #x5d27238ceda6eaec) #x5d27238ceda6eaed))
(constraint (= (f #x084d96d972a85e52) #x084d96d972a85e53))
(constraint (= (f #x2155e9e78287952c) #x06f550b0c3ebc356))
(constraint (= (f #x90b0b38958b5b8e6) #x037a7a63b53a5238))
(constraint (= (f #x251865a4ed5387c1) #x06d73cd2d89563c1))
(constraint (= (f #x8e85cda9ae87c23e) #x038bd192b28bc1ee))
(constraint (= (f #x8ade8e2ec1e53599) #x03a90b8e89f0d653))
(constraint (= (f #x0626ce3beee88dea) #x0626ce3beee88deb))
(check-synth)
