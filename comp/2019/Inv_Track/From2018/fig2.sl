(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int) (z Int) (w Int)))

(declare-primed-var x Int)
(declare-primed-var y Int)
(declare-primed-var z Int)
(declare-primed-var w Int)
(define-fun pre-f ((x Int) (y Int) (z Int) (w Int)) Bool
    (and (and (and (= x 0) (= y 0)) (= z 0)) (= w 0)))
(define-fun trans-f ((x Int) (y Int) (z Int) (w Int) (x! Int) (y! Int) (z! Int) (w! Int)) Bool
    (or (or (and (and (and (= x! (+ x 1)) (= y! (+ y 2))) (= z! z)) (= w! w)) (and (and (and (and (>= x 4) (= x! (+ x 1))) (= y! (+ y 3))) (= z! (+ z 10))) (= w! (+ w 10)))) (and (and (and (and (and (>= x z) (> w y)) (= x! (- 0 x))) (= y! (- 0 y))) (= z! z)) (= w! w))))
(define-fun post-f ((x Int) (y Int) (z Int) (w Int)) Bool
    (>= (* 3 x) y))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

