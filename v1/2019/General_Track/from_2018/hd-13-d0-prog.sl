; Hacker's delight 13, minimal grammar
; sign function

(set-logic BV)

(define-fun hd13 ((x (BitVec 32))) (BitVec 32) (bvor (bvashr x #x0000001F) (bvlshr (bvneg x) #x0000001F)))

(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvlshr Start Start)
						 (bvashr Start Start)
						 (bvor Start Start)
						 (bvneg Start)
						 x
						 #x0000001F))))

(declare-var x (BitVec 32))
(constraint (= (hd13 x) (f x)))
(check-synth)

