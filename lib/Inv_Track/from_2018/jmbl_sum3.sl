(set-logic LIA)

(synth-inv InvF ((x Int) (sn Int)))

(define-fun PreF ((x Int) (sn Int)) Bool
    (and (= sn 0) (= x 0)))
(define-fun TransF ((x Int) (sn Int) (x! Int) (sn! Int)) Bool
    (and (= x! (+ x 1)) (= sn! (+ sn 1))))
(define-fun PostF ((x Int) (sn Int)) Bool
    (or (= sn x) (= sn (- 1))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

