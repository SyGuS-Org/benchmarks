; Hacker's delight 07, minimal grammar
; Isolate the rightmost 0 bit

(set-logic BV)

(define-fun hd07 ((x (BitVec 32))) (BitVec 32) (bvand (bvnot x) (bvadd x #x00000001)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvadd Start Start)
						 (bvnot Start)
                         (bvand Start Start)
						 #x00000001
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd07 x) (f x)))
(check-synth)

