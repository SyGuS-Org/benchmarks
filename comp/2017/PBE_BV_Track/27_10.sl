
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


(constraint (= (f #x032d792de0ae3224) #x032d792de0ae3225))
(constraint (= (f #x531e454c79e076ea) #x531e454c79e076eb))
(constraint (= (f #x6eeba4be14e0da51) #x6eeba4be14e0da53))
(constraint (= (f #x1e6697219164c3de) #x1e6697219164c3df))
(constraint (= (f #x90d602c2245aad30) #x90d602c2245aad31))
(constraint (= (f #xc62be2c5eb598b9d) #xc62be2c5eb598b9f))
(constraint (= (f #xa529c9558cd346c8) #xa529c9558cd346c9))
(constraint (= (f #x5d0119506e6ed842) #x5d0119506e6ed843))
(constraint (= (f #x0da86818c4268984) #x0da86818c4268985))
(constraint (= (f #x8510a5bdb8912bd8) #x8510a5bdb8912bd9))
(check-synth)
