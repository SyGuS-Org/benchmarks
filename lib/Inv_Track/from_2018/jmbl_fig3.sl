(set-logic LIA)

(synth-inv InvF ((x Int) (y Int) (lock Int)))

(define-fun PreF ((x Int) (y Int) (lock Int)) Bool
    (or (and (= x y) (= lock 1)) (and (= (+ x 1) y) (= lock 0))))
(define-fun TransF ((x Int) (y Int) (lock Int) (x! Int) (y! Int) (lock! Int)) Bool
    (or (and (and (not (= x y)) (= lock! 1)) (= x! y)) (and (and (and (not (= x y)) (= lock! 0)) (= x! y)) (= y! (+ y 1)))))
(define-fun PostF ((x Int) (y Int) (lock Int)) Bool
    (not (and (= x y) (not (= lock 1)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

