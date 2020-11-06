(set-logic LIA)

(synth-inv inv-f ((k Int) (i Int) (j Int) (n Int) (turn Int)))

(define-fun pre-f ((k Int) (i Int) (j Int) (n Int) (turn Int)) Bool
    (and (= k 1) (and (= i 1) (and (= j 0) (= turn 0)))))
(define-fun trans-f ((k Int) (i Int) (j Int) (n Int) (turn Int) (k! Int) (i! Int) (j! Int) (n! Int) (turn! Int)) Bool
    (or (and (= turn 0) (and (< i n) (and (= k! k) (and (= i! i) (and (= j! 0) (and (= n! n) (= turn! 1))))))) (or (and (= turn 0) (and (>= i n) (and (= k! k) (and (= i! i) (and (= j! j) (and (= n! n) (= turn! 3))))))) (or (and (= turn 1) (and (< j i) (and (= k! (- (+ k i) j)) (and (= i! i) (and (= j! (+ j 1)) (and (= n! n) (= turn! turn))))))) (or (and (= turn 1) (and (>= j i) (and (= k! k) (and (= i! i) (and (= j! j) (and (= n! n) (= turn! 2))))))) (or (and (= turn 2) (and (= k! k) (and (= i! (+ i 1)) (and (= j! j) (and (= n! n) (= turn! 0)))))) (or (and (>= turn 3) (and (= k! k) (and (= i! i) (and (= j! j) (and (= n! n) (= turn! turn)))))) (and (< turn 0) (and (= k! k) (and (= i! i) (and (= j! j) (and (= n! n) (= turn! turn)))))))))))))
(define-fun post-f ((k Int) (i Int) (j Int) (n Int) (turn Int)) Bool
    (=> (= turn 3) (>= k n)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

