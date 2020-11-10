(set-logic LIA)

(synth-inv InvF ((x Int) (y Int) (i Int) (j Int)))

(define-fun PreF ((x Int) (y Int) (i Int) (j Int)) Bool
    (and (= j 0) (and (= i 0) (and (= x 0) (= y 0)))))
(define-fun TransF ((x Int) (y Int) (i Int) (j Int) (x! Int) (y! Int) (i! Int) (j! Int)) Bool
    (and (= x! (+ x 1)) (and (= y! (+ y 1)) (and (= i! (+ i (+ x 1))) (or (= j! (+ j (+ y 1))) (= j! (+ j (+ y 2))))))))
(define-fun PostF ((x Int) (y Int) (i Int) (j Int)) Bool
    (>= j i))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

