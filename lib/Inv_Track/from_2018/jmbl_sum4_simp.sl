(set-logic LIA)

(synth-inv InvF ((i Int) (sn Int) (size Int)))

(define-fun PreF ((i Int) (sn Int) (size Int)) Bool
    (and (= sn 0) (= i 1)))
(define-fun TransF ((i Int) (sn Int) (size Int) (i! Int) (sn! Int) (size! Int)) Bool
    (and (= size! size) (and (= i! (+ i 1)) (and (<= i size) (= sn! (+ sn 1))))))
(define-fun PostF ((i Int) (sn Int) (size Int)) Bool
    (or (<= i size) (or (= sn size) (= sn 0))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

