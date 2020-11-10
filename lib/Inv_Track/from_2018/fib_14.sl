(set-logic LIA)

(synth-inv inv-f ((a Int) (j Int) (m Int)))

(define-fun pre-f ((a Int) (j Int) (m Int)) Bool
    (and (= a 0) (and (> m 0) (= j 1))))
(define-fun trans-f ((a Int) (j Int) (m Int) (a! Int) (j! Int) (m! Int)) Bool
    (or (and (> j m) (and (= a! a) (and (= j! j) (= m! m)))) (or (and (<= j m) (and (= j! (+ j 1)) (and (= a! (+ a 1)) (= m! m)))) (and (<= j m) (and (= j! (+ j 1)) (and (= a! (- a 1)) (= m! m)))))))
(define-fun post-f ((a Int) (j Int) (m Int)) Bool
    (=> (not (<= j m)) (and (>= a (- 0 m)) (<= a m))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

