(set-logic LIA)

(synth-inv inv-f ((x Int) (i Int) (j Int)))

(define-fun pre-f ((x Int) (i Int) (j Int)) Bool
    (and (= j 0) (and (> x 0) (= i 0))))
(define-fun trans-f ((x Int) (i Int) (j Int) (x! Int) (i! Int) (j! Int)) Bool
    (or (and (< i x) (and (= j! (+ j 2)) (and (= i! (+ i 1)) (= x! x)))) (and (>= i x) (and (= j! j) (and (= i! i) (= x! x))))))
(define-fun post-f ((x Int) (i Int) (j Int)) Bool
    (=> (not (< i x)) (= j (* 2 x))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

