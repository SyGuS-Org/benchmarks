(set-logic LIA)

(synth-inv InvF ((i Int) (j Int) (k Int) (m Int) (n Int) (x Int) (y Int)))

(define-fun PreF ((i Int) (j Int) (k Int) (m Int) (n Int) (x Int) (y Int)) Bool
    (and (= k (+ x y)) (and (= m 0) (= j 0))))
(define-fun TransF ((i Int) (j Int) (k Int) (m Int) (n Int) (x Int) (y Int) (i! Int) (j! Int) (k! Int) (m! Int) (n! Int) (x! Int) (y! Int)) Bool
    (and (< j n) (and (= i! i) (and (= k! k) (and (= n! n) (and (= j! (+ j 1)) (and (or (= m! m) (= m! j)) (or (and (= j i) (and (= x! (+ x 1)) (= y! (- y 1)))) (and (not (= j i)) (and (= x! (- x 1)) (= y! (+ y 1))))))))))))
(define-fun PostF ((i Int) (j Int) (k Int) (m Int) (n Int) (x Int) (y Int)) Bool
    (and (= k (+ x y)) (or (not (> n 0)) (and (<= 0 m) (< m n)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

