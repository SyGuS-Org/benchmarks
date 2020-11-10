(set-logic LIA)

(synth-inv InvF ((x Int) (y Int)))

(define-fun PreF ((x Int) (y Int)) Bool
    (and (= x 0) (= y 0)))
(define-fun TransF ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (and (= x! x) (and (<= 0 y) (= y! (+ x y)))))
(define-fun PostF ((x Int) (y Int)) Bool
    (>= y 0))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

