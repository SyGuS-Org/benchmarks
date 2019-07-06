
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


(constraint (= (f #x2b05bd2e856b2961) #xfe1ffeff1ffef7c4))
(constraint (= (f #x0bae48b4ebedaa3a) #x230ada1ec3c8feae))
(constraint (= (f #xe37be040e010403e) #xaa73a0c2a030c0ba))
(constraint (= (f #x30317b894e415a15) #x9094729beac40e3f))
(constraint (= (f #xeab36cc765ab9e4d) #xffeffb9fdfff7dbc))
(constraint (= (f #xa058eee8103cc077) #xe10accb830b64165))
(constraint (= (f #x1be4c90a3904457b) #x53ae5b1eab0cd071))
(constraint (= (f #x71d9eb4ee5010700) #xe7f7ffbfde061e02))
(constraint (= (f #x65ec20d363989eed) #xdff8c3efcf737ffc))
(constraint (= (f #xa0856d714ee6608a) #xc31fffe7bfddc33e))
(check-synth)
