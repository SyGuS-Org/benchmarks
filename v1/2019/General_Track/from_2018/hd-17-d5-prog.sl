; Hacker's delight 17, difficulty 5
; turn off the rightmost string of contiguous ones

(set-logic BV)

(define-fun hd17 ((x (BitVec 32))) (BitVec 32) (bvand (bvadd (bvor x (bvsub x #x00000001)) #x00000001) x))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvnot Start)
						 (bvxor Start Start)
						 (bvand Start Start)
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
                         x
						 #x0000001F
						 #x00000001
						 #x00000000
						 #xFFFFFFFF))))

(declare-var x (BitVec 32))
(constraint (= (hd17 x) (f x)))
(check-synth)

