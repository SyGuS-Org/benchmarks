(set-logic CHC_LIA)

(synth-fun cleaned_symbol_0 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_1 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_2 ((x_0 Int) (x_1 Int)) Bool)

(constraint (forall ((cleaned_symbol_3 Int) (cleaned_symbol_4 Int)) (=> (and (= cleaned_symbol_3 (- cleaned_symbol_4 1)) true) (cleaned_symbol_0 cleaned_symbol_3 cleaned_symbol_4))))
(constraint (forall ((cleaned_symbol_5 Int) (cleaned_symbol_6 Int) (cleaned_symbol_7 Int) (cleaned_symbol_8 Int) (cleaned_symbol_9 Int) (decr Int)) (let ((a!1 (= (not (= 0 cleaned_symbol_5)) (or (not (= 0 cleaned_symbol_6)) (not (= 0 cleaned_symbol_7)))))) (let ((a!2 (and a!1 (= (not (= 0 cleaned_symbol_7)) (<= cleaned_symbol_8 0)) (= (not (= 0 cleaned_symbol_6)) (>= cleaned_symbol_8 3)) (not (= 0 cleaned_symbol_5)) true (cleaned_symbol_0 cleaned_symbol_9 decr)))) (=> a!2 (cleaned_symbol_1 cleaned_symbol_9 decr))))))
(constraint (forall ((cleaned_symbol_10 Int) (cleaned_symbol_11 Int) (cleaned_symbol_12 Int) (cleaned_symbol_13 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_10)) (> cleaned_symbol_11 0)) (= cleaned_symbol_12 cleaned_symbol_13) (not (= 0 cleaned_symbol_10)) true (cleaned_symbol_1 cleaned_symbol_13 cleaned_symbol_11)))) (=> a!1 (cleaned_symbol_2 cleaned_symbol_12 cleaned_symbol_11)))))
(constraint (forall ((cleaned_symbol_10 Int) (cleaned_symbol_11 Int) (cleaned_symbol_14 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_10)) (> cleaned_symbol_11 0)) (= cleaned_symbol_14 1) (not (not (= 0 cleaned_symbol_10))) true))) (=> a!1 (cleaned_symbol_2 cleaned_symbol_14 cleaned_symbol_11)))))
(constraint (forall ((cleaned_symbol_5 Int) (cleaned_symbol_6 Int) (cleaned_symbol_7 Int) (cleaned_symbol_8 Int) (cleaned_symbol_15 Int) (cleaned_symbol_16 Int)) (let ((a!1 (= (not (= 0 cleaned_symbol_5)) (or (not (= 0 cleaned_symbol_6)) (not (= 0 cleaned_symbol_7)))))) (let ((a!2 (and a!1 (= (not (= 0 cleaned_symbol_7)) (<= cleaned_symbol_8 0)) (= (not (= 0 cleaned_symbol_6)) (>= cleaned_symbol_8 3)) (= (not (= 0 cleaned_symbol_15)) (> cleaned_symbol_16 0)) (not (not (= 0 cleaned_symbol_15))) (not (= 0 cleaned_symbol_5)) (cleaned_symbol_2 cleaned_symbol_16 cleaned_symbol_8)))) (=> a!2 false)))))

(check-synth)

