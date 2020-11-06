(set-logic BV)

(synth-fun inv ((x (_ BitVec 32)) (d (_ BitVec 32))) Bool)

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
(declare-var s (_ BitVec 32))
(declare-var x (_ BitVec 32))
(declare-var d (_ BitVec 32))
(declare-var x1 (_ BitVec 32))
(declare-var d1 (_ BitVec 32))
(declare-var d2 (_ BitVec 32))
(declare-var c1 Bool)
(declare-var c2 Bool)
(constraint (=> (and5 (= d #x00000001) (=> c1 (= d1 (bvsub d #x00000001))) (=> (not c1) (= d1 d)) (=> c2 (= d2 (bvsub d1 #x00000001))) (=> (not c2) (= d2 d1))) (inv x d2)))
(constraint (=> (and3 (inv x d) (bvugt x #x00000000) (= x1 (bvsub x d))) (inv x1 d)))
(constraint (=> (and (inv x d) (bvule x #x00000000)) (bvule x #x00000000)))

(check-synth)

