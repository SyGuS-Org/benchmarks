(set-logic LIA)

(synth-fun f ((x1 Int) (x2 Int)) Int)

(define-fun V_min () Int
    1)
(define-fun V_mux_ () Int
    2)
(define-fun Zero ((v Int)) Bool
    (= v 0))
(define-fun InV1 ((v Int)) Bool
    (and (>= v V_min) (<= v V_mux_)))
(define-fun InV2 ((v1 Int) (v2 Int)) Bool
    (and (and (and (>= v1 V_min) (<= v1 V_mux_)) (>= v2 V_min)) (<= v2 V_mux_)))
(define-fun InVorZero ((v Int)) Bool
    (or (InV1 v) (Zero v)))
(define-fun UnsafeSame ((x1 Int) (x2 Int) (v1 Int) (v2 Int)) Bool
    (or (and (>= x1 x2) (>= (+ x2 v2) (+ x1 v1))) (and (>= x2 x1) (>= (+ x1 v1) (+ x2 v2)))))
(define-fun Unsafe ((x1 Int) (x2 Int) (v1 Int) (v2 Int)) Bool
    (UnsafeSame x1 x2 v1 v2))
(define-fun Mad_Same ((x1 Int) (x2 Int)) Bool
    (= x1 x2))
(define-fun Mad_ ((x1 Int) (x2 Int)) Bool
    (Mad_Same x1 x2))
(declare-var x1 Int)
(declare-var x2 Int)
(declare-var v1 Int)
(declare-var v2 Int)
(constraint (InVorZero (f x1 x2)))
(constraint (or (or (not (InV2 v1 v2)) (Zero (f x1 x2))) (and (not (Unsafe x1 x2 (f x1 x2) (f x1 x2))) (not (Zero (f (+ x1 (f x1 x2)) (+ x2 (f x1 x2))))))))
(constraint (or (or (not (InV2 v1 v2)) (or (Unsafe x1 x2 v1 v2) (Zero (f (+ x1 v1) (+ x2 v2))))) (not (Zero (f x1 x2)))))
(constraint (or (Mad_ x1 x2) (not (Zero (f x1 x2)))))

(check-synth)

