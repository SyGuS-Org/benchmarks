
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


(constraint (= (f #x1e17c3635ee6c154) #xfffffffffffffffe))
(constraint (= (f #xa061e2cb5dbe8b77) #xffffffffffffffff))
(constraint (= (f #xc3deb3da46cacc52) #xfffffffffffffffe))
(constraint (= (f #xe8439c6081092bc1) #x0d08738c10212579))
(constraint (= (f #x17cb8bbeded26d7c) #xfffffffffffffffe))
(constraint (= (f #xe23ee04ea72e25d5) #xffffffffffffffff))
(constraint (= (f #x09c91033ae2e3e13) #xffffffffffffffff))
(constraint (= (f #xcae8c579b244015d) #xffffffffffffffff))
(constraint (= (f #x637cb7a85ce28e74) #xfffffffffffffffe))
(constraint (= (f #x38c75c1a6d999ce1) #x0718eb834db3339d))
(check-synth)
