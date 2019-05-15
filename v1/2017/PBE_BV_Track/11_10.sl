
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


(constraint (= (f #x9db91b67d1eee4b4) #x00009db91b67d1ee))
(constraint (= (f #x211526232b50ea1d) #xdeead9dcd4af15e2))
(constraint (= (f #xedcec1de604e94ec) #x0000edcec1de604e))
(constraint (= (f #xede1841179ee3684) #x0000ede1841179ee))
(constraint (= (f #x9c623bcc40d252bd) #x639dc433bf2dad42))
(constraint (= (f #x4601c6d84a50d01b) #xb9fe3927b5af2fe4))
(constraint (= (f #x0c5ed1e748c4e26c) #x00000c5ed1e748c4))
(constraint (= (f #x6bb653229e60ee94) #x00006bb653229e60))
(constraint (= (f #x483db90b3dee6596) #x0000483db90b3dee))
(constraint (= (f #x55376e703c4a1ea8) #x000055376e703c4a))
(check-synth)
