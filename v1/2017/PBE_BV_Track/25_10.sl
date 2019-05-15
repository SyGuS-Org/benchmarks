
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


(constraint (= (f #xe5ba16a0cde4e589) #xe5ba16a0cde4e588))
(constraint (= (f #x741d790c2ab5c990) #x741d790c2ab5c991))
(constraint (= (f #x06a1eb613b768d55) #x06a1eb613b768d54))
(constraint (= (f #x7ed38e8ce9029ba6) #x7ed38e8ce9029ba7))
(constraint (= (f #xd2cd44e9a04e1e4d) #xd2cd44e9a04e1e4c))
(constraint (= (f #x5417a08e80eceb0c) #x5417a08e80eceb0d))
(constraint (= (f #x713e1384e9b13c68) #x713e1384e9b13c69))
(constraint (= (f #x592e869385c640a3) #x00000592e869385c))
(constraint (= (f #x956ee45beea75536) #x956ee45beea75537))
(constraint (= (f #x9ece8de3d1350422) #x9ece8de3d1350423))
(check-synth)
