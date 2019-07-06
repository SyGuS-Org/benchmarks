; Hacker's delight 17, difficulty 1
; turn off the rightmost string of contiguous ones

(set-logic BV)

(define-fun hd17 ((x (BitVec 32))) (BitVec 32) (bvand (bvadd (bvor x (bvsub x #x00000001)) #x00000001) x))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvand Start Start)
						 (bvadd Start Start)
						 (bvxor Start Start)
						 (bvsub Start Start)
						 (bvor Start Start)
						 (bvnot Start)
						 (bvneg Start)
						 x
						 #x00000001
						 #x00000000
						 #xFFFFFFFF))))

(declare-var x (BitVec 32))
(constraint (= (hd17 x) (f x)))
(check-synth)

