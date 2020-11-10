(set-logic BV)

(define-fun hd01 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvand x (bvsub x #x00000001)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvnot Start) (bvxor Start Start) (bvand Start Start) (bvor Start Start) (bvneg Start) (bvadd Start Start) (bvmul Start Start) (bvudiv Start Start) (bvurem Start Start) (bvlshr Start Start) (bvashr Start Start) (bvshl Start Start) (bvsdiv Start Start) (bvsrem Start Start) (bvsub Start Start) x #x00000000 #xFFFFFFFF #x00000001))))

(declare-var x (_ BitVec 32))
(constraint (= (hd01 x) (f x)))

(check-synth)

