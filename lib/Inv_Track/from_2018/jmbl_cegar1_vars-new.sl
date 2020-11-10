(set-logic LIA)

(synth-inv InvF ((x Int) (y Int) (z1 Int) (z2 Int) (z3 Int)))

(define-fun PreF ((x Int) (y Int) (z1 Int) (z2 Int) (z3 Int)) Bool
    (and (and (>= x 0) (and (<= x 10) (<= y 10))) (>= y 0)))
(define-fun TransF ((x Int) (y Int) (z1 Int) (z2 Int) (z3 Int) (x! Int) (y! Int) (z1! Int) (z2! Int) (z3! Int)) Bool
    (and (= x! (+ x 10)) (= y! (+ y 10))))
(define-fun PostF ((x Int) (y Int) (z1 Int) (z2 Int) (z3 Int)) Bool
    (not (and (= x 20) (= y 0))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

