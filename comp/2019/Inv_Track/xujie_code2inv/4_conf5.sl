(set-logic LIA)

(declare-primed-var conf_0 Int)
(declare-primed-var conf_1 Int)
(declare-primed-var conf_2 Int)
(declare-primed-var conf_3 Int)
(declare-primed-var conf_4 Int)
(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var z Int)
(declare-primed-var conf_0_0 Int)
(declare-primed-var conf_1_0 Int)
(declare-primed-var conf_2_0 Int)
(declare-primed-var conf_3_0 Int)
(declare-primed-var conf_3_1 Int)
(declare-primed-var conf_3_2 Int)
(declare-primed-var conf_3_3 Int)
(declare-primed-var conf_3_4 Int)
(declare-primed-var conf_4_0 Int)
(declare-primed-var x_0 Int)
(declare-primed-var x_1 Int)
(declare-primed-var x_2 Int)
(declare-primed-var x_3 Int)
(declare-primed-var y_0 Int)
(declare-primed-var y_1 Int)
(declare-primed-var y_2 Int)
(declare-primed-var y_3 Int)
(declare-primed-var z_0 Int)
(synth-inv inv-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (z Int) (conf_0_0 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_3_1 Int) (conf_3_2 Int) (conf_3_3 Int) (conf_3_4 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (z_0 Int)))

(define-fun pre-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (z Int) (conf_0_0 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_3_1 Int) (conf_3_2 Int) (conf_3_3 Int) (conf_3_4 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (z_0 Int)) Bool
    (and (and (and (and (and (and (and (and (and (and (and (= conf_0 conf_0_0) (= conf_1 conf_1_0)) (= conf_2 conf_2_0)) (= conf_3 conf_3_0)) (= conf_4 conf_4_0)) (= x x_1)) (= conf_0_0 1)) (= conf_1_0 9)) (= conf_2_0 0)) (= conf_3_0 3)) (= conf_4_0 8)) (= x_1 0)))
(define-fun trans-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (z Int) (conf_0_0 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_3_1 Int) (conf_3_2 Int) (conf_3_3 Int) (conf_3_4 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (z_0 Int) (conf_0! Int) (conf_1! Int) (conf_2! Int) (conf_3! Int) (conf_4! Int) (x! Int) (y! Int) (z! Int) (conf_0_0! Int) (conf_1_0! Int) (conf_2_0! Int) (conf_3_0! Int) (conf_3_1! Int) (conf_3_2! Int) (conf_3_3! Int) (conf_3_4! Int) (conf_4_0! Int) (x_0! Int) (x_1! Int) (x_2! Int) (x_3! Int) (y_0! Int) (y_1! Int) (y_2! Int) (y_3! Int) (z_0! Int)) Bool
    (or (or (and (and (and (and (and (and (and (and (and (and (and (and (= conf_3_1 conf_3) (= x_2 x)) (= y_1 y)) (= conf_3_1 conf_3!)) (= x_2 x!)) (= y_1 y!)) (= conf_0 conf_0!)) (= conf_1 conf_1!)) (= conf_2 conf_2!)) (= conf_3 conf_3!)) (= conf_4 conf_4!)) (= y y!)) (= z z!)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= conf_3_1 conf_3) (= x_2 x)) (= y_1 y)) (< x_2 500)) (= x_3 (+ x_2 1))) (= conf_3_2 159)) (<= z_0 y_1)) (= y_2 z_0)) (= conf_3_3 (+ conf_1_0 conf_3_2))) (= conf_3_4 conf_3_3)) (= y_3 y_2)) (= conf_3_4 conf_3!)) (= x_3 x!)) (= y_3 y!)) (= conf_0 conf_0_0)) (= conf_0! conf_0_0)) (= conf_1 conf_1_0)) (= conf_1! conf_1_0)) (= conf_2 conf_2_0)) (= conf_2! conf_2_0)) (= conf_4 conf_4_0)) (= conf_4! conf_4_0)) (= z z_0)) (= z! z_0))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= conf_3_1 conf_3) (= x_2 x)) (= y_1 y)) (< x_2 500)) (= x_3 (+ x_2 1))) (= conf_3_2 159)) (not (<= z_0 y_1))) (= conf_3_4 conf_3_2)) (= y_3 y_1)) (= conf_3_4 conf_3!)) (= x_3 x!)) (= y_3 y!)) (= conf_0 conf_0_0)) (= conf_0! conf_0_0)) (= conf_1 conf_1_0)) (= conf_1! conf_1_0)) (= conf_2 conf_2_0)) (= conf_2! conf_2_0)) (= conf_4 conf_4_0)) (= conf_4! conf_4_0)) (= z z_0)) (= z! z_0))))
(define-fun post-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (z Int) (conf_0_0 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_3_1 Int) (conf_3_2 Int) (conf_3_3 Int) (conf_3_4 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (z_0 Int)) Bool
    (or (not (and (and (and (and (and (and (and (= conf_0 conf_0_0) (= conf_1 conf_1_0)) (= conf_2 conf_2_0)) (= conf_3 conf_3_1)) (= conf_4 conf_4_0)) (= x x_2)) (= y y_1)) (= z z_0))) (not (and (not (< x_2 500)) (not (>= z_0 y_1))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

