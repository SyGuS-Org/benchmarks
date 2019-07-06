
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


(constraint (= (f #x2ce5e9e10c73eb82) #x59cbd3c218e7d706))
(constraint (= (f #x3015e13ed4b39bed) #x381ff1bffefbdfff))
(constraint (= (f #xbbea49e80e8ecc1b) #xffff6dfc0fcfee1f))
(constraint (= (f #xa21d2edd9a4dca23) #xf31fbfffdf6fef33))
(constraint (= (f #x1d33b2c138183809) #x1fbbfbe1bc1c3c0d))
(constraint (= (f #x1ee568b71e6e09ce) #x3dcad16e3cdc139e))
(constraint (= (f #xe5d593db27461e9b) #xf7ffdbffb7e71fdf))
(constraint (= (f #x17d381ec01aea3e3) #x1ffbc1fe01fff3f3))
(constraint (= (f #x88ce7dc6ce9c3e79) #xccef7fe7efde3f7d))
(constraint (= (f #xa37e551c66670005) #xf3ff7f9e77778007))
(check-synth)
