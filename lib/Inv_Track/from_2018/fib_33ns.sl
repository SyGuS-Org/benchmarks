(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int) (z Int) (c Int) (k Int) (turn Int)))

(define-fun pre-f ((x Int) (y Int) (z Int) (c Int) (k Int) (turn Int)) Bool
    (and (= z k) (and (= x 0) (and (= y 0) (= turn 0)))))
(define-fun trans-f ((x Int) (y Int) (z Int) (c Int) (k Int) (turn Int) (x! Int) (y! Int) (z! Int) (c! Int) (k! Int) (turn! Int)) Bool
    (or (and (= turn 0) (and (= x! x) (and (= y! y) (and (= z! z) (and (= c! 0) (and (= k! k) (= turn! 1))))))) (or (and (= turn 0) (and (= x! x) (and (= y! y) (and (= z! z) (and (= c! 0) (and (= k! k) (= turn! 2))))))) (or (and (= turn 1) (and (= z (- (+ k y) c)) (and (= x! (+ x 1)) (and (= y! (+ y 1)) (and (= z! z) (and (= c! (+ c 1)) (and (= k! k) (= turn! 1)))))))) (or (and (= turn 1) (and (not (= z (- (+ k y) c))) (and (= x! (+ x 1)) (and (= y! (- y 1)) (and (= z! z) (and (= c! (+ c 1)) (and (= k! k) (= turn! 1)))))))) (or (and (= turn 1) (and (= z (- (+ k y) c)) (and (= x! (+ x 1)) (and (= y! (+ y 1)) (and (= z! z) (and (= c! (+ c 1)) (and (= k! k) (= turn! 2)))))))) (or (and (= turn 1) (and (not (= z (- (+ k y) c))) (and (= x! (+ x 1)) (and (= y! (- y 1)) (and (= z! z) (and (= c! (+ c 1)) (and (= k! k) (= turn! 2)))))))) (or (and (= turn 2) (and (= x! (- x 1)) (and (= y! (- y 1)) (and (= z! z) (and (= c! c) (and (= k! k) (= turn! 2))))))) (or (and (= turn 2) (and (= x! (- x 1)) (and (= y! (- y 1)) (and (= z! z) (and (= c! c) (and (= k! k) (= turn! 3))))))) (and (or (> turn 2) (< turn 0)) (and (= x! x) (and (= y! y) (and (= z! (+ x y)) (and (= c! c) (and (= k! k) (= turn! 0))))))))))))))))
(define-fun post-f ((x Int) (y Int) (z Int) (c Int) (k Int) (turn Int)) Bool
    (= x y))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

