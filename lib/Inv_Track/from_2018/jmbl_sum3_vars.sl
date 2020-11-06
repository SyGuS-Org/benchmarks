(set-logic LIA)

(synth-inv InvF ((x Int) (sn Int) (v1 Int) (v2 Int) (v3 Int)))

(define-fun PreF ((x Int) (sn Int) (v1 Int) (v2 Int) (v3 Int)) Bool
    (and (= sn 0) (= x 0)))
(define-fun TransF ((x Int) (sn Int) (v1 Int) (v2 Int) (v3 Int) (x! Int) (sn! Int) (v1! Int) (v2! Int) (v3! Int)) Bool
    (and (= x! (+ x 1)) (= sn! (+ sn 1))))
(define-fun PostF ((x Int) (sn Int) (v1 Int) (v2 Int) (v3 Int)) Bool
    (or (= sn x) (= sn (- 1))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

