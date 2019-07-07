(set-logic LIA)

(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var x_0 Int)
(declare-primed-var y_0 Int)
(declare-primed-var y_1 Int)
(declare-primed-var y_2 Int)
(synth-inv inv-f ((x Int) (y Int) (x_0 Int) (y_0 Int) (y_1 Int) (y_2 Int)))

(define-fun pre-f ((x Int) (y Int) (x_0 Int) (y_0 Int) (y_1 Int) (y_2 Int)) Bool
    (and (and (and (= x x_0) (= y y_0)) (= x_0 0)) (= y_0 0)))
(define-fun trans-f ((x Int) (y Int) (x_0 Int) (y_0 Int) (y_1 Int) (y_2 Int) (x! Int) (y! Int) (x_0! Int) (y_0! Int) (y_1! Int) (y_2! Int)) Bool
    (or (and (and (= y_1 y) (= y_1 y!)) (= x x!)) (and (and (and (and (and (= y_1 y) (>= y_1 0)) (= y_2 (+ y_1 x_0))) (= y_2 y!)) (= x x_0)) (= x! x_0))))
(define-fun post-f ((x Int) (y Int) (x_0 Int) (y_0 Int) (y_1 Int) (y_2 Int)) Bool
    (or (not (and (= x x_0) (= y y_1))) (not (and (not (>= y_1 0)) (not (>= y_1 0))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

