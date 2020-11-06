(set-logic LIA)

(synth-inv inv-f ((i Int) (j Int) (k Int) (c1 Int) (c2 Int) (n Int) (v Int)))

(define-fun pre-f ((i Int) (j Int) (k Int) (c1 Int) (c2 Int) (n Int) (v Int)) Bool
    (and (> n 0) (and (< n 10) (and (= k 0) (and (= i 0) (and (= c1 4000) (= c2 2000)))))))
(define-fun trans-f ((i Int) (j Int) (k Int) (c1 Int) (c2 Int) (n Int) (v Int) (i! Int) (j! Int) (k! Int) (c1! Int) (c2! Int) (n! Int) (v! Int)) Bool
    (or (and (>= i n) (and (= i! i) (and (= j! j) (and (= k! k) (and (= c1! c1) (and (= c2! c2) (and (= n! n) (= v! v)))))))) (or (and (< i n) (and (= i! (+ i 1)) (and (= j! j) (and (= k! (+ k c1)) (and (= c1! c1) (and (= c2! c2) (and (= n! n) (= v! 0)))))))) (and (< i n) (and (= i! (+ i 1)) (and (= j! j) (and (= k! (+ k c2)) (and (= c1! c1) (and (= c2! c2) (and (= n! n) (= v! 1)))))))))))
(define-fun post-f ((i Int) (j Int) (k Int) (c1 Int) (c2 Int) (n Int) (v Int)) Bool
    (=> (>= i n) (> k n)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

