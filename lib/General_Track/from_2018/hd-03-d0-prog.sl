(set-logic BV)

(define-fun hd03 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvand x (bvneg x)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvneg Start) (bvand Start Start) x))))

(declare-var x (_ BitVec 32))
(constraint (= (hd03 x) (f x)))

(check-synth)

