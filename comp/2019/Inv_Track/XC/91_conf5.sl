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
(declare-primed-var conf_2_0 Int)
(declare-primed-var conf_3_0 Int)
(declare-primed-var conf_3_1 Int)
(declare-primed-var conf_3_2 Int)
(declare-primed-var conf_4_0 Int)
(declare-primed-var x_0 Int)
(declare-primed-var x_1 Int)
(declare-primed-var y_0 Int)
(declare-primed-var y_1 Int)
(declare-primed-var y_2 Int)
(declare-primed-var y_3 Int)
(synth-inv inv-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (conf_0_0 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_3_1 Int) (conf_3_2 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int)))

(define-fun pre-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (conf_0_0 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_3_1 Int) (conf_3_2 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int)) Bool
    (and (and (and (and (and (and (and (and (and (and (and (and (and (= conf_0 conf_0_0) (= conf_1 conf_1_0)) (= conf_2 conf_2_0)) (= conf_3 conf_3_0)) (= conf_4 conf_4_0)) (= x x_1)) (= y y_1)) (= conf_0_0 5)) (= conf_1_0 3)) (= conf_2_0 4)) (= conf_3_0 3)) (= conf_4_0 8)) (= x_1 0)) (= y_1 0)))
(define-fun trans-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (conf_0_0 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_3_1 Int) (conf_3_2 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (conf_0! Int) (conf_1! Int) (conf_2! Int) (conf_3! Int) (conf_4! Int) (x! Int) (y! Int) (conf_0_0! Int) (conf_1_0! Int) (conf_2_0! Int) (conf_3_0! Int) (conf_3_1! Int) (conf_3_2! Int) (conf_4_0! Int) (x_0! Int) (x_1! Int) (y_0! Int) (y_1! Int) (y_2! Int) (y_3! Int)) Bool
    (or (and (and (and (and (and (and (and (and (and (= conf_3_1 conf_3) (= y_2 y)) (= conf_3_1 conf_3!)) (= y_2 y!)) (= conf_0 conf_0!)) (= conf_1 conf_1!)) (= conf_2 conf_2!)) (= conf_3 conf_3!)) (= conf_4 conf_4!)) (= x x!)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= conf_3_1 conf_3) (= y_2 y)) (>= y_2 0)) (= y_3 (+ y_2 x_1))) (= conf_3_2 (+ conf_2_0 917))) (= conf_3_2 conf_3!)) (= y_3 y!)) (= conf_0 conf_0_0)) (= conf_0! conf_0_0)) (= conf_1 conf_1_0)) (= conf_1! conf_1_0)) (= conf_2 conf_2_0)) (= conf_2! conf_2_0)) (= conf_4 conf_4_0)) (= conf_4! conf_4_0)) (= x x_1)) (= x! x_1))))
(define-fun post-f ((conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (conf_0_0 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_3_1 Int) (conf_3_2 Int) (conf_4_0 Int) (x_0 Int) (x_1 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int)) Bool
    (or (not (and (and (and (and (and (and (= conf_0 conf_0_0) (= conf_1 conf_1_0)) (= conf_2 conf_2_0)) (= conf_3 conf_3_1)) (= conf_4 conf_4_0)) (= x x_1)) (= y y_2))) (not (and (not (>= y_2 0)) (not (>= y_2 0))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

