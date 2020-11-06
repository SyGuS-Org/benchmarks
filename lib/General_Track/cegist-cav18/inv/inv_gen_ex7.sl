(set-logic BV)

(synth-fun inv ((i (_ BitVec 32)) (y (_ BitVec 32)) (l (_ BitVec 32))) Bool)

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
(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(declare-var l (_ BitVec 32))
(declare-var i1 (_ BitVec 32))
(declare-var x1 (_ BitVec 32))
(declare-var y1 (_ BitVec 32))
(declare-var l1 (_ BitVec 32))
(constraint (=> (or3 (bvult x #x00000000) (bvult y #x00000000) (bvugt y x)) true))
(constraint (=> (and3 (not (or3 (bvult x #x00000000) (bvult y #x00000000) (bvugt y x))) (= l x) (= i #x00000000)) (inv i y l)))
(constraint (=> (and4 (inv i y l) (bvult i y) (not (or (bvult i #x00000000) (bvuge i l))) (= i1 (bvadd i #x00000001))) (inv i1 y l)))
(constraint (=> (and3 (inv i y l) (bvult i y) (or (bvult i #x00000000) (bvuge i l))) false))

(check-synth)

