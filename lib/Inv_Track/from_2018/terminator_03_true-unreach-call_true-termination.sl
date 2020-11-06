(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int)))

(define-fun pre-f ((x Int) (y Int)) Bool
    (<= y 1000000))
(define-fun trans-f ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (and (< x 100) (> y 0) (= x! (+ x y)) (= y! y)))
(define-fun post-f ((x Int) (y Int)) Bool
    (=> (or (<= y 0) (and (> y 0) (>= x 100))) (or (<= y 0) (and (> y 0) (>= x 100)))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

