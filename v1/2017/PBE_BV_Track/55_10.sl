
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


(constraint (= (f #x82ac45ee3c37420c) #x05588bdc786e8418))
(constraint (= (f #xe4e188020b9ed5ee) #xc9c31004173dabdc))
(constraint (= (f #x08e8671a92d701b4) #x11d0ce3525ae0368))
(constraint (= (f #xdeec3c623654c432) #xbdd878c46ca98864))
(constraint (= (f #x84a859670eba3de2) #x0950b2ce1d747bc4))
(constraint (= (f #x43de90ad71b616ed) #x21ef4856b8db0b76))
(constraint (= (f #xd3b12c8e96b8e5b6) #xa762591d2d71cb6c))
(constraint (= (f #xdeb7620a9a5bd31d) #x6f5bb1054d2de98e))
(constraint (= (f #xae1deae8eea5d752) #x5c3bd5d1dd4baea4))
(constraint (= (f #x934ab303a7c787e9) #x49a55981d3e3c3f4))
(check-synth)
