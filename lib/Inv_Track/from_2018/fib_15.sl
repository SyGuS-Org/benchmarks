(set-logic LIA)

(synth-inv inv-f ((n Int) (j Int) (k Int)))

(define-fun pre-f ((n Int) (j Int) (k Int)) Bool
    (and (= j 0) (and (> n 0) (> k n))))
(define-fun trans-f ((n Int) (j Int) (k Int) (n! Int) (j! Int) (k! Int)) Bool
    (or (and (< j n) (and (= j! (+ j 1)) (and (= k! (- k 1)) (= n! n)))) (and (>= j n) (and (= j! j) (and (= k! k) (= n! n))))))
(define-fun post-f ((n Int) (j Int) (k Int)) Bool
    (=> (not (< j n)) (>= k 0)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

