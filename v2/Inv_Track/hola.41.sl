(set-logic LIA)
(synth-inv inv-f ((i Int) (j Int) (k Int) (n Int)) )




(define-fun pre-f ((i Int) (j Int) (k Int) (n Int)) Bool (and (or (= k 1) (>= k 0)) (and (>= n 0) (and (= i 0) (= j 0)))))
(define-fun trans-f ((i Int) (j Int) (k Int) (n Int) (i! Int) (j! Int) (k! Int) (n! Int)) Bool (and (<= i n) (and (= n! n) (and (= k! k) (and (= i! (+ i 1)) (= j! (+ j i)))))))
(define-fun post-f ((i Int) (j Int) (k Int) (n Int)) Bool (or (<= i n) (> (+ i (+ j k)) (* 2 n))))
(inv-constraint inv-f pre-f trans-f post-f )
(check-synth)
