(set-logic LIA)

(synth-inv InvF ((x Int) (n Int)))

(define-fun PreF ((x Int) (n Int)) Bool
    (= x n))
(define-fun TransF ((x Int) (n Int) (x! Int) (n! Int)) Bool
    (and (and (> x 1) (= x! (- x 1))) (= n! n)))
(define-fun PostF ((x Int) (n Int)) Bool
    (not (and (<= x 1) (and (not (= x 1)) (>= n 0)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

