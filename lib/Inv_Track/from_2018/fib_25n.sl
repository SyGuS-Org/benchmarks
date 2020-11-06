(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int) (i Int) (j Int) (turn Int)))

(define-fun pre-f ((x Int) (y Int) (i Int) (j Int) (turn Int)) Bool
    (and (= x 0) (and (= y 0) (and (= i 0) (and (= j 0) (= turn 0))))))
(define-fun trans-f ((x Int) (y Int) (i Int) (j Int) (turn Int) (x! Int) (y! Int) (i! Int) (j! Int) (turn! Int)) Bool
    (or (and (= turn 0) (and (= x! x) (and (= y! y) (and (= i! i) (and (= j! j) (= turn! 1)))))) (or (and (= turn 0) (and (= x! x) (and (= y! y) (and (= i! i) (and (= j! j) (= turn! 2)))))) (or (and (= turn 1) (and (= x y) (and (= x! x) (and (= y! y) (and (= i! (+ i 1)) (and (= j! j) (= turn! 1))))))) (or (and (= turn 1) (and (= x y) (and (= x! x) (and (= y! y) (and (= i! (+ i 1)) (and (= j! j) (= turn! 2))))))) (or (and (= turn 1) (and (not (= x y)) (and (= x! x) (and (= y! y) (and (= i! i) (and (= j! (+ j 1)) (= turn! 1))))))) (or (and (= turn 1) (and (not (= x y)) (and (= x! x) (and (= y! y) (and (= i! i) (and (= j! (+ j 1)) (= turn! 2))))))) (or (and (= turn 2) (and (>= i j) (and (= x! (+ x 1)) (and (= y! (+ y 1)) (and (= i! i) (and (= j! j) (= turn! 0))))))) (and (= turn 2) (and (< i j) (and (= x! x) (and (= y! (+ y 1)) (and (= i! i) (and (= j! j) (= turn! 0)))))))))))))))
(define-fun post-f ((x Int) (y Int) (i Int) (j Int) (turn Int)) Bool
    (>= i j))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

