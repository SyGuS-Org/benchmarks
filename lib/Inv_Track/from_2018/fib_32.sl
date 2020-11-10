(set-logic LIA)

(synth-inv inv-f ((k Int) (b Int) (i Int) (j Int) (n Int)))

(define-fun pre-f ((k Int) (b Int) (i Int) (j Int) (n Int)) Bool
    (and (> k 0) (and (= i j) (and (= n 0) (or (= b 1) (= b 0))))))
(define-fun trans-f ((k Int) (b Int) (i Int) (j Int) (n Int) (k! Int) (b! Int) (i! Int) (j! Int) (n! Int)) Bool
    (or (and (>= n (* 2 k)) (and (= k! k) (and (= b! b) (and (= i! i) (and (= j! j) (= n! n)))))) (or (and (< n (* 2 k)) (and (= b 1) (and (= k! k) (and (= b! 0) (and (= i! (+ i 1)) (and (= j! j) (= n! (+ n 1)))))))) (and (< n (* 2 k)) (and (not (= b 1)) (and (= k! k) (and (= b! 1) (and (= i! i) (and (= j! (+ j 1)) (= n! (+ n 1)))))))))))
(define-fun post-f ((k Int) (b Int) (i Int) (j Int) (n Int)) Bool
    (=> (>= n (* 2 k)) (= i j)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

