(set-logic LIA)

(synth-fun eq_1 ((x Int) (y Int)) Int)

(define-fun im ((b1 Bool) (b2 Bool) (b3 Bool)) Bool
    (or (and b1 b2) (and (not b1) b3)))
(define-fun plus_2 ((b1 Int) (b2 Int)) Int
    (+ b1 b2))
(define-fun plus_3 ((b1 Int) (b2 Int) (b3 Int)) Int
    (+ (+ b1 b2) b3))
(define-fun plus_4 ((b1 Int) (b2 Int) (b3 Int) (b4 Int)) Int
    (+ (plus_3 b1 b2 b3) b4))
(define-fun plus_5 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int)) Int
    (+ (plus_4 b1 b2 b3 b4) b5))
(define-fun plus_6 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int) (b6 Int)) Int
    (+ (plus_5 b1 b2 b3 b4 b5) b6))
(define-fun plus_7 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int) (b6 Int) (b7 Int)) Int
    (+ (plus_6 b1 b2 b3 b4 b5 b6) b7))
(define-fun plus_8 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int) (b6 Int) (b7 Int) (be Int)) Int
    (+ (plus_7 b1 b2 b3 b4 b5 b6 b7) be))
(define-fun plus_9 ((b1 Int) (b2 Int) (b3 Int) (b4 Int) (b5 Int) (b6 Int) (b7 Int) (be Int) (bn Int)) Int
    (+ (plus_8 b1 b2 b3 b4 b5 b6 b7 be) bn))
(define-fun or3 ((b1 Bool) (b2 Bool) (b3 Bool)) Bool
    (or (or b1 b2) b3))
(define-fun two_times ((b1 Int)) Int
    (plus_2 b1 b1))
(define-fun three_times ((b1 Int)) Int
    (plus_3 b1 b1 b1))
(define-fun four_times ((b1 Int)) Int
    (plus_4 b1 b1 b1 b1))
(define-fun five_times ((b1 Int)) Int
    (plus_5 b1 b1 b1 b1 b1))
(define-fun six_times ((b1 Int)) Int
    (plus_6 b1 b1 b1 b1 b1 b1))
(define-fun seven_times ((b1 Int)) Int
    (plus_7 b1 b1 b1 b1 b1 b1 b1))
(define-fun nine_times ((b1 Int)) Int
    (plus_9 b1 b1 b1 b1 b1 b1 b1 b1 b1))
(define-fun ten_times ((b1 Int)) Int
    (plus_9 b1 b1 b1 b1 b1 b1 b1 b1 (plus_2 b1 b1)))
(define-fun minus ((b1 Int)) Int
    (- 0 b1))
(declare-var x Int)
(declare-var y Int)
(constraint (ite (<= (plus_2 x y) 1) (= (eq_1 x y) (ten_times (plus_3 x y 1))) (ite (<= (plus_2 x y) 2) (= (eq_1 x y) (ten_times (two_times (plus_3 x y (- 1))))) (ite (<= (plus_2 x y) 3) (= (eq_1 x y) (ten_times (three_times (plus_3 x y 1)))) (ite (<= (plus_2 x y) 4) (= (eq_1 x y) (ten_times (four_times (plus_3 x y (- 1))))) (ite (<= (plus_2 x y) 5) (= (eq_1 x y) (ten_times (five_times (plus_3 x y 1)))) (= (eq_1 x y) (ten_times (six_times (plus_3 x y (- 1)))))))))))

(check-synth)

