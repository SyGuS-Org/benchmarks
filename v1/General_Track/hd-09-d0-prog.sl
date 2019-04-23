; Hacker's delight 09, minimal grammar
; Absolute value function

(set-logic BV)

(define-fun hd09 ((x (BitVec 32))) (BitVec 32) (bvsub (bvxor x (bvashr x #x0000001F)) (bvashr x #x0000001F)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvsub Start Start)
						 (bvashr Start Start)
                         (bvxor Start Start)
						 #x0000001F
                         x))))

(declare-var x (BitVec 32))
(constraint (= (hd09 x) (f x)))
(check-synth)

