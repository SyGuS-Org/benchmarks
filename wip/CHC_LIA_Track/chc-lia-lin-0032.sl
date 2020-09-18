(set-logic CHC_LIA)

(synth-fun cleaned_symbol_0 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_1 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_2 ((x_0 Int) (x_1 Int)) Bool)

(constraint (forall ((cleaned_symbol_3 Int) (cleaned_symbol_4 Int) (cleaned_symbol_5 Int) (cleaned_symbol_6 Int) (cleaned_symbol_7 Int)) (let ((a!1 (and (= cleaned_symbol_3 (- 4)) (= (not (= 0 cleaned_symbol_4)) (< cleaned_symbol_5 (- 3))) (not (= 0 cleaned_symbol_4)) true (cleaned_symbol_0 cleaned_symbol_6 cleaned_symbol_7) true))) (=> a!1 (cleaned_symbol_0 cleaned_symbol_6 cleaned_symbol_7)))))
(constraint (forall ((cleaned_symbol_8 Int) (cleaned_symbol_5 Int) (cleaned_symbol_9 Int) (cleaned_symbol_4 Int) (cleaned_symbol_6 Int) (cleaned_symbol_7 Int)) (let ((a!1 (and (= cleaned_symbol_8 (- cleaned_symbol_5 2)) (= (not (= 0 cleaned_symbol_9)) (<= cleaned_symbol_5 1)) (= (not (= 0 cleaned_symbol_4)) (< cleaned_symbol_5 (- 3))) (not (not (= 0 cleaned_symbol_9))) (not (not (= 0 cleaned_symbol_4))) true (cleaned_symbol_0 cleaned_symbol_6 cleaned_symbol_7) true))) (=> a!1 (cleaned_symbol_0 cleaned_symbol_6 cleaned_symbol_7)))))
(constraint (forall ((cleaned_symbol_8 Int) (cleaned_symbol_5 Int) (cleaned_symbol_9 Int) (cleaned_symbol_4 Int) (cleaned_symbol_10 Int) (cleaned_symbol_11 Int)) (let ((a!1 (and (= cleaned_symbol_8 (- cleaned_symbol_5 2)) (= (not (= 0 cleaned_symbol_9)) (<= cleaned_symbol_5 1)) (= (not (= 0 cleaned_symbol_4)) (< cleaned_symbol_5 (- 3))) (not (not (= 0 cleaned_symbol_9))) (not (not (= 0 cleaned_symbol_4))) (cleaned_symbol_1 cleaned_symbol_10 cleaned_symbol_11) true true))) (=> a!1 (cleaned_symbol_0 cleaned_symbol_10 cleaned_symbol_11)))))
(constraint (forall ((cleaned_symbol_12 Int) (cleaned_symbol_13 Int) (incr Int)) (=> (and (= cleaned_symbol_12 3) (cleaned_symbol_2 cleaned_symbol_13 incr) true) (cleaned_symbol_0 cleaned_symbol_13 incr))))
(constraint (forall ((cleaned_symbol_9 Int) (cleaned_symbol_5 Int) (cleaned_symbol_4 Int) (cleaned_symbol_14 Int) (cleaned_symbol_15 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_9)) (<= cleaned_symbol_5 1)) (= (not (= 0 cleaned_symbol_4)) (< cleaned_symbol_5 (- 3))) (= cleaned_symbol_14 cleaned_symbol_15) (not (not (= 0 cleaned_symbol_4))) (not (= 0 cleaned_symbol_9)) true (cleaned_symbol_0 cleaned_symbol_15 cleaned_symbol_5)))) (=> a!1 (cleaned_symbol_1 cleaned_symbol_14 cleaned_symbol_5)))))
(constraint (forall ((cleaned_symbol_3 Int) (cleaned_symbol_4 Int) (cleaned_symbol_5 Int) (cleaned_symbol_16 Int) (cleaned_symbol_17 Int)) (let ((a!1 (and (= cleaned_symbol_3 (- 4)) (= (not (= 0 cleaned_symbol_4)) (< cleaned_symbol_5 (- 3))) (= cleaned_symbol_16 cleaned_symbol_17) (not (= 0 cleaned_symbol_4)) (cleaned_symbol_1 cleaned_symbol_17 cleaned_symbol_3) true))) (=> a!1 (cleaned_symbol_1 cleaned_symbol_16 cleaned_symbol_5)))))
(constraint (forall ((cleaned_symbol_8 Int) (cleaned_symbol_5 Int) (cleaned_symbol_9 Int) (cleaned_symbol_4 Int) (cleaned_symbol_18 Int) (cleaned_symbol_19 Int)) (let ((a!1 (and (= cleaned_symbol_8 (- cleaned_symbol_5 2)) (= (not (= 0 cleaned_symbol_9)) (<= cleaned_symbol_5 1)) (= (not (= 0 cleaned_symbol_4)) (< cleaned_symbol_5 (- 3))) (= cleaned_symbol_18 cleaned_symbol_19) (not (not (= 0 cleaned_symbol_9))) (not (not (= 0 cleaned_symbol_4))) (cleaned_symbol_1 cleaned_symbol_19 cleaned_symbol_8) true))) (=> a!1 (cleaned_symbol_1 cleaned_symbol_18 cleaned_symbol_5)))))
(constraint (forall ((cleaned_symbol_20 Int) (cleaned_symbol_21 Int) (cleaned_symbol_12 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_20)) (>= cleaned_symbol_21 (- 3))) (= cleaned_symbol_12 3) (not (not (= 0 cleaned_symbol_20))) (cleaned_symbol_1 cleaned_symbol_21 cleaned_symbol_12)))) (=> a!1 false))))
(constraint (forall ((cleaned_symbol_22 Int) (cleaned_symbol_23 Int)) (=> (and (= cleaned_symbol_22 (+ cleaned_symbol_23 1)) true) (cleaned_symbol_2 cleaned_symbol_22 cleaned_symbol_23))))

(check-synth)

