(set-logic LIA)

(declare-primed-var conf_0 Int)
(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var conf_0_0 Int)
(declare-primed-var conf_0_1 Int)
(declare-primed-var conf_0_2 Int)
(declare-primed-var x_0 Int)
(declare-primed-var x_1 Int)
(declare-primed-var y_0 Int)
(declare-primed-var y_1 Int)
(declare-primed-var y_2 Int)
(declare-primed-var y_3 Int)
(synth-inv inv-f ((conf_0 Int) (x Int) (y Int) (conf_0_0 Int) (conf_0_1 Int) (conf_0_2 Int) (x_0 Int) (x_1 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int)))

(define-fun pre-f ((conf_0 Int) (x Int) (y Int) (conf_0_0 Int) (conf_0_1 Int) (conf_0_2 Int) (x_0 Int) (x_1 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int)) Bool
    (and (and (and (and (and (= conf_0 conf_0_0) (= x x_1)) (= y y_1)) (= conf_0_0 8)) (= x_1 0)) (= y_1 0)))
(define-fun trans-f ((conf_0 Int) (x Int) (y Int) (conf_0_0 Int) (conf_0_1 Int) (conf_0_2 Int) (x_0 Int) (x_1 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (conf_0! Int) (x! Int) (y! Int) (conf_0_0! Int) (conf_0_1! Int) (conf_0_2! Int) (x_0! Int) (x_1! Int) (y_0! Int) (y_1! Int) (y_2! Int) (y_3! Int)) Bool
    (or (and (and (and (and (and (= conf_0_1 conf_0) (= y_2 y)) (= conf_0_1 conf_0!)) (= y_2 y!)) (= conf_0 conf_0!)) (= x x!)) (and (and (and (and (and (and (and (and (= conf_0_1 conf_0) (= y_2 y)) (>= y_2 0)) (= y_3 (+ y_2 x_1))) (= conf_0_2 conf_0_1)) (= conf_0_2 conf_0!)) (= y_3 y!)) (= x x_1)) (= x! x_1))))
(define-fun post-f ((conf_0 Int) (x Int) (y Int) (conf_0_0 Int) (conf_0_1 Int) (conf_0_2 Int) (x_0 Int) (x_1 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int)) Bool
    (or (not (and (and (= conf_0 conf_0_1) (= x x_1)) (= y y_2))) (not (and (not (>= y_2 0)) (not (>= y_2 0))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

