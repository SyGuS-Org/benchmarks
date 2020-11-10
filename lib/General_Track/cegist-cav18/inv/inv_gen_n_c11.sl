(set-logic BV)

(synth-fun inv ((i (_ BitVec 32)) (l (_ BitVec 32))) Bool)

(define-fun and3 ((b1 Bool) (b2 Bool) (b3 Bool)) Bool
    (and (and b1 b2) b3))
(define-fun and4 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool)) Bool
    (and (and3 b1 b2 b3) b4))
(define-fun and5 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool) (b5 Bool)) Bool
    (and (and4 b1 b2 b3 b4) b5))
(define-fun and6 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool) (b5 Bool) (b6 Bool)) Bool
    (and (and5 b1 b2 b3 b4 b5) b6))
(define-fun or3 ((b1 Bool) (b2 Bool) (b3 Bool)) Bool
    (or (or b1 b2) b3))
(define-fun or4 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool)) Bool
    (or (or3 b1 b2 b3) b4))
(define-fun or5 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool) (b5 Bool)) Bool
    (or (or4 b1 b2 b3 b4) b5))
(declare-var i (_ BitVec 32))
(declare-var l (_ BitVec 32))
(declare-var i1 (_ BitVec 32))
(declare-var l1 (_ BitVec 32))
(declare-var l2 (_ BitVec 32))
(constraint (=> (= l #x00000000) (inv i l)))
(constraint (=> (and5 (inv i l) (=> (= l #x00000004) (= l1 #x00000000)) (=> (not (= l #x00000004)) (= l1 l)) (not (or (bvult l1 #x00000000) (bvuge l1 #x00000005))) (= l2 (bvadd l1 #x00000001))) (inv i l2)))
(constraint (=> (and4 (inv i l) (=> (= l #x00000004) (= l1 #x00000000)) (=> (not (= l #x00000004)) (= l1 l)) (or (bvult l1 #x00000000) (bvuge l1 #x00000005))) false))

(check-synth)

