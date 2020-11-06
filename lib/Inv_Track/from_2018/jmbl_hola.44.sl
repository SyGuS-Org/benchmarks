(set-logic LIA)

(synth-inv InvF ((x Int) (y Int) (i Int) (j Int)))

(define-fun PreF ((x Int) (y Int) (i Int) (j Int)) Bool
    (and (= j 0) (and (= i 0) (or (= y 1) (= y 2)))))
(define-fun TransF ((x Int) (y Int) (i Int) (j Int) (x! Int) (y! Int) (i! Int) (j! Int)) Bool
    (and (<= i x) (and (= x! x) (and (= y! y) (and (= i! (+ i 1)) (= j! (+ j y)))))))
(define-fun PostF ((x Int) (y Int) (i Int) (j Int)) Bool
    (or (<= i x) (or (not (= y 1)) (= i j))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

