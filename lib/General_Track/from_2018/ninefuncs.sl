(set-logic LIA)

(synth-fun f1 ((p1 Int) (P1 Int)) Int
    ((Start Int))
    ((Start Int (p1 P1 (- Start Start) (+ Start Start)))))

(synth-fun f2 ((p1 Int) (P1 Int)) Int
    ((Start Int))
    ((Start Int (p1 P1 (+ Start Start)))))

(synth-fun f3 ((p1 Int) (P1 Int)) Int
    ((Start Int))
    ((Start Int (p1 P1 (- Start Start) (+ Start Start)))))

(synth-fun f4 ((p1 Int) (P1 Int)) Int
    ((Start Int))
    ((Start Int (p1 P1 (- Start Start) (+ Start Start)))))

(synth-fun f5 ((p1 Int) (P1 Int)) Int
    ((Start Int))
    ((Start Int (p1 P1 (- Start Start) (+ Start Start)))))

(synth-fun g1 ((p1 Int) (P1 Int)) Int
    ((Start Int))
    ((Start Int (p1 P1 (- Start Start) (+ Start Start)))))

(synth-fun g2 ((p1 Int) (P1 Int)) Int
    ((Start Int))
    ((Start Int (p1 P1 (+ Start Start)))))

(synth-fun g3 ((p1 Int) (P1 Int)) Int
    ((Start Int))
    ((Start Int (p1 P1 (- Start Start) (+ Start Start)))))

(synth-fun g4 ((p1 Int) (P1 Int)) Int
    ((Start Int))
    ((Start Int (p1 P1 (- Start Start) (+ Start Start)))))

(declare-var x Int)
(declare-var y Int)
(constraint (= (+ (f1 x y) (f1 x y)) (f2 x y)))
(constraint (= (- (+ (f1 x y) (f2 x y)) y) (f3 x y)))
(constraint (= (+ (f2 x y) (f2 x y)) (f4 x y)))
(constraint (= (+ (f4 x y) (f1 x y)) (f5 x y)))
(constraint (= (- (f1 x y) y) (g1 x y)))
(constraint (= (+ 1 (g1 x y)) (g2 x y)))
(constraint (= (+ 1 (g2 x y)) (g3 x y)))
(constraint (= (+ (g3 x y) (g3 x y)) (g4 x y)))

(check-synth)

