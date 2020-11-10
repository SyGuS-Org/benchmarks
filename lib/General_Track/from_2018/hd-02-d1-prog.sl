(set-logic BV)

(define-fun hd02 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvand x (bvadd x #x00000001)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvand Start Start) (bvsub Start Start) (bvor Start Start) (bvadd Start Start) (bvxor Start Start) x #x00000000 #xFFFFFFFF #x00000001))))

(declare-var x (_ BitVec 32))
(constraint (= (hd02 x) (f x)))

(check-synth)

