
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


(constraint (= (f #xc7b50625b38b3d97) #x0000000000000001))
(constraint (= (f #x7db2ed908ed01205) #xc1268937b897f6fc))
(constraint (= (f #x2ae94c2b23e3cd79) #x0000000000000001))
(constraint (= (f #x3b8d94ea7d03e216) #x00003b8d94ea7d04))
(constraint (= (f #xeab381d47c86b2ed) #x8aa63f15c1bca688))
(constraint (= (f #x3e6d5dded43d849b) #x0000000000000001))
(constraint (= (f #x20e37c512e44e4e9) #xef8e41d768dd8d8a))
(constraint (= (f #x317a3e9298946612) #x0000317a3e929895))
(constraint (= (f #xbe9160bde8eed92d) #xa0b74fa10b889368))
(constraint (= (f #x9bd9866ce63eb972) #x00009bd9866ce63f))
(check-synth)
