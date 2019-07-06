; Hacker's delight 08, difficulty 1
; Form a mask that identifies the trailing zeros

(set-logic BV)

(define-fun hd08 ((x (BitVec 32))) (BitVec 32) (bvand (bvnot x) (bvsub x #x00000001)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvsub Start Start)
						 (bvadd Start Start)
						 (bvnot Start)
						 (bvneg Start)
                         (bvand Start Start)
						 (bvor Start Start)
						 (bvxor Start Start)
						 #x00000000
						 #x00000001
						 #xFFFFFFFF
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd08 x) (f x)))
(check-synth)

