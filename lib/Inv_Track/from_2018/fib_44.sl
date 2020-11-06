(set-logic LIA)

(synth-inv inv-f ((i Int) (j Int) (n Int) (k Int)))

(define-fun pre-f ((i Int) (j Int) (n Int) (k Int)) Bool
    (and (or (= n 1) (= n 2)) (and (= i 0) (= j 0))))
(define-fun trans-f ((i Int) (j Int) (n Int) (k Int) (i! Int) (j! Int) (n! Int) (k! Int)) Bool
    (or (and (> i k) (and (= i! i) (and (= j! j) (and (= n! n) (= k! k))))) (and (<= i k) (and (= i! (+ i 1)) (and (= j! (+ j n)) (and (= n! n) (= k! k)))))))
(define-fun post-f ((i Int) (j Int) (n Int) (k Int)) Bool
    (=> (> i k) (or (not (= n 1)) (= i j))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

