(set-logic LIA)

(synth-inv InvF ((c Int) (n Int)))

(define-fun PreF ((c Int) (n Int)) Bool
    (and (= c 0) (> n 0)))
(define-fun TransF ((c Int) (n Int) (c! Int) (n! Int)) Bool
    (or (and (and (> c n) (= c! (+ c 1))) (= n! n)) (and (and (= c n) (= c! 1)) (= n! n))))
(define-fun PostF ((c Int) (n Int)) Bool
    (and (or (= c n) (and (>= c 0) (<= c n))) (or (not (= c n)) (> n (- 1)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

