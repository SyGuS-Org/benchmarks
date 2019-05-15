
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


(constraint (= (f #xae59e79a0d8280a5) #x28d30c32f93ebfad))
(constraint (= (f #x36db7ec494a7d256) #x492409db5ac16d4f))
(constraint (= (f #xa8de3de436916e42) #x2b90e10de4b748de))
(constraint (= (f #xaa179ba88a05e60c) #xaf4322bbafd0cf9f))
(constraint (= (f #x6a56168e613d3ab4) #xad4f4b8cf6162a5f))
(constraint (= (f #x9dbd4235419a7059) #x31215ee55f32c7d3))
(constraint (= (f #xc97ecb4bb3b76a20) #xb409a5a26244aeff))
(constraint (= (f #x6ec1997b2ea663e2) #x89f334268acce0ef))
(constraint (= (f #xea43150ed8e989a8) #x0ade7578938b3b2b))
(constraint (= (f #x52d196591487ea16) #x69734d375bc0af4f))
(check-synth)
