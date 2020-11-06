(set-logic LIA)

(synth-inv inv-f ((x Int) (y Int) (w Int) (z Int)))

(define-fun pre-f ((x Int) (y Int) (w Int) (z Int)) Bool
    (and (= w 1) (and (= z 0) (and (= x 0) (= y 0)))))
(define-fun trans-f ((x Int) (y Int) (w Int) (z Int) (x! Int) (y! Int) (w! Int) (z! Int)) Bool
    (or (and (= w 1) (and (= z 0) (and (= x! (+ x 1)) (and (= w! 0) (and (= y! (+ y 1)) (= z! 1)))))) (or (and (not (= w 1)) (and (= z 0) (and (= x! x) (and (= w! w) (and (= y! (+ y 1)) (= z! 1)))))) (or (and (= w 1) (and (not (= z 0)) (and (= x! (+ x 1)) (and (= w! 0) (and (= y! y) (= z! z)))))) (and (not (= w 1)) (and (not (= z 0)) (and (= x! x) (and (= w! w) (and (= y! y) (= z! z))))))))))
(define-fun post-f ((x Int) (y Int) (w Int) (z Int)) Bool
    (= x y))

(inv-constraint inv-f pre-f trans-f post-f)

(check-synth)

