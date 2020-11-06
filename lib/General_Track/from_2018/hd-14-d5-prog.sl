(set-logic BV)

(define-fun hd14 ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32)
    (bvadd (bvand x y) (bvlshr (bvxor x y) #x00000001)))
(synth-fun f ((x (_ BitVec 32)) (y (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) ((bvnot Start) (bvxor Start Start) (bvand Start Start) (bvor Start Start) (bvneg Start) (bvadd Start Start) (bvmul Start Start) (bvudiv Start Start) (bvurem Start Start) (bvlshr Start Start) (bvashr Start Start) (bvshl Start Start) (bvsdiv Start Start) (bvsrem Start Start) (bvsub Start Start) x y #x0000001F #x00000001 #x00000000 #xFFFFFFFF))))

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(constraint (= (hd14 x y) (f x y)))

(check-synth)

