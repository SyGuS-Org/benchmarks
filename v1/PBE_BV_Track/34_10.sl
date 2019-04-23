
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


(constraint (= (f #x096053b430bb426d) #xf096053b430bb426))
(constraint (= (f #x2532d1c56d0acae9) #xf2532d1c56d0acae))
(constraint (= (f #x6c707ecc6451d705) #xf6c707ecc6451d70))
(constraint (= (f #x46d1e968eaea1754) #xb92e16971515e8ab))
(constraint (= (f #xc6e990ec5458e96e) #x39166f13aba71691))
(constraint (= (f #xa6d713b00ce037de) #x5928ec4ff31fc821))
(constraint (= (f #x920c8c1eeec7d93c) #x6df373e1113826c3))
(constraint (= (f #x401dd7bb4a1e5470) #xbfe22844b5e1ab8f))
(constraint (= (f #x300782ebccd1272d) #xf300782ebccd1272))
(constraint (= (f #x87e60eccd4aa0b93) #x7819f1332b55f46d))
(check-synth)
