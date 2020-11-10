(set-logic LIA)

(synth-inv InvF ((x Int) (y Int)))

(define-fun PreF ((x Int) (y Int)) Bool
    (= x 1))
(define-fun TransF ((x Int) (y Int) (x! Int) (y! Int)) Bool
    (and (and (<= x 100) (= y! (- 100 x))) (= x! (+ x 1))))
(define-fun PostF ((x Int) (y Int)) Bool
    (not (and (and (<= x 100) (= y (- 100 x))) (or (>= y 100) (> 0 y)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

