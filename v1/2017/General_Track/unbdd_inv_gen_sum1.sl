(set-logic LIA)
(synth-fun inv ((s Int) (i Int) (n Int)) Bool
    (
        (Start Bool ((and AtomicFormula AtomicFormula)
                     (or AtomicFormula AtomicFormula)))
        (AtomicFormula Bool ((<= Sum Const) (= Sum Const)))
        (Sum Int ((+ Term Term)))
        (Term Int ((* Sign Var)))
        (Sign Int (0 1 -1))
        (Var Int (s i n))
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

(declare-var i Int)
(declare-var s Int)
(declare-var n Int)
(declare-var s1 Int)
(declare-var i1 Int)

(constraint (implies (and (= s 0) (= i 1)) (inv s i n)))
(constraint (implies (and4 (inv s i n) (<= i n) (= s1 (+ s 1)) (= i1 (+ i 1))) (inv s1 i1 n)))
(constraint (implies (and (inv s i n) (> i n)) (or (= s n) (= s 0))))

(check-synth)
