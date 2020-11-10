(set-logic LIA)

(synth-inv InvF ((x Int) (y Int)))

(define-fun PreF ((x Int) (y Int)) Bool
    (= x 1))
(define-fun TransF ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (and (and (<= x 10) (= y! (- 10 x))) (= x! (+ x 1))))
(define-fun PostF ((x Int) (y Int)) Bool
    (not (and (and (<= x 10) (= y (- 10 x))) (or (>= y 10) (> 0 y)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

