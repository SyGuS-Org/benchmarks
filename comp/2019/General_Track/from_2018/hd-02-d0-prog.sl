(set-logic BV)

(define-fun hd02 ((x (BitVec 32))) (BitVec 32)
    (bvand x (bvadd x #x00000001)))
(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) ((bvand Start Start) (bvadd Start Start) x #x00000001))))

(declare-var x (BitVec 32))
(constraint (= (hd02 x) (f x)))

(check-synth)

