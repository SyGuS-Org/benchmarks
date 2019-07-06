
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


(constraint (= (f #x85c12c65236e72be) #x85c1ade52f6f73fe))
(constraint (= (f #xe1207ed6c7320aa4) #x70903f6b63990553))
(constraint (= (f #x748b82c95946458e) #x748bf6cbdbcf5dce))
(constraint (= (f #x0b0003596ea5995d) #x058001acb752ccaf))
(constraint (= (f #xb9e5beb5996d60e6) #x5cf2df5accb6b073))
(constraint (= (f #x972d6beb1e70e93d) #x4b96b5f58f38749f))
(constraint (= (f #x7aab56992019613b) #x3d55ab4c900cb09d))
(constraint (= (f #xe00e4ba6954cce75) #xe00e4ba6954cce75))
(constraint (= (f #x023eee407d28b485) #x023eee407d28b485))
(constraint (= (f #x0b439aacbb976580) #x05a1cd565dcbb2c1))
(check-synth)
