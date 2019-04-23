; Hacker's delight 06, minimal grammar
; Turn on the right most 0 bit

(set-logic BV)

(define-fun hd06 ((x (BitVec 32))) (BitVec 32) (bvor x (bvadd x #x00000001)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvadd Start Start)
                         (bvor Start Start)
						 #x00000001
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd06 x) (f x)))
(check-synth)

