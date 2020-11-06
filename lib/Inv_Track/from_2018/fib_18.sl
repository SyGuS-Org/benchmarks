(set-logic LIA)

(synth-inv inv-f ((b Int) (j Int) (n Int) (flag Int)))

(define-fun pre-f ((b Int) (j Int) (n Int) (flag Int)) Bool
    (and (= j 0) (and (> n 0) (= b 0))))
(define-fun trans-f ((b Int) (j Int) (n Int) (flag Int) (b! Int) (j! Int) (n! Int) (flag! Int)) Bool
    (or (and (< b n) (and (= flag 1) (and (= j! (+ j 1)) (and (= b! (+ b 1)) (and (= n! n) (= flag! flag)))))) (or (and (< b n) (and (not (= flag 1)) (and (= j! j) (and (= b! (+ b 1)) (and (= n! n) (= flag! flag)))))) (and (>= b n) (and (= j! j) (and (= b! b) (and (= n! n) (= flag! flag))))))))
(define-fun post-f ((b Int) (j Int) (n Int) (flag Int)) Bool
    (=> (not (< b n)) (or (not (= flag 1)) (= j n))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

