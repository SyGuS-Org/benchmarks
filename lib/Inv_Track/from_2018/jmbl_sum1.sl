(set-logic LIA)

(synth-inv InvF ((i Int) (n Int) (sn Int)))

(define-fun PreF ((i Int) (n Int) (sn Int)) Bool
    (and (= sn 0) (= i 1)))
(define-fun TransF ((i Int) (n Int) (sn Int) (i! Int) (n! Int) (sn! Int)) Bool
    (and (= n! n) (and (= i! (+ i 1)) (and (<= i n) (= sn! (+ sn 1))))))
(define-fun PostF ((i Int) (n Int) (sn Int)) Bool
    (or (<= i n) (or (= sn n) (= sn 0))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

