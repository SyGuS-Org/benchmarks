(set-logic BV)

(define-fun hd03 ((x (BitVec 32))) (BitVec 32)
    (bvand x (bvneg x)))
(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvneg Start) (bvand Start Start) x))))

(declare-var x (BitVec 32))
(constraint (= (hd03 x) (f x)))

(check-synth)

