
(set-logic BV)

(define-fun ehad ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (BitVec 64))) (BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (BitVec 64)) (y (BitVec 64)) (z (BitVec 64))) (BitVec 64) (ite (= x #x0000000000000001) y z))

(synth-fun f ( (x (BitVec 64))) (BitVec 64)
(

(Start (BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start)
                    (smol Start)
 		    (ehad Start)
		    (arba Start)
		    (shesh Start)
		    (bvand Start Start)
		    (bvor Start Start)
		    (bvxor Start Start)
		    (bvadd Start Start)
		    (im Start Start Start)
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
