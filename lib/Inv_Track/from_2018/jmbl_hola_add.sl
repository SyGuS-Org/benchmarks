(set-logic LIA)

(synth-inv InvF ((x Int) (y Int) (n Int)))

(define-fun PreF ((x Int) (y Int) (n Int)) Bool
    (and (>= n 0) (and (= x n) (= y 0))))
(define-fun TransF ((x Int) (y Int) (n Int) (x! Int) (y! Int) (n! Int)) Bool
    (and (> x 0) (and (= n! n) (and (= y! (+ y 1)) (= x! (- x 1))))))
(define-fun PostF ((x Int) (y Int) (n Int)) Bool
    (or (> x 0) (= n (+ x y))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

