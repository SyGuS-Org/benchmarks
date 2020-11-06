(set-logic LIA)

(synth-inv InvF ((x Int) (n Int)))

(define-fun PreF ((x Int) (n Int)) Bool
    (and (= x 0) (>= n 0)))
(define-fun TransF ((x Int) (n Int) (x! Int) (n! Int)) Bool
    (and (= n! n) (and (< x n) (= x! (+ x 1)))))
(define-fun PostF ((x Int) (n Int)) Bool
    (or (not (>= x n)) (= x n)))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

