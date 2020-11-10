(set-logic LIA)

(synth-inv inv-f ((x Int) (n Int)))

(define-fun pre-f ((x Int) (n Int)) Bool
    (and (> n 0) (= x 0)))
(define-fun trans-f ((x Int) (n Int) (x! Int) (n! Int)) Bool
    (or (and (>= x n) (and (= x! x) (= n! n))) (and (< x n) (and (= x! (+ x 1)) (= n! n)))))
(define-fun post-f ((x Int) (n Int)) Bool
    (=> (>= x n) (= x n)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

