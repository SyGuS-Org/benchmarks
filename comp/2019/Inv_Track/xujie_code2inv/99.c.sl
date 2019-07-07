(set-logic LIA)

(declare-primed-var n Int)
(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var n_0 Int)
(declare-primed-var x_0 Int)
(declare-primed-var x_1 Int)
(declare-primed-var x_2 Int)
(declare-primed-var x_3 Int)
(declare-primed-var y_0 Int)
(declare-primed-var y_1 Int)
(declare-primed-var y_2 Int)
(declare-primed-var y_3 Int)
(synth-inv inv-f ((n Int) (x Int) (y Int) (n_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int)))

(define-fun pre-f ((n Int) (x Int) (y Int) (n_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int)) Bool
    (and (and (and (and (and (= n n_0) (= x x_1)) (= y y_1)) (>= n_0 0)) (= x_1 n_0)) (= y_1 0)))
(define-fun trans-f ((n Int) (x Int) (y Int) (n_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (n! Int) (x! Int) (y! Int) (n_0! Int) (x_0! Int) (x_1! Int) (x_2! Int) (x_3! Int) (y_0! Int) (y_1! Int) (y_2! Int) (y_3! Int)) Bool
    (or (and (and (and (and (and (= x_2 x) (= y_2 y)) (= x_2 x!)) (= y_2 y!)) (= n n!)) (= y y!)) (and (and (and (and (and (and (and (and (= x_2 x) (= y_2 y)) (> x_2 0)) (= y_3 (+ y_2 1))) (= x_3 (- x_2 1))) (= x_3 x!)) (= y_3 y!)) (= n n_0)) (= n! n_0))))
(define-fun post-f ((n Int) (x Int) (y Int) (n_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int)) Bool
    (or (not (and (and (= n n_0) (= x x_2)) (= y y_2))) (not (and (not (> x_2 0)) (not (= n_0 (+ x_2 y_2)))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

