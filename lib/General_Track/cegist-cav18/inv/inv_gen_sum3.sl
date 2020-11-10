(set-logic BV)

(synth-fun inv ((s (_ BitVec 32)) (l (_ BitVec 32)) (n (_ BitVec 32)) (x (_ BitVec 32))) Bool)

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
(declare-var l (_ BitVec 32))
(declare-var s (_ BitVec 32))
(declare-var n (_ BitVec 32))
(declare-var x (_ BitVec 32))
(declare-var s1 (_ BitVec 32))
(declare-var x1 (_ BitVec 32))
(constraint (=> (and (= s #x00000000) (= x #x00000000)) (inv s l n x)))
(constraint (=> (and3 (inv s l n x) (= s1 (bvadd s #x00000001)) (= x1 (bvadd x #x00000001))) (or (= s1 x1) (= s1 #x00000000))))
(constraint (=> (and3 (inv s l n x) (= s1 (bvadd s #x00000001)) (= x1 (bvadd x #x00000001))) (inv s1 l n x1)))

(check-synth)

