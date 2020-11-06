(set-logic LIA)

(synth-inv inv-f ((n Int) (k Int) (i Int) (j Int)))

(define-fun pre-f ((n Int) (k Int) (i Int) (j Int)) Bool
    (and (= j 0) (and (>= n 0) (and (= i 0) (or (= k 1) (>= k 0))))))
(define-fun trans-f ((n Int) (k Int) (i Int) (j Int) (n! Int) (k! Int) (i! Int) (j! Int)) Bool
    (or (and (> i n) (and (= n! n) (and (= k! k) (and (= i! i) (= j! j))))) (and (<= i n) (and (= n! n) (and (= k! k) (and (= i! (+ i 1)) (= j! (+ j 1))))))))
(define-fun post-f ((n Int) (k Int) (i Int) (j Int)) Bool
    (=> (> i n) (> (+ k (+ i j)) (* 2 n))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

