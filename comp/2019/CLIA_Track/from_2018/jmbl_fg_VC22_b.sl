(set-logic LIA)

(synth-fun f1 ((x1 Int) (x2 Int)) Int)

(synth-fun f2 ((x1 Int) (x2 Int)) Int)

(define-fun V_min () Int
    1)
(define-fun V_mux_ () Int
    2)
(define-fun all_zero ((v1 Int) (v2 Int)) Bool
    (and (= v1 0) (= v2 0)))
(define-fun InV ((v1 Int) (v2 Int)) Bool
    (and (and (and (>= v1 V_min) (<= v1 V_mux_)) (>= v2 V_min)) (<= v2 V_mux_)))
(define-fun InVorZero ((v1 Int) (v2 Int)) Bool
    (or (InV v1 v2) (all_zero v1 v2)))
(define-fun UnsafeSame ((x1 Int) (x2 Int) (v1 Int) (v2 Int)) Bool
    (or (and (>= x1 x2) (>= (+ x2 v2) (+ x1 v1))) (and (>= x2 x1) (>= (+ x1 v1) (+ x2 v2)))))
(define-fun Mad_Same ((x1 Int) (x2 Int)) Bool
    (= x1 x2))
(define-fun Mad_ ((x1 Int) (x2 Int)) Bool
    (Mad_Same x1 x2))
(define-fun Unsafe ((x1 Int) (x2 Int) (v1 Int) (v2 Int)) Bool
    (UnsafeSame x1 x2 v1 v2))
(declare-var x1 Int)
(declare-var x2 Int)
(declare-var v1 Int)
(declare-var v2 Int)
(constraint (InVorZero (f1 x1 x2) (f2 x1 x2)))
(constraint (or (or (not (InV v1 v2)) (all_zero (f1 x1 x2) (f2 x1 x2))) (and (not (Unsafe x1 x2 (f1 x1 x2) (f2 x1 x2))) (not (all_zero (f1 (+ x1 (f1 x1 x2)) (+ x2 (f2 x1 x2))) (f2 (+ x1 (f1 x1 x2)) (+ x2 (f2 x1 x2))))))))
(constraint (or (or (or (not (InV v1 v2)) (Unsafe x1 x2 v1 v2)) (all_zero (f1 (+ x1 v1) (+ x2 v2)) (f2 (+ x1 v1) (+ x2 v2)))) (not (all_zero (f1 x1 x2) (f2 x1 x2)))))
(constraint (or (Mad_ x1 x2) (not (all_zero (f1 x1 x2) (f2 x1 x2)))))

(check-synth)

