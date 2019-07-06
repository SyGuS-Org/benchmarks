; Hacker's delight 06, difficulty 5
; Turn on the right most 0 bit

(set-logic BV)

(define-fun hd06 ((x (BitVec 32))) (BitVec 32) (bvor x (bvadd x #x00000001)))

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
                         #x00000000
						 #xFFFFFFFF
						 #x00000001
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd06 x) (f x)))
(check-synth)

