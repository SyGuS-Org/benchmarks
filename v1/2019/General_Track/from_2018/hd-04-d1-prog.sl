; Hacker's delight 04, difficulty 1
; Form a bit mask that identifies the rightmost one bit and trailing zeros

(set-logic BV)

(define-fun hd04 ((x (BitVec 32))) (BitVec 32) (bvxor x (bvsub x #x00000001)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvsub Start Start)
                         (bvxor Start Start)
						 (bvneg Start)
						 (bvadd Start Start)
						 (bvor Start Start)
						 (bvand Start Start)
						 #x00000000
						 #x00000001
						 #xFFFFFFFF
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd04 x) (f x)))
(check-synth)

