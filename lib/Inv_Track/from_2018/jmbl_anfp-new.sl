(set-logic LIA)

(synth-inv InvF ((x Int) (y Int)))

(define-fun PreF ((x Int) (y Int)) Bool
    (and (= x 1) (= y 0)))
(define-fun TransF ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (and (and (< y 100000) (= x! (+ x y))) (= y! (+ y 1))))
(define-fun PostF ((x Int) (y Int)) Bool
    (not (and (>= y 100000) (< x y))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

