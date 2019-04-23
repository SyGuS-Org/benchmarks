
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


(constraint (= (f #x8bab9dd87e49bce3) #x8fffddfc7f69fce3))
(constraint (= (f #x82d4e2b3b3d33b57) #xfbe958ea62616625))
(constraint (= (f #x9dd383ea163ea0a8) #x9dfb83ff163ff0ac))
(constraint (= (f #x16b50630e1d55ce2) #x16b58630e1dffee3))
(constraint (= (f #x621e2aeecc5462c8) #x631e3bffee7663cc))
(constraint (= (f #x9ed424e94c5088b8) #xfb095ed8b59d7bba))
(constraint (= (f #x05a8577ae0ea9642) #x05ac57fbf0efd662))
(constraint (= (f #xe17eceebe77ee84e) #xe17feefff77ffc4e))
(constraint (= (f #xe8c59d20e4186e70) #xf8b9d316f8df3c8c))
(constraint (= (f #xe953ce70bca3e0e8) #xed5bce70bce3f0ec))
(check-synth)
