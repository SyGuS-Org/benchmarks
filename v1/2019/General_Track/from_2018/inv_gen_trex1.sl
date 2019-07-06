(set-logic LIA)
(synth-fun inv ((x Int) (y Int) (k Int) (z Int) (c Int)) Bool
    (
        (Start Bool ((and AtomicFormula AtomicFormula)
                     (or AtomicFormula AtomicFormula)))
        (AtomicFormula Bool ((<= Sum Const) (= Sum Const)))
        (Sum Int ((+ Term Term)))
        (Term Int ((* Sign Var)))
        (Sign Int (0 1 -1))
        (Var Int (x y k z c))
        (Const Int (-3 -2 -1 0 1 2 3))
    )
)

(define-fun implies ((b1 Bool) (b2 Bool)) Bool (or (not b1) b2))
(define-fun and3 ((b1 Bool) (b2 Bool) (b3 Bool)) Bool (and (and b1 b2) b3))
(define-fun and4 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool)) Bool (and (and3 b1 b2 b3) b4))
(define-fun and5 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool) (b5 Bool)) Bool (and (and4 b1 b2 b3 b4) b5))
(define-fun and6 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool) (b5 Bool) (b6 Bool)) Bool (and (and5 b1 b2 b3 b4 b5) b6))
(define-fun or3 ((b1 Bool) (b2 Bool) (b3 Bool)) Bool (or (or b1 b2) b3))
(define-fun or4 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool)) Bool (or (or3 b1 b2 b3) b4))
(define-fun or5 ((b1 Bool) (b2 Bool) (b3 Bool) (b4 Bool) (b5 Bool)) Bool (or (or4 b1 b2 b3 b4) b5))

(declare-var s Int)

(declare-var x Int)
(declare-var y Int)
(declare-var k Int)
(declare-var z Int)
(declare-var c Int)
(declare-var z1 Int)

(constraint (implies (= z 1) (inv x y k z c)))
(constraint (implies (and3 (inv x y k z c) (< z k) (= z1 (* z 2))) (inv x y k z1 c)))
(constraint (implies (and (inv x y k z c) (>= z k)) (>= z 1)))

(check-synth)
