; Hacker's delight 15, minimal grammar
; ceil of average of two integers

(set-logic BV)

(define-fun hd15 ((x (BitVec 32)) (y (BitVec 32))) (BitVec 32) (bvsub (bvor x y) (bvlshr (bvxor x y) #x00000001)))

(synth-fun f ((x (BitVec 32)) (y (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvlshr Start Start)
						 (bvxor Start Start)
						 (bvsub Start Start)
						 (bvor Start Start)
						 x
						 y
						 #x00000001))))

(declare-var x (BitVec 32))
(declare-var y (BitVec 32))
(constraint (= (hd15 x y) (f x y)))
(check-synth)

