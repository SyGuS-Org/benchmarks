(set-logic LIA)

(declare-primed-var conf_0 Int)
(declare-primed-var conf_1 Int)
(declare-primed-var conf_2 Int)
(declare-primed-var conf_3 Int)
(declare-primed-var conf_4 Int)
(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var conf_0_0 Int)
(declare-primed-var conf_1_0 Int)
(declare-primed-var conf_1_1 Int)
(declare-primed-var conf_1_2 Int)
(declare-primed-var conf_2_0 Int)
(declare-primed-var conf_2_1 Int)
(declare-primed-var conf_2_2 Int)
(declare-primed-var conf_3_0 Int)
(declare-primed-var conf_4_0 Int)
(declare-primed-var x_0 Int)
(declare-primed-var x_1 Int)
(declare-primed-var x_2 Int)
(declare-primed-var x_3 Int)
(declare-primed-var y_0 Int)
(declare-primed-var y_1 Int)
(declare-primed-var y_2 Int)
(synth-inv inv-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (conf_0_0 Int) (conf_1_0 Int) (conf_1_1 Int) (conf_1_2 Int) (conf_2_0 Int) (conf_2_1 Int) (conf_2_2 Int) (conf_3_0 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int)))

(define-fun pre-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (conf_0_0 Int) (conf_1_0 Int) (conf_1_1 Int) (conf_1_2 Int) (conf_2_0 Int) (conf_2_1 Int) (conf_2_2 Int) (conf_3_0 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int)) Bool
    (and (and (and (and (and (and (and (and (and (and (and (= conf_0 conf_0_0) (= conf_1 conf_1_0)) (= conf_2 conf_2_0)) (= conf_3 conf_3_0)) (= conf_4 conf_4_0)) (= x x_1)) (= conf_0_0 9)) (= conf_1_0 0)) (= conf_2_0 7)) (= conf_3_0 0)) (= conf_4_0 3)) (= x_1 -15000)))
(define-fun trans-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (conf_0_0 Int) (conf_1_0 Int) (conf_1_1 Int) (conf_1_2 Int) (conf_2_0 Int) (conf_2_1 Int) (conf_2_2 Int) (conf_3_0 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int) (conf_0! Int) (conf_1! Int) (conf_2! Int) (conf_3! Int) (conf_4! Int) (x! Int) (y! Int) (conf_0_0! Int) (conf_1_0! Int) (conf_1_1! Int) (conf_1_2! Int) (conf_2_0! Int) (conf_2_1! Int) (conf_2_2! Int) (conf_3_0! Int) (conf_4_0! Int) (x_0! Int) (x_1! Int) (x_2! Int) (x_3! Int) (y_0! Int) (y_1! Int) (y_2! Int)) Bool
    (or (and (and (and (and (and (and (and (and (and (and (and (and (and (= conf_1_1 conf_1) (= conf_2_1 conf_2)) (= x_2 x)) (= y_1 y)) (= conf_1_1 conf_1!)) (= conf_2_1 conf_2!)) (= x_2 x!)) (= y_1 y!)) (= conf_0 conf_0!)) (= conf_1 conf_1!)) (= conf_2 conf_2!)) (= conf_3 conf_3!)) (= conf_4 conf_4!)) (= y y!)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= conf_1_1 conf_1) (= conf_2_1 conf_2)) (= x_2 x)) (= y_1 y)) (< x_2 0)) (= x_3 (+ x_2 y_1))) (= conf_1_2 (+ 286 conf_3_0))) (= y_2 (+ y_1 1))) (= conf_2_2 (+ conf_0_0 conf_0_0))) (= conf_1_2 conf_1!)) (= conf_2_2 conf_2!)) (= x_3 x!)) (= y_2 y!)) (= conf_0 conf_0_0)) (= conf_0! conf_0_0)) (= conf_3 conf_3_0)) (= conf_3! conf_3_0)) (= conf_4 conf_4_0)) (= conf_4! conf_4_0))))
(define-fun post-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (conf_0_0 Int) (conf_1_0 Int) (conf_1_1 Int) (conf_1_2 Int) (conf_2_0 Int) (conf_2_1 Int) (conf_2_2 Int) (conf_3_0 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int)) Bool
    (or (not (and (and (and (and (and (and (= conf_0 conf_0_0) (= conf_1 conf_1_1)) (= conf_2 conf_2_1)) (= conf_3 conf_3_0)) (= conf_4 conf_4_0)) (= x x_2)) (= y y_1))) (not (and (not (< x_2 0)) (not (> y_1 0))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

