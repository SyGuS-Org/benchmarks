
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


(constraint (= (f #x09b006eeb2e88a19) #x09b006eeb2e88a1b))
(constraint (= (f #x157ddd888346b7d7) #x157ddd888346b7d9))
(constraint (= (f #xdea83587e06667e6) #xfffe42af94f03f32))
(constraint (= (f #xee090693a3d29a1a) #xfffe23edf2d8b85a))
(constraint (= (f #x2458e49e31e34a65) #xffffb74e36c39c38))
(constraint (= (f #x02ac3ce11e610b3b) #xfffffaa7863dc33c))
(constraint (= (f #xe0ca6a8281e5b0ba) #xe0ca6a8281e5b0ba))
(constraint (= (f #xa45cee2ea020157d) #xa45cee2ea020157f))
(constraint (= (f #x1a7d765be85d44c0) #x1a7d765be85d44c0))
(constraint (= (f #xa1ae39945e9ee100) #xfffebca38cd742c2))
(check-synth)
