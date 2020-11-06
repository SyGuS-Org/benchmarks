(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int)))

(define-fun pre-f ((x Int) (y Int)) Bool
    (= x (- 50)))
(define-fun trans-f ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (or (and (< x 0) (and (= x! (+ x y)) (= y! (+ y 1)))) (and (>= x 0) (and (= x! x) (= y! y)))))
(define-fun post-f ((x Int) (y Int)) Bool
    (=> (not (< x 0)) (>= y 0)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

