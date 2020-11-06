(set-logic LIA)

(synth-inv inv-f ((x Int) (m Int) (n Int)))

(define-fun pre-f ((x Int) (m Int) (n Int)) Bool
    (and (= x 0) (and (= m 0) (> n 0))))
(define-fun trans-f ((x Int) (m Int) (n Int) (x! Int) (m! Int) (n! Int)) Bool
    (or (and (>= x n) (and (= x! x) (and (= m! m) (= n! n)))) (or (and (< x n) (and (= x! (+ x 1)) (and (= m! x) (= n! n)))) (and (< x n) (and (= x! (+ x 1)) (and (= m! m) (= n! n)))))))
(define-fun post-f ((x Int) (m Int) (n Int)) Bool
    (=> (>= x n) (or (<= n 0) (and (<= 0 m) (< m n)))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

