(set-logic LIA)

(synth-inv inv-f ((x Int) (m Int) (n Int)))

(define-fun pre-f ((x Int) (m Int) (n Int)) Bool
    (and (= x 0) (= m 0)))
(define-fun trans-f ((x Int) (m Int) (n Int) (x! Int) (m! Int) (n! Int)) Bool
    (and (< x n) (or (= m! x) (= m! m)) (= n! n) (= x! (+ x 1))))
(define-fun post-f ((x Int) (m Int) (n Int)) Bool
    (and (or (>= m 0) (<= n 0)) (or (< m n) (<= n 0))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

