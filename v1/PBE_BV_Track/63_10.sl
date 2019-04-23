
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


(constraint (= (f #x63bbe0e3ee9b44d9) #x9c441f1c1164bb27))
(constraint (= (f #x6113ba335eca362c) #x6113ba335eca362c))
(constraint (= (f #xd5e47b36e4ee7066) #xd5e47b36e4ee7066))
(constraint (= (f #xea8e5aee9ee367b5) #x1571a511611c984b))
(constraint (= (f #x0913e7e316e61ebd) #x0913e7e316e61ebc))
(constraint (= (f #x4a7acedede5c3d3e) #x4a7acedede5c3d3e))
(constraint (= (f #xa0eee1c1d71405c4) #xa0eee1c1d71405c4))
(constraint (= (f #x9ecce41707cd67a0) #x61331be8f832985e))
(constraint (= (f #x6437aed38086ec86) #x6437aed38086ec86))
(constraint (= (f #xdbc0b1e3bb84cebc) #xdbc0b1e3bb84cebc))
(check-synth)
