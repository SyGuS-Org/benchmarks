(set-logic LIA)

(synth-inv InvF ((x Int) (y Int)))

(define-fun PreF ((x Int) (y Int)) Bool
    (and (and (>= x 0) (and (<= x 2) (<= y 2))) (>= y 0)))
(define-fun TransF ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (and (= x! (+ x 2)) (= y! (+ y 2))))
(define-fun PostF ((x Int) (y Int)) Bool
    (not (and (= x 4) (= y 0))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

