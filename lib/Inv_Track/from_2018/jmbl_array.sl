(set-logic LIA)

(synth-inv InvF ((x Int) (y Int) (z Int)))

(define-fun PreF ((x Int) (y Int) (z Int)) Bool
    (= x 0))
(define-fun TransF ((x Int) (y Int) (z Int) (x! Int) (y! Int) (z! Int)) Bool
    (or (and (= x! (+ x 1)) (and (= y! z!) (and (<= z! y) (< x 5)))) (and (= x! (+ x 1)) (and (= y! y) (and (> z! y) (< x 5))))))
(define-fun PostF ((x Int) (y Int) (z Int)) Bool
    (not (and (>= x 5) (< z y))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

