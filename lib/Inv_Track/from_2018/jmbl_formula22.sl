(set-logic LIA)

(synth-inv InvF ((x1 Int) (x2 Int) (x3 Int)))

(define-fun PreF ((x1 Int) (x2 Int) (x3 Int)) Bool
    (and (= x1 0) (and (= x2 0) (= x3 0))))
(define-fun TransF ((x1 Int) (x2 Int) (x3 Int) (x1! Int) (x2! Int) (x3! Int)) Bool
    (and (<= x1! x2!) (or (>= x2! 0) (<= (- x2! x3!) 2))))
(define-fun PostF ((x1 Int) (x2 Int) (x3 Int)) Bool
    (and (<= x1 x2) (or (>= x2 0) (<= (- x2 x3) 2))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

