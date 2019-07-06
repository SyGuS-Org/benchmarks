
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


(constraint (= (f #x296e29c563670c08) #x00000296e29c5636))
(constraint (= (f #x9096a7e3127e9b38) #x0000000000000000))
(constraint (= (f #x7670839c2ae8eb77) #x0000000000000001))
(constraint (= (f #x1ab9e2248573e1ee) #x0000000000000000))
(constraint (= (f #x5e1e722cecd24e91) #x000005e1e722cecd))
(constraint (= (f #x0e362e1e4ae97ded) #x0000000000000001))
(constraint (= (f #xa7e4c4437b4e5e0b) #x00000a7e4c4437b4))
(constraint (= (f #x80ea76a7e097ea87) #x0000080ea76a7e09))
(constraint (= (f #xd06e03c3ba82e5ae) #x0000000000000000))
(constraint (= (f #x868e5ac7d6019609) #x00000868e5ac7d60))
(check-synth)
