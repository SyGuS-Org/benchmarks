(set-logic LIA)

(declare-primed-var size Int)
(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var z Int)
(declare-primed-var size_0 Int)
(declare-primed-var x_0 Int)
(declare-primed-var x_1 Int)
(declare-primed-var x_2 Int)
(declare-primed-var y_0 Int)
(declare-primed-var y_1 Int)
(declare-primed-var y_2 Int)
(declare-primed-var y_3 Int)
(declare-primed-var z_0 Int)
(synth-inv inv-f ((size Int) (x Int) (y Int) (z Int) (size_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (z_0 Int)))

(define-fun pre-f ((size Int) (x Int) (y Int) (z Int) (size_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (z_0 Int)) Bool
    (and (= x x_0) (= x_0 0)))
(define-fun trans-f ((size Int) (x Int) (y Int) (z Int) (size_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (z_0 Int) (size! Int) (x! Int) (y! Int) (z! Int) (size_0! Int) (x_0! Int) (x_1! Int) (x_2! Int) (y_0! Int) (y_1! Int) (y_2! Int) (y_3! Int) (z_0! Int)) Bool
    (or (or (and (and (and (and (and (and (and (= x_1 x) (= y_1 y)) (= x_1 x!)) (= y_1 y!)) (= size size_0)) (= size! size_0)) (= y y!)) (= z z!)) (and (and (and (and (and (and (and (and (and (and (and (and (= x_1 x) (= y_1 y)) (< x_1 size_0)) (= x_2 (+ x_1 1))) (<= z_0 y_1)) (= y_2 z_0)) (= y_3 y_2)) (= x_2 x!)) (= y_3 y!)) (= size size_0)) (= size! size_0)) (= z z_0)) (= z! z_0))) (and (and (and (and (and (and (and (and (and (and (and (= x_1 x) (= y_1 y)) (< x_1 size_0)) (= x_2 (+ x_1 1))) (not (<= z_0 y_1))) (= y_3 y_1)) (= x_2 x!)) (= y_3 y!)) (= size size_0)) (= size! size_0)) (= z z_0)) (= z! z_0))))
(define-fun post-f ((size Int) (x Int) (y Int) (z Int) (size_0 Int) (x_0 Int) (x_1 Int) (x_2 Int) (y_0 Int) (y_1 Int) (y_2 Int) (y_3 Int) (z_0 Int)) Bool
    (or (not (and (and (and (= size size_0) (= x x_1)) (= y y_1)) (= z z_0))) (not (and (and (not (< x_1 size_0)) (> size_0 0)) (not (>= z_0 y_1))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

