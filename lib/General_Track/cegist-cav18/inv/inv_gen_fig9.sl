(set-logic BV)

(synth-fun inv ((x (_ BitVec 32)) (y (_ BitVec 32))) Bool)

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
(declare-var y (_ BitVec 32))
(declare-var y1 (_ BitVec 32))
(constraint (=> (and (= x #x00000000) (= y #x00000000)) (inv x y)))
(constraint (=> (and3 (inv x y) (bvuge y #x00000000) (= y1 (bvadd y x))) (inv x y1)))
(constraint (=> (and (inv x y) (bvult y #x00000000)) false))

(check-synth)

