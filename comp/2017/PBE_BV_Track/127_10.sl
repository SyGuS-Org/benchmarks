
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


(constraint (= (f #xe2aad860ccbeb9ec) #xe2aad860ccbeb9ee))
(constraint (= (f #xe85a01a9ee3b3b2b) #x0000000000000000))
(constraint (= (f #x1c3404d442e676c8) #x1c3404d442e676ca))
(constraint (= (f #x16820d5bb4a612b6) #x0000000000000000))
(constraint (= (f #x25987358e5a5c622) #x0000000000000000))
(constraint (= (f #xeb8ede4b3deb2046) #x0000000000000000))
(constraint (= (f #x1292b5490e1ccb77) #x0000000000000000))
(constraint (= (f #xe5d0e653830b8855) #xe5d0e653830b8857))
(constraint (= (f #x8be246981e2267a6) #x0000000000000000))
(constraint (= (f #x76a70d5360aa01b5) #x76a70d5360aa01b7))
(check-synth)
