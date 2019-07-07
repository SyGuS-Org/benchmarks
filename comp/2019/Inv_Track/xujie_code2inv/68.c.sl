(set-logic LIA)

(declare-primed-var n Int)
(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var n_0 Int)
(declare-primed-var x_0 Int)
(declare-primed-var x_1 Int)
(declare-primed-var x_2 Int)
(declare-primed-var y_0 Int)
(declare-primed-var y_1 Int)
(declare-primed-var y_2 Int)
(synth-inv inv-f ((n Int) (x Int) (y Int) (n_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (y_0 Int) (y_1 Int) (y_2 Int)))

(define-fun pre-f ((n Int) (x Int) (y Int) (n_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (y_0 Int) (y_1 Int) (y_2 Int)) Bool
    (and (= x x_0) (= x_0 1)))
(define-fun trans-f ((n Int) (x Int) (y Int) (n_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (y_0 Int) (y_1 Int) (y_2 Int) (n! Int) (x! Int) (y! Int) (n_0! Int) (x_0! Int) (x_1! Int) (x_2! Int) (y_0! Int) (y_1! Int) (y_2! Int)) Bool
    (or (and (and (and (and (and (and (= x_1 x) (= y_1 y)) (= x_1 x!)) (= y_1 y!)) (= n n_0)) (= n! n_0)) (= y y!)) (and (and (and (and (and (and (and (and (= x_1 x) (= y_1 y)) (<= x_1 n_0)) (= y_2 (- n_0 x_1))) (= x_2 (+ x_1 1))) (= x_2 x!)) (= y_2 y!)) (= n n_0)) (= n! n_0))))
(define-fun post-f ((n Int) (x Int) (y Int) (n_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (y_0 Int) (y_1 Int) (y_2 Int)) Bool
    (or (not (and (and (= n n_0) (= x x_1)) (= y y_1))) (not (and (and (not (<= x_1 n_0)) (> n_0 0)) (not (<= y_1 n_0))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

