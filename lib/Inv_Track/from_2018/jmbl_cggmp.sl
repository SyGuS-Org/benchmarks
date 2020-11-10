(set-logic LIA)

(synth-inv InvF ((i Int) (j Int)))

(define-fun PreF ((i Int) (j Int)) Bool
    (and (= i 1) (= j 10)))
(define-fun TransF ((i Int) (j Int) (i! Int) (j! Int)) Bool
    (and (and (>= j i) (= i! (+ i 2))) (= j! (- j 1))))
(define-fun PostF ((i Int) (j Int)) Bool
    (not (and (< j i) (not (= j 6)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

