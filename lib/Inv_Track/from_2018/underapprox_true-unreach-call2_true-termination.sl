(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int)))

(define-fun pre-f ((x Int) (y Int)) Bool
    (and (= x 0) (= y 1)))
(define-fun trans-f ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (and (< x 6) (and (= x! (+ x 1)) (= y! (* y 2)))))
(define-fun post-f ((x Int) (y Int)) Bool
    (or (< x 6) (= x 6)))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

