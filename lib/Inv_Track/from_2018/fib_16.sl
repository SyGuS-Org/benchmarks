(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int) (i Int) (j Int)))

(define-fun pre-f ((x Int) (y Int) (i Int) (j Int)) Bool
    (and (= x i) (= y j)))
(define-fun trans-f ((x Int) (y Int) (i Int) (j Int) (x! Int) (y! Int) (i! Int) (j! Int)) Bool
    (or (and (not (= x 0)) (and (= x! (- x 1)) (and (= y! (- y 1)) (and (= i! i) (= j! j))))) (and (= x 0) (and (= x! x) (and (= y! y) (and (= i! i) (= j! j)))))))
(define-fun post-f ((x Int) (y Int) (i Int) (j Int)) Bool
    (=> (= x 0) (or (not (= i j)) (= y 0))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

