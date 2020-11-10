(set-logic LIA)

(synth-inv InvF ((x Int) (y Int) (z Int) (v1 Int) (v2 Int) (v3 Int) (size Int)))

(define-fun PreF ((x Int) (y Int) (z Int) (v1 Int) (v2 Int) (v3 Int) (size Int)) Bool
    (= x 0))
(define-fun TransF ((x Int) (y Int) (z Int) (v1 Int) (v2 Int) (v3 Int) (size Int) (x! Int) (y! Int) (z! Int) (v1! Int) (v2! Int) (v3! Int) (size! Int)) Bool
    (or (and (= x! (+ x 1)) (and (= y! z!) (and (<= z! y) (< x size)))) (and (= x! (+ x 1)) (and (= y! y) (and (> z! y) (< x size))))))
(define-fun PostF ((x Int) (y Int) (z Int) (v1 Int) (v2 Int) (v3 Int) (size Int)) Bool
    (not (and (and (>= x size) (< z y)) (> size 0))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

