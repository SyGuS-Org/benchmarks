; Hacker's delight 03, difficulty 5
; Isolate the right most one bit

(set-logic BV)

(define-fun hd03 ((x (BitVec 32))) (BitVec 32) (bvand x (bvneg x)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvnot Start)
						 (bvand Start Start)
						 (bvxor Start Start)
						 (bvor Start Start)
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
                         #x00000001
						 #x00000000
						 #xFFFFFFFF
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd03 x) (f x)))
(check-synth)

