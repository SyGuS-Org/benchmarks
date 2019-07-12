(set-logic LIA)

(declare-primed-var i Int)
(declare-primed-var j Int)
(declare-primed-var conf_0 Int)
(declare-primed-var conf_1 Int)
(declare-primed-var conf_2 Int)
(declare-primed-var conf_3 Int)
(declare-primed-var conf_4 Int)
(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var i_0 Int)
(declare-primed-var i_1 Int)
(declare-primed-var i_2 Int)
(declare-primed-var i_3 Int)
(declare-primed-var j_0 Int)
(declare-primed-var j_1 Int)
(declare-primed-var j_2 Int)
(declare-primed-var j_3 Int)
(declare-primed-var conf_0_0 Int)
(declare-primed-var conf_0_1 Int)
(declare-primed-var conf_0_2 Int)
(declare-primed-var conf_1_0 Int)
(declare-primed-var conf_2_0 Int)
(declare-primed-var conf_3_0 Int)
(declare-primed-var conf_4_0 Int)
(declare-primed-var conf_4_1 Int)
(declare-primed-var conf_4_2 Int)
(declare-primed-var x_0 Int)
(declare-primed-var y_0 Int)
(declare-primed-var y_1 Int)
(synth-inv inv-f ((i Int) (j Int) (conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (i_0 Int) (i_1 Int) (i_2 Int) (i_3 Int) (j_0 Int) (j_1 Int) (j_2 Int) (j_3 Int) (conf_0_0 Int) (conf_0_1 Int) (conf_0_2 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_4_0 Int) (conf_4_1 Int) (conf_4_2 Int) (x_0 Int) (y_0 Int) (y_1 Int)))

(define-fun pre-f ((i Int) (j Int) (conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (i_0 Int) (i_1 Int) (i_2 Int) (i_3 Int) (j_0 Int) (j_1 Int) (j_2 Int) (j_3 Int) (conf_0_0 Int) (conf_0_1 Int) (conf_0_2 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_4_0 Int) (conf_4_1 Int) (conf_4_2 Int) (x_0 Int) (y_0 Int) (y_1 Int)) Bool
    (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= i i_1) (= j j_1)) (= conf_0 conf_0_0)) (= conf_1 conf_1_0)) (= conf_2 conf_2_0)) (= conf_3 conf_3_0)) (= conf_4 conf_4_0)) (= y y_1)) (= conf_0_0 3)) (= conf_1_0 7)) (= conf_2_0 3)) (= conf_3_0 6)) (= conf_4_0 8)) (= j_1 0)) (= i_1 0)) (= y_1 2)))
(define-fun trans-f ((i Int) (j Int) (conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (i_0 Int) (i_1 Int) (i_2 Int) (i_3 Int) (j_0 Int) (j_1 Int) (j_2 Int) (j_3 Int) (conf_0_0 Int) (conf_0_1 Int) (conf_0_2 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_4_0 Int) (conf_4_1 Int) (conf_4_2 Int) (x_0 Int) (y_0 Int) (y_1 Int) (i! Int) (j! Int) (conf_0! Int) (conf_1! Int) (conf_2! Int) (conf_3! Int) (conf_4! Int) (x! Int) (y! Int) (i_0! Int) (i_1! Int) (i_2! Int) (i_3! Int) (j_0! Int) (j_1! Int) (j_2! Int) (j_3! Int) (conf_0_0! Int) (conf_0_1! Int) (conf_0_2! Int) (conf_1_0! Int) (conf_2_0! Int) (conf_3_0! Int) (conf_4_0! Int) (conf_4_1! Int) (conf_4_2! Int) (x_0! Int) (y_0! Int) (y_1! Int)) Bool
    (or (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= i_2 i) (= j_2 j)) (= conf_0_1 conf_0)) (= conf_4_1 conf_4)) (= i_2 i!)) (= j_2 j!)) (= conf_0_1 conf_0!)) (= conf_4_1 conf_4!)) (= x x_0)) (= x! x_0)) (= j j!)) (= conf_0 conf_0!)) (= conf_1 conf_1!)) (= conf_2 conf_2!)) (= conf_3 conf_3!)) (= conf_4 conf_4!)) (= y y!)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= i_2 i) (= j_2 j)) (= conf_0_1 conf_0)) (= conf_4_1 conf_4)) (<= i_2 x_0)) (= i_3 (+ i_2 1))) (= conf_4_2 (- 267 293))) (= j_3 (+ j_2 y_1))) (= conf_0_2 (- 444 782))) (= i_3 i!)) (= j_3 j!)) (= conf_0_2 conf_0!)) (= conf_4_2 conf_4!)) (= conf_1 conf_1_0)) (= conf_1! conf_1_0)) (= conf_2 conf_2_0)) (= conf_2! conf_2_0)) (= conf_3 conf_3_0)) (= conf_3! conf_3_0)) (= x x_0)) (= x! x_0)) (= y y_1)) (= y! y_1))))
(define-fun post-f ((i Int) (j Int) (conf_0 Int) (conf_1 Int) (conf_2 Int) (conf_3 Int) (conf_4 Int) (x Int) (y Int) (i_0 Int) (i_1 Int) (i_2 Int) (i_3 Int) (j_0 Int) (j_1 Int) (j_2 Int) (j_3 Int) (conf_0_0 Int) (conf_0_1 Int) (conf_0_2 Int) (conf_1_0 Int) (conf_2_0 Int) (conf_3_0 Int) (conf_4_0 Int) (conf_4_1 Int) (conf_4_2 Int) (x_0 Int) (y_0 Int) (y_1 Int)) Bool
    (or (not (and (and (and (and (and (and (and (and (= i i_2) (= j j_2)) (= conf_0 conf_0_1)) (= conf_1 conf_1_0)) (= conf_2 conf_2_0)) (= conf_3 conf_3_0)) (= conf_4 conf_4_1)) (= x x_0)) (= y y_1))) (not (and (and (not (<= i_2 x_0)) (= y_1 1)) (not (= i_2 j_2))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

