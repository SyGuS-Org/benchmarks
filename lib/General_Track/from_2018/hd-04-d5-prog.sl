(set-logic BV)

(define-fun hd04 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvxor x (bvsub x #x00000001)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvnot Start) (bvand Start Start) (bvxor Start Start) (bvor Start Start) (bvneg Start) (bvadd Start Start) (bvmul Start Start) (bvudiv Start Start) (bvurem Start Start) (bvlshr Start Start) (bvashr Start Start) (bvshl Start Start) (bvsdiv Start Start) (bvsrem Start Start) (bvsub Start Start) #x00000000 #x00000001 #xFFFFFFFF x))))

(declare-var x (_ BitVec 32))
(constraint (= (hd04 x) (f x)))

(check-synth)

