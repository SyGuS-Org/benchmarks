(set-logic LIA)

(synth-inv InvF ((m Int) (a Int) (j Int) (k Int) (r Int) (c Int)))

(define-fun PreF ((m Int) (a Int) (j Int) (k Int) (r Int) (c Int)) Bool
    (and (or (<= a m) (= j 0)) (and (< j r) (= k 0))))
(define-fun TransF ((m Int) (a Int) (j Int) (k Int) (r Int) (c Int) (m! Int) (a! Int) (j! Int) (k! Int) (r! Int) (c! Int)) Bool
    (or (and (and (= j! j) (and (= r! r) (= c! c))) (and (< k c) (and (< m a!) (and (= m! a!) (= k! (+ k 1)))))) (and (= j! j) (and (= r! r) (and (= c! c) (and (< k c) (and (> m a!) (= k! (+ k 1)))))))))
(define-fun PostF ((m Int) (a Int) (j Int) (k Int) (r Int) (c Int)) Bool
    (or (< k c) (or (<= a m) (= j (- 1)))))

(inv-constraint InvF PreF TransF PostF)

(check-synth)

