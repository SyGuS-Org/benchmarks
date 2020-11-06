(set-logic BV)

(define-fun hd07 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvand (bvnot x) (bvadd x #x00000001)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvadd Start Start) (bvnot Start) (bvand Start Start) #x00000001 x))))

(declare-var x (_ BitVec 32))
(constraint (= (hd07 x) (f x)))

(check-synth)

