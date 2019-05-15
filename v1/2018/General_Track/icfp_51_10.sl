
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


(constraint (= (f #xe9770aa10cacb30c) #xe9770aa10cacb30e))
(constraint (= (f #x1c14b64e2717423e) #x1c14b64e2717423c))
(constraint (= (f #xd123e2eaed9b2040) #xd123e2eaed9b2042))
(constraint (= (f #x6bb2782a4cb648ba) #x6bb2782a4cb648b8))
(constraint (= (f #xe6a8adcd2a0515d6) #xe6a8adcd2a0515d4))
(constraint (= (f #x0ada9e34c6e7938d) #xf52561cb39186c72))
(constraint (= (f #xb93e327e6dcd693d) #x46c1cd81923296c2))
(constraint (= (f #xc8293b7147e394ce) #xc8293b7147e394cc))
(constraint (= (f #x9a778869ee82e19c) #x9a778869ee82e19e))
(constraint (= (f #xacc924e82ea4eec5) #x5336db17d15b113a))
(check-synth)
