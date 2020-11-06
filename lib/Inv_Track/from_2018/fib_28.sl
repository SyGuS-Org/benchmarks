(set-logic LIA)

(synth-inv inv-f ((n Int) (x Int) (y Int)))

(define-fun pre-f ((n Int) (x Int) (y Int)) Bool
    (and (= n 0) (and (>= x 0) (and (>= y 0) (= x y)))))
(define-fun trans-f ((n Int) (x Int) (y Int) (n! Int) (x! Int) (y! Int)) Bool
    (or (and (= x n) (and (= n! n) (and (= x! x) (= y! y)))) (and (not (= x n)) (and (= n! n) (and (= x! (- x 1)) (= y! (- y 1)))))))
(define-fun post-f ((n Int) (x Int) (y Int)) Bool
    (=> (= x n) (= y n)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

