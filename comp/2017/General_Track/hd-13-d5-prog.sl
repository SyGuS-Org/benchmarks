; Hacker's delight 13, difficulty 5
; sign function

(set-logic BV)

(define-fun hd13 ((x (BitVec 32))) (BitVec 32) (bvor (bvashr x #x0000001F) (bvlshr (bvneg x) #x0000001F)))

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
(constraint (= (hd13 x) (f x)))
(check-synth)

