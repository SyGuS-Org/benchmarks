; Hacker's delight 01, difficulty 1
; Turn off the rightmost 1-bit in a bit-vector.

(set-logic BV)

(define-fun hd01 ((x (BitVec 32))) (BitVec 32) (bvand x (bvsub x #x00000001)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvand Start Start)
                         (bvsub Start Start)
						 (bvor Start Start)
						 (bvadd Start Start)
						 (bvxor Start Start)
                         x
						 #x00000000
						 #xFFFFFFFF
                         #x00000001))))

(declare-var x (BitVec 32))
(constraint (= (hd01 x) (f x)))
(check-synth)

