(set-logic LIA)
(synth-fun inv ((x Int) (y Int)) Bool
    (
        (Start Bool ((and AtomicFormula AtomicFormula)
                     (or AtomicFormula AtomicFormula)))
        (AtomicFormula Bool ((<= Sum Const) (= Sum Const)))
        (Sum Int ((+ Term Term)))
        (Term Int ((* Sign Var)))
        (Sign Int (0 1 -1))
        (Var Int (x y))
        (Const Int ((+ Const Const) (- Const Const) 0 1))
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
(declare-var x1 Int)

(constraint (implies (<= y 0) (or (<= y 0) (and (> y 0) (>= x 100)))))
(constraint (implies (> y 0) (inv x y)))
(constraint (implies (and3 (inv x y) (< x 100) (= x1 (+ x y))) (inv x1 y)))
(constraint (implies (and (inv x y) (not (< x 100))) (or (<= y 0) (and (> y 0) (>= x 100)))))

(check-synth)
