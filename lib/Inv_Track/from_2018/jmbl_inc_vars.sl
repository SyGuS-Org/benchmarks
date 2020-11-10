(set-logic LIA)

(synth-inv InvF ((x Int) (n Int) (v1 Int) (v2 Int) (v3 Int)))

(define-fun PreF ((x Int) (n Int) (v1 Int) (v2 Int) (v3 Int)) Bool
    (= x 0))
(define-fun TransF ((x Int) (n Int) (v1 Int) (v2 Int) (v3 Int) (x! Int) (n! Int) (v1! Int) (v2! Int) (v3! Int)) Bool
    (and (= n! n) (and (< x n) (= x! (+ x 1)))))
(define-fun PostF ((x Int) (n Int) (v1 Int) (v2 Int) (v3 Int)) Bool
    (or (not (>= x n)) (or (= x n) (< n 0))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

