(set-logic LIA)

(synth-inv InvF ((c Int)))

(define-fun PreF ((c Int)) Bool
    (= c 0))
(define-fun TransF ((c Int) (c! Int)) Bool
    (or (and (not (= c 40)) (= c! (+ c 1))) (and (= c 40) (= c! 1))))
(define-fun PostF ((c Int)) Bool
    (not (and (not (= c 40)) (or (< c 0) (> c 40)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

