(set-logic LIA)

(synth-inv InvF ((x Int) (y Int) (i Int) (z1 Int) (z2 Int) (z3 Int)))

(define-fun PreF ((x Int) (y Int) (i Int) (z1 Int) (z2 Int) (z3 Int)) Bool
    (and (and (and (= i 0) (>= x 0)) (>= y 0)) (>= x y)))
(define-fun TransF ((x Int) (y Int) (i Int) (z1 Int) (z2 Int) (z3 Int) (x! Int) (y! Int) (i! Int) (z1! Int) (z2! Int) (z3! Int)) Bool
    (and (and (< i y) (= i! (+ i 1))) (and (= y! y) (= x! x))))
(define-fun PostF ((x Int) (y Int) (i Int) (z1 Int) (z2 Int) (z3 Int)) Bool
    (not (and (< i y) (or (>= i x) (> 0 i)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

