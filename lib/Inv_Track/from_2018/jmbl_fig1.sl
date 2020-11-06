(set-logic LIA)

(synth-inv InvF ((x Int) (y Int)))

(define-fun PreF ((x Int) (y Int)) Bool
    (= x (- 50)))
(define-fun TransF ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (and (and (< x 0) (= x! (+ x y))) (= y! (+ y 1))))
(define-fun PostF ((x Int) (y Int)) Bool
    (not (and (>= x 0) (<= y 0))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

