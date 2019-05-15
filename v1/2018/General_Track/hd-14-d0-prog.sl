; Hacker's delight 14, minimal grammar
; floor of average of two integers

(set-logic BV)

(define-fun hd14 ((x (BitVec 32)) (y (BitVec 32))) (BitVec 32) (bvadd (bvand x y) (bvlshr (bvxor x y) #x00000001)))

(synth-fun f ((x (BitVec 32)) (y (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvlshr Start Start)
						 (bvxor Start Start)
						 (bvadd Start Start)
						 (bvand Start Start)
						 x
						 y
						 #x00000001))))

(declare-var x (BitVec 32))
(declare-var y (BitVec 32))
(constraint (= (hd14 x y) (f x y)))
(check-synth)

