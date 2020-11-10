(set-logic LIA)

(synth-inv InvF ((y Int) (z Int) (c Int) (x1 Int) (x2 Int) (x3 Int)))

(define-fun PreF ((y Int) (z Int) (c Int) (x1 Int) (x2 Int) (x3 Int)) Bool
    (and (and (= c 0) (>= y 0)) (and (>= 127 y) (= z (* 36 y)))))
(define-fun TransF ((y Int) (z Int) (c Int) (x1 Int) (x2 Int) (x3 Int) (y! Int) (z! Int) (c! Int) (x1! Int) (x2! Int) (x3! Int)) Bool
    (and (and (and (< c 36) (= z! (+ z 1))) (= c! (+ c 1))) (= y! y)))
(define-fun PostF ((y Int) (z Int) (c Int) (x1 Int) (x2 Int) (x3 Int)) Bool
    (not (and (< c 36) (or (< z 0) (>= z 4608)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

