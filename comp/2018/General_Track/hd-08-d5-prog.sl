; Hacker's delight 08, difficulty 5
; Form a mask that identifies the trailing zeros

(set-logic BV)

(define-fun hd08 ((x (BitVec 32))) (BitVec 32) (bvand (bvnot x) (bvsub x #x00000001)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvnot Start)
						 (bvand Start Start)
						 (bvor Start Start)
						 (bvxor Start Start)
						 (bvneg Start)
						 (bvadd Start Start)
						 (bvmul Start Start)
						 (bvudiv Start Start)
						 (bvurem Start Start)
						 (bvlshr Start Start)
						 (bvashr Start Start)
						 (bvshl Start Start)
						 (bvsdiv Start Start)
						 (bvsrem Start Start)
						 (bvsub Start Start)
                         #x00000000
						 #x00000001
						 #xFFFFFFFF
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd08 x) (f x)))
(check-synth)

