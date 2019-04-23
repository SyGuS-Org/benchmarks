; Hacker's delight 05, minimal grammar
; Right propagate the rightmost one bit

(set-logic BV)

(define-fun hd05 ((x (BitVec 32))) (BitVec 32) (bvor x (bvsub x #x00000001)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvsub Start Start)
                         (bvor Start Start)
						 #x00000001
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd05 x) (f x)))
(check-synth)

