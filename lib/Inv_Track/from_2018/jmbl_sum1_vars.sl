(set-logic LIA)

(synth-inv InvF ((i Int) (n Int) (sn Int) (v1 Int) (v2 Int) (v3 Int)))

(define-fun PreF ((i Int) (n Int) (sn Int) (v1 Int) (v2 Int) (v3 Int)) Bool
    (and (= sn 0) (= i 1)))
(define-fun TransF ((i Int) (n Int) (sn Int) (v1 Int) (v2 Int) (v3 Int) (i! Int) (n! Int) (sn! Int) (v1! Int) (v2! Int) (v3! Int)) Bool
    (and (= n! n) (and (= i! (+ i 1)) (and (<= i n) (= sn! (+ sn 1))))))
(define-fun PostF ((i Int) (n Int) (sn Int) (v1 Int) (v2 Int) (v3 Int)) Bool
    (or (<= i n) (or (= sn n) (= sn 0))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

