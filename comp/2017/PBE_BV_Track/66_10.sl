
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


(constraint (= (f #x3d73ab5edad76a9c) #xf5cead7b6b5daa70))
(constraint (= (f #x9a378cd3ae7cadd4) #xfffffffffffffffe))
(constraint (= (f #x1bb7cc2eec047cdd) #xfffffffffffffffd))
(constraint (= (f #xd1575300c8c778e2) #x455d4c03231de388))
(constraint (= (f #x01d588651c756949) #x0756219471d5a524))
(constraint (= (f #xd973d0d6e3dccb72) #xfffffffffffffffe))
(constraint (= (f #xc1356dadeee4dd46) #xfffffffffffffffe))
(constraint (= (f #x04952d5eab9c6ba1) #xfffffffffffffffd))
(constraint (= (f #x8a56a4e7e3d52061) #x295a939f8f548184))
(constraint (= (f #x5b2ee7b77d750de9) #x6cbb9eddf5d437a4))
(check-synth)
