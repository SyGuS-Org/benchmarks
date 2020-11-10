(set-logic LIA)

(synth-inv InvF ((m Int) (a Int) (j Int) (k Int)))

(define-fun PreF ((m Int) (a Int) (j Int) (k Int)) Bool
    (and (or (<= a m) (= j 0)) (and (< j 1) (= k 0))))
(define-fun TransF ((m Int) (a Int) (j Int) (k Int) (m! Int) (a! Int) (j! Int) (k! Int)) Bool
    (or (and (= j! j) (and (< k 1) (and (< m a!) (and (= m! a!) (= k! (+ k 1)))))) (and (= j! j) (and (< k 1) (and (> m a!) (= k! (+ k 1)))))))
(define-fun PostF ((m Int) (a Int) (j Int) (k Int)) Bool
    (or (< k 1) (or (< a m) (= j (- 1)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

