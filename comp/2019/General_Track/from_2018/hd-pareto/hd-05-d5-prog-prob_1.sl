(set-logic BV)

(define-fun hd05 ((x (BitVec 32))) (BitVec 32)
    (bvor x (bvsub x #x00000001)))
(synth-fun f ((x (BitVec 32))) (BitVec 32)
    ((Start (BitVec 32) (x #x00000000 #xffffffff #x00000001 (bvnot NT1) (bvneg NT1) (bvxor NT1 NT1) (bvand NT1 NT1) (bvor NT1 NT1) (bvlshr NT3 NT1) (bvashr NT3 NT1) (bvsrem NT3 NT1) (bvsub NT3 NT1) (bvshl NT3 NT1) (bvsdiv NT3 NT1) (bvadd NT4 NT1) (bvmul NT4 NT1) (bvudiv NT4 NT1) (bvurem NT4 NT1) (bvlshr NT4 NT4) (bvashr NT4 NT4) (bvsrem NT4 NT4) (bvsub NT4 NT4) (bvsdiv NT4 NT4) (bvshl NT4 NT4) (bvadd NT1 NT1) (bvmul NT1 NT1) (bvudiv NT1 NT1) (bvurem NT1 NT1) (bvlshr NT4 NT1) (bvashr NT4 NT1) (bvshl NT4 NT1) (bvsdiv NT4 NT1) (bvsrem NT4 NT1) (bvsub NT4 NT1) (bvshl NT1 NT1) (bvlshr NT1 NT1) (bvashr NT1 NT1) (bvsdiv NT1 NT1) (bvsrem NT1 NT1) (bvsub NT1 NT1) (bvnot NT2) (bvneg NT2) (bvxor NT2 NT1) (bvand NT2 NT1) (bvor NT2 NT1) (bvadd NT3 NT3) (bvmul NT3 NT3) (bvurem NT3 NT3) (bvudiv NT3 NT3) (bvashr NT6 NT1) (bvsrem NT6 NT1) (bvsdiv NT6 NT1) (bvshl NT6 NT1) (bvlshr NT6 NT1) (bvsub NT6 NT1) (bvadd NT7 NT1) (bvmul NT7 NT1) (bvudiv NT7 NT1) (bvurem NT7 NT1) (bvnot NT3) (bvneg NT3) (bvadd NT2 NT1) (bvmul NT2 NT1) (bvudiv NT2 NT1) (bvurem NT2 NT1) (bvor NT3 NT1) (bvxor NT3 NT1) (bvand NT3 NT1) (bvshl NT3 NT3) (bvlshr NT3 NT3) (bvsub NT3 NT3) (bvsdiv NT3 NT3) (bvashr NT3 NT3) (bvsrem NT3 NT3) (bvxor NT4 NT4) (bvshl NT7 NT1) (bvashr NT7 NT1) (bvand NT4 NT4) (bvor NT4 NT4) (bvsdiv NT7 NT1) (bvlshr NT7 NT1) (bvsrem NT7 NT1) (bvsub NT7 NT1) (bvlshr NT2 NT1) (bvashr NT2 NT1) (bvsub NT2 NT1) (bvshl NT2 NT1) (bvsdiv NT2 NT1) (bvsrem NT2 NT1) (bvnot NT4) (bvneg NT4) (bvadd NT3 NT1) (bvmul NT3 NT1) (bvudiv NT3 NT1) (bvurem NT3 NT1) (bvor NT4 NT1) (bvxor NT4 NT1) (bvand NT4 NT1) (bvadd NT4 NT4) (bvmul NT4 NT4) (bvudiv NT4 NT4) (bvurem NT4 NT4) (bvlshr NT2 NT2) (bvashr NT2 NT2) (bvsdiv NT2 NT2) (bvsub NT2 NT2) (bvshl NT2 NT2) (bvsrem NT2 NT2) (bvxor NT3 NT3) (bvsrem NT5 NT1) (bvsub NT5 NT1) (bvsdiv NT5 NT1) (bvand NT3 NT3) (bvor NT3 NT3) (bvlshr NT5 NT1) (bvashr NT5 NT1) (bvshl NT5 NT1) (bvurem NT6 NT1) (bvudiv NT6 NT1) (bvnot NT7) (bvmul NT6 NT1) (bvneg NT7) (bvadd NT6 NT1) (bvxor NT7 NT1) (bvand NT7 NT1) (bvor NT7 NT1) (bvadd NT2 NT2) (bvmul NT2 NT2) (bvudiv NT2 NT2) (bvurem NT2 NT2) (bvnot NT6) (bvudiv NT5 NT1) (bvurem NT5 NT1) (bvneg NT6) (bvmul NT5 NT1) (bvadd NT5 NT1) (bvxor NT6 NT1) (bvand NT6 NT1) (bvor NT6 NT1) (bvlshr NT8 NT1) (bvashr NT8 NT1) (bvshl NT8 NT1) (bvsdiv NT8 NT1) (bvsrem NT8 NT1) (bvsub NT8 NT1)))
    (NT1 (BitVec 32) (x #x00000000 #xffffffff #x00000001))
    (NT2 (BitVec 32) ((bvnot NT1) (bvneg NT1) (bvxor NT1 NT1) (bvand NT1 NT1) (bvor NT1 NT1) (bvlshr NT3 NT1) (bvashr NT3 NT1) (bvsrem NT3 NT1) (bvsub NT3 NT1) (bvshl NT3 NT1) (bvsdiv NT3 NT1) (bvadd NT4 NT1) (bvmul NT4 NT1) (bvudiv NT4 NT1) (bvurem NT4 NT1) (bvlshr NT4 NT4) (bvashr NT4 NT4) (bvsrem NT4 NT4) (bvsub NT4 NT4) (bvsdiv NT4 NT4) (bvshl NT4 NT4)))
    (NT3 (BitVec 32) ((bvadd NT1 NT1) (bvmul NT1 NT1) (bvudiv NT1 NT1) (bvurem NT1 NT1) (bvlshr NT4 NT1) (bvashr NT4 NT1) (bvshl NT4 NT1) (bvsdiv NT4 NT1) (bvsrem NT4 NT1) (bvsub NT4 NT1)))
    (NT4 (BitVec 32) ((bvshl NT1 NT1) (bvlshr NT1 NT1) (bvashr NT1 NT1) (bvsdiv NT1 NT1) (bvsrem NT1 NT1) (bvsub NT1 NT1)))
    (NT5 (BitVec 32) ((bvnot NT2) (bvneg NT2) (bvxor NT2 NT1) (bvand NT2 NT1) (bvor NT2 NT1) (bvadd NT3 NT3) (bvmul NT3 NT3) (bvurem NT3 NT3) (bvudiv NT3 NT3) (bvashr NT6 NT1) (bvsrem NT6 NT1) (bvsdiv NT6 NT1) (bvshl NT6 NT1) (bvlshr NT6 NT1) (bvsub NT6 NT1) (bvadd NT7 NT1) (bvmul NT7 NT1) (bvudiv NT7 NT1) (bvurem NT7 NT1)))
    (NT6 (BitVec 32) ((bvnot NT3) (bvneg NT3) (bvadd NT2 NT1) (bvmul NT2 NT1) (bvudiv NT2 NT1) (bvurem NT2 NT1) (bvor NT3 NT1) (bvxor NT3 NT1) (bvand NT3 NT1) (bvshl NT3 NT3) (bvlshr NT3 NT3) (bvsub NT3 NT3) (bvsdiv NT3 NT3) (bvashr NT3 NT3) (bvsrem NT3 NT3) (bvxor NT4 NT4) (bvshl NT7 NT1) (bvashr NT7 NT1) (bvand NT4 NT4) (bvor NT4 NT4) (bvsdiv NT7 NT1) (bvlshr NT7 NT1) (bvsrem NT7 NT1) (bvsub NT7 NT1)))
    (NT7 (BitVec 32) ((bvlshr NT2 NT1) (bvashr NT2 NT1) (bvsub NT2 NT1) (bvshl NT2 NT1) (bvsdiv NT2 NT1) (bvsrem NT2 NT1) (bvnot NT4) (bvneg NT4) (bvadd NT3 NT1) (bvmul NT3 NT1) (bvudiv NT3 NT1) (bvurem NT3 NT1) (bvor NT4 NT1) (bvxor NT4 NT1) (bvand NT4 NT1) (bvadd NT4 NT4) (bvmul NT4 NT4) (bvudiv NT4 NT4) (bvurem NT4 NT4)))
    (NT8 (BitVec 32) ((bvlshr NT2 NT2) (bvashr NT2 NT2) (bvsdiv NT2 NT2) (bvsub NT2 NT2) (bvshl NT2 NT2) (bvsrem NT2 NT2) (bvxor NT3 NT3) (bvsrem NT5 NT1) (bvsub NT5 NT1) (bvsdiv NT5 NT1) (bvand NT3 NT3) (bvor NT3 NT3) (bvlshr NT5 NT1) (bvashr NT5 NT1) (bvshl NT5 NT1) (bvurem NT6 NT1) (bvudiv NT6 NT1) (bvnot NT7) (bvmul NT6 NT1) (bvneg NT7) (bvadd NT6 NT1) (bvxor NT7 NT1) (bvand NT7 NT1) (bvor NT7 NT1)))))

(declare-var x (BitVec 32))
(constraint (= (hd05 x) (f x)))

(check-synth)
