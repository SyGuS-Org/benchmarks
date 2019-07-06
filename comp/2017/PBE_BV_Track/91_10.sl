
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


(constraint (= (f #x479eba22051d0a70) #xfb86145ddfae2f58))
(constraint (= (f #x306bde7a42803084) #x0000000000000000))
(constraint (= (f #xc06e62b54de98bd3) #xf3f919d4ab216742))
(constraint (= (f #xd5608e6e64a0eaae) #x0000000000000000))
(constraint (= (f #xad153b354ecd58e3) #x0000000000000001))
(constraint (= (f #x33902172a1ba5220) #x0000000000000000))
(constraint (= (f #xd6ca529c854a29eb) #x0000000000000001))
(constraint (= (f #x3bc64ea2c25eda4b) #x0000000000000001))
(constraint (= (f #x7d677dcbd4179e54) #xf829882342be861a))
(constraint (= (f #x176dc21ce004014a) #x0000000000000000))
(check-synth)
