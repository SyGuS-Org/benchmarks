(set-logic CHC_LIA)

(synth-fun cleaned_symbol_0 ((x_0 Int) (x_1 Int)) Bool)

(constraint (forall ((cleaned_symbol_1 Int) (cleaned_symbol_2 Int) (cleaned_symbol_3 Int) (cleaned_symbol_4 Int) (cleaned_symbol_5 Int)) (let ((a!1 (and (= cleaned_symbol_1 (- 2)) (= (not (= 0 cleaned_symbol_2)) (< cleaned_symbol_3 (- 1))) (= cleaned_symbol_4 cleaned_symbol_5) (not (= 0 cleaned_symbol_2)) (cleaned_symbol_0 cleaned_symbol_5 cleaned_symbol_1) true))) (=> a!1 (cleaned_symbol_0 cleaned_symbol_4 cleaned_symbol_3)))))
(constraint (forall ((cleaned_symbol_6 Int) (cleaned_symbol_3 Int) (cleaned_symbol_7 Int) (cleaned_symbol_2 Int) (cleaned_symbol_8 Int)) (let ((a!1 (and (= cleaned_symbol_6 (* 2 cleaned_symbol_3)) (= (not (= 0 cleaned_symbol_7)) (<= cleaned_symbol_3 1)) (= (not (= 0 cleaned_symbol_2)) (< cleaned_symbol_3 (- 1))) (= cleaned_symbol_8 (- cleaned_symbol_6 1)) (not (not (= 0 cleaned_symbol_2))) (not (= 0 cleaned_symbol_7)) true))) (=> a!1 (cleaned_symbol_0 cleaned_symbol_8 cleaned_symbol_3)))))
(constraint (forall ((cleaned_symbol_7 Int) (cleaned_symbol_3 Int) (cleaned_symbol_2 Int) (cleaned_symbol_9 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_7)) (<= cleaned_symbol_3 1)) (= (not (= 0 cleaned_symbol_2)) (< cleaned_symbol_3 (- 1))) (= cleaned_symbol_9 cleaned_symbol_3) (not (not (= 0 cleaned_symbol_7))) (not (not (= 0 cleaned_symbol_2))) true))) (=> a!1 (cleaned_symbol_0 cleaned_symbol_9 cleaned_symbol_3)))))
(constraint (forall ((cleaned_symbol_10 Int) (cleaned_symbol_11 Int) (cleaned_symbol_12 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_10)) (>= cleaned_symbol_11 0)) (= cleaned_symbol_12 3) (not (not (= 0 cleaned_symbol_10))) (cleaned_symbol_0 cleaned_symbol_11 cleaned_symbol_12)))) (=> a!1 false))))

(check-synth)

