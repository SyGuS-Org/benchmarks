(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int) (k Int) (j Int) (i Int) (n Int) (m Int)))

(define-fun pre-f ((x Int) (y Int) (k Int) (j Int) (i Int) (n Int) (m Int)) Bool
    (and (= (+ x y) k) (and (= m 0) (= j 0))))
(define-fun trans-f ((x Int) (y Int) (k Int) (j Int) (i Int) (n Int) (m Int) (x! Int) (y! Int) (k! Int) (j! Int) (i! Int) (n! Int) (m! Int)) Bool
    (or (and (< j n) (and (= j i) (and (= x! (+ x 1)) (and (= y! (- y 1)) (and (= k! k) (and (= j! (+ j 1)) (and (= i! i) (and (= n! n) (= m! m))))))))) (or (and (< j n) (and (= j i) (and (= x! (+ x 1)) (and (= y! (- y 1)) (and (= k! k) (and (= j! (+ j 1)) (and (= i! i) (and (= n! n) (= m! j))))))))) (or (and (< j n) (and (not (= j i)) (and (= x! (- x 1)) (and (= y! (+ y 1)) (and (= k! k) (and (= j! (+ j 1)) (and (= i! i) (and (= n! n) (= m! m))))))))) (or (and (< j n) (and (not (= j i)) (and (= x! (- x 1)) (and (= y! (+ y 1)) (and (= k! k) (and (= j! (+ j 1)) (and (= i! i) (and (= n! n) (= m! j))))))))) (and (>= j n) (and (= x! x) (and (= y! y) (and (= k! k) (and (= j! j) (and (= i! i) (and (= n! n) (= m! m)))))))))))))
(define-fun post-f ((x Int) (y Int) (k Int) (j Int) (i Int) (n Int) (m Int)) Bool
    (=> (>= j n) (and (= (+ x y) k) (and (or (<= n 0) (<= 0 m)) (or (<= n 0) (<= m n))))))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

