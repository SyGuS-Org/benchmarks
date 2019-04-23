
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


(constraint (= (f #x92123e7041ee43c1) #x0000000000000002))
(constraint (= (f #x4de85d23756a544a) #x0000000000000000))
(constraint (= (f #xa329341be562e976) #x0000000000000000))
(constraint (= (f #xd39ed8e49b6a7347) #x0000000000000002))
(constraint (= (f #x185a8aea12a9325d) #xd71060c1c804a918))
(constraint (= (f #xe6925aed00be61e6) #x0000000000000000))
(constraint (= (f #x84e4e1e7380e629e) #x0000000000000000))
(constraint (= (f #x92845de481d2c029) #x0000000000000002))
(constraint (= (f #xdd57e5639d8853a5) #x0000000000000002))
(constraint (= (f #x7e326765d326718e) #x0000000000000000))
(check-synth)
