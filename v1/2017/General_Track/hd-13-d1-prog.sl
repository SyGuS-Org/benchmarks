; Hacker's delight 13, difficulty 1
; sign function

(set-logic BV)

(define-fun hd13 ((x (BitVec 32))) (BitVec 32) (bvor (bvashr x #x0000001F) (bvlshr (bvneg x) #x0000001F)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvlshr Start Start)
						 (bvashr Start Start)
						 (bvand Start Start)
						 (bvxor Start Start)
						 (bvor Start Start)
						 (bvneg Start)
						 (bvnot Start)
						 (bvadd Start Start)
						 (bvsub Start Start)
						 x
						 #x0000001F
						 #x00000001
						 #x00000000
						 #xFFFFFFFF))))

(declare-var x (BitVec 32))
(constraint (= (hd13 x) (f x)))
(check-synth)

