
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


(constraint (= (f #x29b5ce505c4ebb04) #x29b5ce505c4ebb05))
(constraint (= (f #x12810cad518e8ca9) #x12810cad518e8caa))
(constraint (= (f #xc2b4bee92a4b4227) #x7a96822dab697bb1))
(constraint (= (f #x1c24d0b9cbb7762a) #xc7b65e8c689113ab))
(constraint (= (f #xe60ce5178052bb0e) #xe60ce5178052bb0f))
(constraint (= (f #xde96e435eb9dead8) #xde96e435eb9dead9))
(constraint (= (f #x5950edc7b9e8be45) #x5950edc7b9e8be46))
(constraint (= (f #x525eaba42b17293a) #x5b42a8b7a9d1ad8b))
(constraint (= (f #x0ee65966a7c9a03e) #x0ee65966a7c9a03f))
(constraint (= (f #x32aa8c70e534752d) #x9aaae71e359715a5))
(check-synth)
