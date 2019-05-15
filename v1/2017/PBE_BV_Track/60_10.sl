
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


(constraint (= (f #x3b81adde9e2802c9) #x00003b81adde9e28))
(constraint (= (f #xcb9e80912e7d08e3) #xcfbfe8993effd8ef))
(constraint (= (f #x9e01d13ee33d3cc6) #x9fe1dd3fef3fffce))
(constraint (= (f #x02e0aed199e76a3c) #x000002e0aed199e7))
(constraint (= (f #x7d02be70b5e0ce54) #x7fd2bff7bffecef5))
(constraint (= (f #xec87e20dac318b04) #xeecffe2dfef39bb4))
(constraint (= (f #xa87a1bc84ee1e6b6) #xaaffbbfcceeffeff))
(constraint (= (f #xd886c4080cd4a6e7) #xdd8eec488cddeeef))
(constraint (= (f #x8e9a4ea08e4cb7c5) #x8efbeeea8eecfffd))
(constraint (= (f #xd40eacb8ccb87540) #xdd4eeefbccfbf754))
(check-synth)
