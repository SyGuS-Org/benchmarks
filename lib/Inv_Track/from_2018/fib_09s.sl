(set-logic LIA)

(synth-inv inv-f ((i Int) (pvlen Int) (t Int) (k Int) (n Int) (j Int) (turn Int)))

(define-fun pre-f ((i Int) (pvlen Int) (t Int) (k Int) (n Int) (j Int) (turn Int)) Bool
    (and (= k 0) (and (= i 0) (= turn 0))))
(define-fun trans-f ((i Int) (pvlen Int) (t Int) (k Int) (n Int) (j Int) (turn Int) (i! Int) (pvlen! Int) (t! Int) (k! Int) (n! Int) (j! Int) (turn! Int)) Bool
    (or (and (= turn 0) (and (= i! (+ i 1)) (and (= pvlen! pvlen) (and (= t! t) (and (= k! k) (and (= n! n) (and (= j! j) (= turn! 0)))))))) (or (and (= turn 0) (and (= i! (+ i 1)) (and (= pvlen! pvlen) (and (= t! t) (and (= k! k) (and (= n! n) (and (= j! j) (= turn! 1)))))))) (or (and (= turn 1) (and (> i pvlen) (and (= i! 0) (and (= pvlen! i) (and (= t! t) (and (= k! k) (and (= n! n) (and (= j! j) (= turn! 2))))))))) (or (and (= turn 1) (and (<= i pvlen) (and (= i! 0) (and (= pvlen! pvlen) (and (= t! t) (and (= k! k) (and (= n! n) (and (= j! j) (= turn! 2))))))))) (or (and (= turn 2) (and (= i! (+ i 1)) (and (= pvlen! pvlen) (and (= t! i) (and (= k! (+ k 1)) (and (= n! n) (and (= j! j) (= turn! 2)))))))) (or (and (= turn 2) (and (= i! (+ i 1)) (and (= pvlen! pvlen) (and (= t! i) (and (= k! (+ k 1)) (and (= n! n) (and (= j! j) (= turn! 3)))))))) (or (and (= turn 3) (and (= i! i) (and (= pvlen! pvlen) (and (= t! t) (and (= k! k) (and (= n! n) (and (= j! j) (= turn! 3)))))))) (or (and (= turn 3) (and (= i! i) (and (= pvlen! pvlen) (and (= t! t) (and (= k! k) (and (= n! n) (and (= j! j) (= turn! 4)))))))) (and (= turn 4) (and (= i! i) (and (= pvlen! pvlen) (and (= t! t) (and (= k! k) (and (= n! i) (and (= j! 0) (= turn! 5)))))))))))))))))
(define-fun post-f ((i Int) (pvlen Int) (t Int) (k Int) (n Int) (j Int) (turn Int)) Bool
    (>= k 0))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

