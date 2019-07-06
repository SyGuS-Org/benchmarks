; Hacker's delight 07, difficulty 1
; Isolate the rightmost 0 bit

(set-logic BV)

(define-fun hd07 ((x (BitVec 32))) (BitVec 32) (bvand (bvnot x) (bvadd x #x00000001)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvadd Start Start)
						 (bvsub Start Start)
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
(constraint (= (hd07 x) (f x)))
(check-synth)

