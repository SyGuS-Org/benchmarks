; Hacker's delight 09, difficulty 5
; Absolute value function

(set-logic BV)

(define-fun hd09 ((x (BitVec 32))) (BitVec 32) (bvsub (bvxor x (bvashr x #x0000001F)) (bvashr x #x0000001F)))

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
						 #x0000001F
						 #xFFFFFFFF
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd09 x) (f x)))
(check-synth)

