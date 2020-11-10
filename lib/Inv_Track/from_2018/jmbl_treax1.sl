(set-logic LIA)

(synth-inv InvF ((x Int) (y Int)))

(define-fun PreF ((x Int) (y Int)) Bool
    (= x 1))
(define-fun TransF ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (and (< x y) (= x! (+ x x))))
(define-fun PostF ((x Int) (y Int)) Bool
    (or (not (>= x y)) (>= x 1)))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

