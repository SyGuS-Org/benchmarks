
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


(constraint (= (f #x6ec3248418558b84) #x6ec3248418558b84))
(constraint (= (f #x01d6903ea2282e63) #x01d6903ea2282e63))
(constraint (= (f #x6becab11e1c19946) #x6becab11e1c19946))
(constraint (= (f #x92ed828198ed7441) #x12ed828198ed7441))
(constraint (= (f #xc11cece67ca06bad) #x411cece67ca06bad))
(constraint (= (f #x13adecabaab1956d) #x275bd95755632ada))
(constraint (= (f #x5e4c53e9d83ccce7) #xbc98a7d3b07999ce))
(constraint (= (f #x997e2c9a77a823e1) #x197e2c9a77a823e1))
(constraint (= (f #x0b97de3b6b722418) #x0b97de3b6b722418))
(constraint (= (f #x7a70e09bd34bc755) #x7a70e09bd34bc755))
(check-synth)
