(set-logic BV)

(define-fun hd19 ((x (_ BitVec 32)) (m (_ BitVec 32)) (k (_ BitVec 32))) (_ BitVec 32)
    (bvxor x (bvxor (bvshl (bvand (bvxor (bvlshr x k) x) m) k) (bvand (bvxor (bvlshr x k) x) m))))
(synth-fun f ((x (_ BitVec 32)) (m (_ BitVec 32)) (k (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvnot Start) (bvxor Start Start) (bvand Start Start) (bvor Start Start) (bvneg Start) (bvadd Start Start) (bvmul Start Start) (bvudiv Start Start) (bvurem Start Start) (bvlshr Start Start) (bvashr Start Start) (bvshl Start Start) (bvsdiv Start Start) (bvsrem Start Start) (bvsub Start Start) x m k #x0000001F #x00000001 #x00000000 #xFFFFFFFF))))

(declare-var x (_ BitVec 32))
(declare-var m (_ BitVec 32))
(declare-var k (_ BitVec 32))
(constraint (= (hd19 x m k) (f x m k)))

(check-synth)

