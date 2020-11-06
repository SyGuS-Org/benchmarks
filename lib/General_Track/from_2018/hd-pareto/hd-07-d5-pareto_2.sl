(set-logic BV)

(define-fun hd07 ((x (_ BitVec 32))) (_ BitVec 32)
    (bvand (bvnot x) (bvadd x #x00000001)))
(synth-fun f ((x (_ BitVec 32))) (_ BitVec 32)
    ((Start (_ BitVec 32)) (NT21 (_ BitVec 32)) (NT7 (_ BitVec 32)) (NT25 (_ BitVec 32)) (NT11 (_ BitVec 32)) (NT27 (_ BitVec 32)) (NT13 (_ BitVec 32)))
    ((Start (_ BitVec 32) (#x00000001 #x00000000 #xffffffff x (bvnot NT7) (bvneg NT7) (bvxor NT7 NT7) (bvor NT7 NT7) (bvsub NT7 NT7) (bvadd NT7 NT7) (bvmul NT7 NT7) (bvudiv NT7 NT7) (bvsdiv NT7 NT7) (bvurem NT7 NT7) (bvlshr NT7 NT7) (bvsrem NT7 NT7) (bvashr NT7 NT7) (bvshl NT7 NT7) (bvxor NT11 NT7) (bvshl NT11 NT7) (bvor NT11 NT7) (bvadd NT11 NT7) (bvsub NT11 NT7) (bvmul NT11 NT7) (bvsdiv NT11 NT7) (bvsrem NT11 NT7) (bvudiv NT11 NT7) (bvurem NT11 NT7) (bvlshr NT11 NT7) (bvashr NT11 NT7) (bvsdiv NT13 NT7) (bvadd NT13 NT7) (bvshl NT13 NT7) (bvsrem NT13 NT7) (bvlshr NT13 NT7) (bvmul NT13 NT7) (bvudiv NT13 NT7) (bvsub NT13 NT7) (bvurem NT13 NT7) (bvashr NT13 NT7) (bvor NT13 NT7) (bvxor NT13 NT7) (bvnot NT11) (bvneg NT11) (bvadd NT11 NT11) (bvor NT11 NT11) (bvxor NT11 NT11) (bvmul NT11 NT11) (bvshl NT11 NT11) (bvsdiv NT11 NT11) (bvudiv NT11 NT11) (bvurem NT11 NT11) (bvsub NT11 NT11) (bvsrem NT11 NT11) (bvlshr NT11 NT11) (bvashr NT11 NT11) (bvnot NT13) (bvneg NT13) (bvnot NT21) (bvneg NT21) (bvand NT21 NT21) (bvxor NT21 NT21) (bvor NT21 NT21) (bvadd NT21 NT21) (bvmul NT21 NT21) (bvudiv NT21 NT21) (bvsdiv NT21 NT21) (bvsrem NT21 NT21) (bvurem NT21 NT21) (bvsub NT21 NT21) (bvlshr NT21 NT21) (bvashr NT21 NT21) (bvshl NT21 NT21) (bvudiv NT25 NT21) (bvudiv NT27 NT21) (bvand NT25 NT21) (bvxor NT25 NT21) (bvxor NT27 NT21) (bvor NT25 NT21) (bvor NT27 NT21) (bvsdiv NT25 NT21) (bvsdiv NT27 NT21) (bvshl NT25 NT21) (bvshl NT27 NT21) (bvadd NT25 NT21) (bvadd NT27 NT21) (bvsrem NT25 NT21) (bvsrem NT27 NT21) (bvmul NT25 NT21) (bvmul NT27 NT21) (bvurem NT25 NT21) (bvurem NT27 NT21) (bvsub NT25 NT21) (bvsub NT27 NT21) (bvlshr NT25 NT21) (bvlshr NT27 NT21) (bvashr NT25 NT21) (bvashr NT27 NT21) (bvnot NT25) (bvneg NT25) (bvnot NT27) (bvneg NT27)))
    (NT21 (_ BitVec 32) (#x00000001 #x00000000 #xffffffff x))
    (NT7 (_ BitVec 32) (#x00000001 #x00000000 #xffffffff x))
    (NT25 (_ BitVec 32) ((bvnot NT21) (bvneg NT21) (bvxor NT21 NT21) (bvor NT21 NT21) (bvadd NT21 NT21) (bvmul NT21 NT21) (bvudiv NT21 NT21) (bvsdiv NT21 NT21) (bvsrem NT21 NT21) (bvurem NT21 NT21) (bvsub NT21 NT21) (bvlshr NT21 NT21) (bvashr NT21 NT21) (bvshl NT21 NT21)))
    (NT11 (_ BitVec 32) ((bvnot NT7) (bvneg NT7) (bvxor NT7 NT7) (bvor NT7 NT7) (bvsub NT7 NT7) (bvadd NT7 NT7) (bvmul NT7 NT7) (bvudiv NT7 NT7) (bvsdiv NT7 NT7) (bvurem NT7 NT7) (bvlshr NT7 NT7) (bvsrem NT7 NT7) (bvashr NT7 NT7) (bvshl NT7 NT7)))
    (NT27 (_ BitVec 32) ((bvand NT21 NT21)))
    (NT13 (_ BitVec 32) ((bvxor NT11 NT7) (bvshl NT11 NT7) (bvor NT11 NT7) (bvadd NT11 NT7) (bvsub NT11 NT7) (bvmul NT11 NT7) (bvsdiv NT11 NT7) (bvsrem NT11 NT7) (bvudiv NT11 NT7) (bvurem NT11 NT7) (bvlshr NT11 NT7) (bvashr NT11 NT7) (bvnot NT11) (bvneg NT11)))))

(declare-var x (_ BitVec 32))
(constraint (= (hd07 x) (f x)))

(check-synth)

