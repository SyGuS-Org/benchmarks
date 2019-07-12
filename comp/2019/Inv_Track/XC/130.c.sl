(set-logic LIA)

(declare-primed-var d1 Int)
(declare-primed-var d2 Int)
(declare-primed-var d3 Int)
(declare-primed-var x1 Int)
(declare-primed-var x2 Int)
(declare-primed-var x3 Int)
(declare-primed-var d1_0 Int)
(declare-primed-var d2_0 Int)
(declare-primed-var d3_0 Int)
(declare-primed-var x1_0 Int)
(declare-primed-var x1_1 Int)
(declare-primed-var x1_2 Int)
(declare-primed-var x1_3 Int)
(declare-primed-var x2_0 Int)
(declare-primed-var x2_1 Int)
(declare-primed-var x2_2 Int)
(declare-primed-var x2_3 Int)
(declare-primed-var x3_0 Int)
(declare-primed-var x3_1 Int)
(declare-primed-var x3_2 Int)
(declare-primed-var x3_3 Int)
(synth-inv inv-f ((d1 Int) (d2 Int) (d3 Int) (x1 Int) (x2 Int) (x3 Int) (d1_0 Int) (d2_0 Int) (d3_0 Int) (x1_0 Int) (x1_1 Int) (x1_2 Int) (x1_3 Int) (x2_0 Int) (x2_1 Int) (x2_2 Int) (x2_3 Int) (x3_0 Int) (x3_1 Int) (x3_2 Int) (x3_3 Int)))

(define-fun pre-f ((d1 Int) (d2 Int) (d3 Int) (x1 Int) (x2 Int) (x3 Int) (d1_0 Int) (d2_0 Int) (d3_0 Int) (x1_0 Int) (x1_1 Int) (x1_2 Int) (x1_3 Int) (x2_0 Int) (x2_1 Int) (x2_2 Int) (x2_3 Int) (x3_0 Int) (x3_1 Int) (x3_2 Int) (x3_3 Int)) Bool
    (and (and (and (and (and (and (and (= d1 d1_0) (= d2 d2_0)) (= d3 d3_0)) (= x1 x1_0)) (= d1_0 1)) (= d2_0 1)) (= d3_0 1)) (= x1_0 1)))
(define-fun trans-f ((d1 Int) (d2 Int) (d3 Int) (x1 Int) (x2 Int) (x3 Int) (d1_0 Int) (d2_0 Int) (d3_0 Int) (x1_0 Int) (x1_1 Int) (x1_2 Int) (x1_3 Int) (x2_0 Int) (x2_1 Int) (x2_2 Int) (x2_3 Int) (x3_0 Int) (x3_1 Int) (x3_2 Int) (x3_3 Int) (d1! Int) (d2! Int) (d3! Int) (x1! Int) (x2! Int) (x3! Int) (d1_0! Int) (d2_0! Int) (d3_0! Int) (x1_0! Int) (x1_1! Int) (x1_2! Int) (x1_3! Int) (x2_0! Int) (x2_1! Int) (x2_2! Int) (x2_3! Int) (x3_0! Int) (x3_1! Int) (x3_2! Int) (x3_3! Int)) Bool
    (or (or (or (and (and (and (and (and (and (and (and (and (and (= x1_1 x1) (= x2_1 x2)) (= x3_1 x3)) (= x1_1 x1!)) (= x2_1 x2!)) (= x3_1 x3!)) (= d1 d1!)) (= d2 d2!)) (= d3 d3!)) (= x2 x2!)) (= x3 x3!)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x1_1 x1) (= x2_1 x2)) (= x3_1 x3)) (> x1_1 0)) (> x2_1 0)) (> x3_1 0)) (= x1_2 (- x1_1 d1_0))) (= x2_2 (- x2_1 d2_0))) (= x3_2 (- x3_1 d3_0))) (= x1_3 x1_2)) (= x2_3 x2_2)) (= x3_3 x3_2)) (= x1_3 x1!)) (= x2_3 x2!)) (= x3_3 x3!)) (= d1 d1_0)) (= d1! d1_0)) (= d2 d2_0)) (= d2! d2_0)) (= d3 d3_0)) (= d3! d3_0))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x1_1 x1) (= x2_1 x2)) (= x3_1 x3)) (> x1_1 0)) (> x2_1 0)) (not (> x3_1 0))) (= x1_3 x1_1)) (= x2_3 x2_1)) (= x3_3 x3_1)) (= x1_3 x1!)) (= x2_3 x2!)) (= x3_3 x3!)) (= d1 d1_0)) (= d1! d1_0)) (= d2 d2_0)) (= d2! d2_0)) (= d3 d3_0)) (= d3! d3_0))) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (= x1_1 x1) (= x2_1 x2)) (= x3_1 x3)) (> x1_1 0)) (not (> x2_1 0))) (= x1_3 x1_1)) (= x2_3 x2_1)) (= x3_3 x3_1)) (= x1_3 x1!)) (= x2_3 x2!)) (= x3_3 x3!)) (= d1 d1_0)) (= d1! d1_0)) (= d2 d2_0)) (= d2! d2_0)) (= d3 d3_0)) (= d3! d3_0))))
(define-fun post-f ((d1 Int) (d2 Int) (d3 Int) (x1 Int) (x2 Int) (x3 Int) (d1_0 Int) (d2_0 Int) (d3_0 Int) (x1_0 Int) (x1_1 Int) (x1_2 Int) (x1_3 Int) (x2_0 Int) (x2_1 Int) (x2_2 Int) (x2_3 Int) (x3_0 Int) (x3_1 Int) (x3_2 Int) (x3_3 Int)) Bool
    (or (not (and (and (and (and (and (= d1 d1_0) (= d2 d2_0)) (= d3 d3_0)) (= x1 x1_1)) (= x2 x2_1)) (= x3 x3_1))) (not (and (not (> x1_1 0)) (not (>= x2_1 0))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

