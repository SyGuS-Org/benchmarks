(set-logic LIA)

(synth-inv inv-f ((i Int) (sum Int) (n Int)))

(define-fun pre-f ((i Int) (sum Int) (n Int)) Bool
    (and (= sum 0) (and (>= n 0) (= i 0))))
(define-fun trans-f ((i Int) (sum Int) (n Int) (i! Int) (sum! Int) (n! Int)) Bool
    (or (and (< i n) (and (= i! (+ i 1)) (and (= sum! (+ sum i)) (= n! n)))) (and (>= i n) (and (= i! i) (and (= sum! sum) (= n! n))))))
(define-fun post-f ((i Int) (sum Int) (n Int)) Bool
    (=> (>= i n) (>= sum 0)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

