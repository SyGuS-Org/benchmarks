(set-logic BV)

(define-fun hd07 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvand (bvnot x) (bvadd x #x00000001)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)) (NT1 (_ BitVec 32)) (NT2 (_ BitVec 32)))
    ((Start (_ BitVec 32) (#x00000000 #x00000001 #xffffffff x (bvnot NT1) (bvneg NT1) (bvlshr NT1 NT1) (bvxor NT1 NT1) (bvand NT1 NT1) (bvsrem NT1 NT1) (bvor NT1 NT1) (bvadd NT1 NT1) (bvmul NT1 NT1) (bvsub NT1 NT1) (bvudiv NT1 NT1) (bvurem NT1 NT1) (bvashr NT1 NT1) (bvsdiv NT1 NT1) (bvshl NT1 NT1) (bvnot NT2) (bvneg NT2) (bvudiv NT2 NT1) (bvxor NT2 NT1) (bvand NT2 NT1) (bvshl NT2 NT1) (bvsub NT2 NT1) (bvor NT2 NT1) (bvadd NT2 NT1) (bvsrem NT2 NT1) (bvmul NT2 NT1) (bvurem NT2 NT1) (bvlshr NT2 NT1) (bvashr NT2 NT1) (bvsdiv NT2 NT1)))
    (NT1 (_ BitVec 32) (#x00000000 #x00000001 #xffffffff x))
    (NT2 (_ BitVec 32) ((bvnot NT1) (bvneg NT1) (bvlshr NT1 NT1) (bvxor NT1 NT1) (bvand NT1 NT1) (bvsrem NT1 NT1) (bvor NT1 NT1) (bvadd NT1 NT1) (bvmul NT1 NT1) (bvsub NT1 NT1) (bvudiv NT1 NT1) (bvurem NT1 NT1) (bvashr NT1 NT1) (bvsdiv NT1 NT1) (bvshl NT1 NT1)))))

(declare-var x (_ BitVec 32))
(constraint (= (hd07 x) (f x)))

(check-synth)

