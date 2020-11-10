(set-logic LIA)

(synth-inv InvF ((c Int) (n Int) (v1 Int) (v2 Int) (v3 Int)))

(define-fun PreF ((c Int) (n Int) (v1 Int) (v2 Int) (v3 Int)) Bool
    (and (= c 0) (> n 0)))
(define-fun TransF ((c Int) (n Int) (v1 Int) (v2 Int) (v3 Int) (c! Int) (n! Int) (v1! Int) (v2! Int) (v3! Int)) Bool
    (or (and (not (= c n)) (= c! (+ c 1))) (and (= c n) (= c! 1))))
(define-fun PostF ((c Int) (n Int) (v1 Int) (v2 Int) (v3 Int)) Bool
    (not (or (and (not (= c n)) (or (< c 0) (> c n))) (and (= c n) (> n (- 1))))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

