(set-logic LIA)

(synth-inv InvF ((x Int)))

(define-fun PreF ((x Int)) Bool
    (= x 10000))
(define-fun TransF ((x Int) (x! Int)) Bool
    (and (> x 0) (= x! (- x 1))))
(define-fun PostF ((x Int)) Bool
    (not (and (<= x 0) (not (= x 0)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

