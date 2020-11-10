(set-logic BV)

(synth-fun f1 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) (x y z (bvxor Start Start) (bvand Start Start) (bvor Start Start) (bvnot Start) (bvneg Start) (bvadd Start Start) (bvmul Start Start) (bvudiv Start Start) (bvurem Start Start) (bvlshr Start Start) (bvashr Start Start) (bvshl Start Start) (bvsdiv Start Start) (bvsrem Start Start) (bvsub Start Start) #x00000001))))

(synth-fun f2 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) (x y z (bvxor Start Start) (bvand Start Start) (bvor Start Start) (bvnot Start) (bvneg Start) (bvadd Start Start) (bvmul Start Start) (bvudiv Start Start) (bvurem Start Start) (bvlshr Start Start) (bvashr Start Start) (bvshl Start Start) (bvsdiv Start Start) (bvsrem Start Start) (bvsub Start Start) #x00000001))))

(synth-fun f3 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)))
    ((Start (_ BitVec 32) (x y z (bvxor Start Start) (bvand Start Start) (bvor Start Start) (bvnot Start) (bvneg Start) (bvadd Start Start) (bvmul Start Start) (bvudiv Start Start) (bvurem Start Start) (bvlshr Start Start) (bvashr Start Start) (bvshl Start Start) (bvsdiv Start Start) (bvsrem Start Start) (bvsub Start Start) #x00000001))))

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(declare-var z (_ BitVec 32))
(constraint (= (bvadd (bvadd (f1 x y z) (f2 x y z)) (f3 x y z)) (bvadd (bvadd x y) z)))
(constraint (= (f2 x y z) (bvsub y #x00000001)))
(constraint (= (bvadd (f1 x y z) (f3 x y z)) (bvadd y z)))

(check-synth)

