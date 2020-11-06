(set-logic BV)

(define-fun hd05 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvor x (bvsub x #x00000001)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)) (NT1 (_ BitVec 32)) (NT2 (_ BitVec 32)) (NT3 (_ BitVec 32)) (NT4 (_ BitVec 32)))
    ((Start (_ BitVec 32) (x #x00000000 #xffffffff #x00000001 (bvnot NT1) (bvneg NT1) (bvxor NT1 NT1) (bvand NT1 NT1) (bvor NT1 NT1) (bvlshr NT3 NT1) (bvsdiv NT3 NT1) (bvashr NT3 NT1) (bvsub NT3 NT1) (bvsrem NT3 NT1) (bvshl NT3 NT1) (bvadd NT4 NT1) (bvmul NT4 NT1) (bvudiv NT4 NT1) (bvurem NT4 NT1) (bvsub NT4 NT4) (bvlshr NT4 NT4) (bvashr NT4 NT4) (bvsrem NT4 NT4) (bvshl NT4 NT4) (bvsdiv NT4 NT4) (bvadd NT1 NT1) (bvmul NT1 NT1) (bvudiv NT1 NT1) (bvurem NT1 NT1) (bvlshr NT4 NT1) (bvashr NT4 NT1) (bvshl NT4 NT1) (bvsdiv NT4 NT1) (bvsrem NT4 NT1) (bvsub NT4 NT1) (bvshl NT1 NT1) (bvashr NT1 NT1) (bvlshr NT1 NT1) (bvsdiv NT1 NT1) (bvsrem NT1 NT1) (bvsub NT1 NT1) (bvashr NT2 NT1) (bvlshr NT2 NT1) (bvshl NT2 NT1) (bvsub NT2 NT1) (bvsdiv NT2 NT1) (bvsrem NT2 NT1) (bvnot NT4) (bvneg NT4) (bvadd NT3 NT1) (bvmul NT3 NT1) (bvudiv NT3 NT1) (bvurem NT3 NT1) (bvxor NT4 NT1) (bvand NT4 NT1) (bvor NT4 NT1) (bvadd NT4 NT4) (bvmul NT4 NT4) (bvudiv NT4 NT4) (bvurem NT4 NT4)))
    (NT1 (_ BitVec 32) (x #x00000000 #xffffffff #x00000001))
    (NT2 (_ BitVec 32) ((bvnot NT1) (bvneg NT1) (bvxor NT1 NT1) (bvand NT1 NT1) (bvor NT1 NT1) (bvlshr NT3 NT1) (bvsdiv NT3 NT1) (bvashr NT3 NT1) (bvsub NT3 NT1) (bvsrem NT3 NT1) (bvshl NT3 NT1) (bvadd NT4 NT1) (bvmul NT4 NT1) (bvudiv NT4 NT1) (bvurem NT4 NT1) (bvsub NT4 NT4) (bvlshr NT4 NT4) (bvashr NT4 NT4) (bvsrem NT4 NT4) (bvshl NT4 NT4) (bvsdiv NT4 NT4)))
    (NT3 (_ BitVec 32) ((bvadd NT1 NT1) (bvmul NT1 NT1) (bvudiv NT1 NT1) (bvurem NT1 NT1) (bvlshr NT4 NT1) (bvashr NT4 NT1) (bvshl NT4 NT1) (bvsdiv NT4 NT1) (bvsrem NT4 NT1) (bvsub NT4 NT1)))
    (NT4 (_ BitVec 32) ((bvshl NT1 NT1) (bvashr NT1 NT1) (bvlshr NT1 NT1) (bvsdiv NT1 NT1) (bvsrem NT1 NT1) (bvsub NT1 NT1)))))

(declare-var x (_ BitVec 32))
(constraint (= (hd05 x) (f x)))

(check-synth)

