(set-logic LIA)

(synth-inv inv-f ((i Int) (t Int) (x Int) (y Int)))

(define-fun pre-f ((i Int) (t Int) (x Int) (y Int)) Bool
    (and (not (= x y)) (and (= i 0) (= t y))))
(define-fun trans-f ((i Int) (t Int) (x Int) (y Int) (i! Int) (t! Int) (x! Int) (y! Int)) Bool
    (or (and (> x 0) (and (= i! i) (and (= t! t) (and (= x! x) (= y! (+ x y)))))) (and (<= x 0) (and (= i! i) (and (= t! t) (and (= x! x) (= y! y)))))))
(define-fun post-f ((i Int) (t Int) (x Int) (y Int)) Bool
    (>= y t))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

