(set-logic BV)

(synth-fun inv ((x (_ BitVec 32)) (m (_ BitVec 32)) (n (_ BitVec 32))) Bool)

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
(declare-var x (_ BitVec 32))
(declare-var m (_ BitVec 32))
(declare-var n (_ BitVec 32))
(declare-var x1 (_ BitVec 32))
(declare-var m1 (_ BitVec 32))
(declare-var n1 (_ BitVec 32))
(constraint (=> (and (= x #x00000000) (= m #x00000000)) (inv x m n)))
(constraint (=> (and5 (inv x m n) (bvult x n) (or (= m1 x) (= m1 m)) (= x1 (bvadd x #x00000001)) (= n1 n)) (inv x1 m1 n1)))
(constraint (=> (and3 (inv x m n) (bvuge x n) (bvugt n #x00000000)) (and (bvule #x00000000 m) (bvult m n))))

(check-synth)

