(set-logic LIA)

(synth-inv inv-f ((n Int) (m Int) (x Int) (y Int)))

(define-fun pre-f ((n Int) (m Int) (x Int) (y Int)) Bool
    (and (>= n 0) (and (>= m 0) (and (< m n) (and (= x 0) (= y m))))))
(define-fun trans-f ((n Int) (m Int) (x Int) (y Int) (n! Int) (m! Int) (x! Int) (y! Int)) Bool
    (or (and (< x n) (and (<= (+ x 1) m) (and (= x! (+ x 1)) (and (= y! y) (and (= n! n) (= m! m)))))) (or (and (< x n) (and (> (+ x 1) m) (and (= x! (+ x 1)) (and (= y! (+ y 1)) (and (= n! n) (= m! m)))))) (and (>= x n) (and (= x! x) (and (= y! y) (and (= n! n) (= m! m))))))))
(define-fun post-f ((n Int) (m Int) (x Int) (y Int)) Bool
    (=> (not (< x n)) (= y n)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

