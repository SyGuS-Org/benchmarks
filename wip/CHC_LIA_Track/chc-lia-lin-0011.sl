(set-logic CHC_LIA)

(synth-fun cleaned_symbol_0 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_1 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_2 ((x_0 Int) (x_1 Int)) Bool)

(constraint (forall ((cleaned_symbol_3 Int) (cleaned_symbol_4 Int)) (=> (and (= cleaned_symbol_3 (- cleaned_symbol_4 1)) true) (cleaned_symbol_0 cleaned_symbol_3 cleaned_symbol_4))))
(constraint (forall ((cleaned_symbol_5 Int) (cleaned_symbol_6 Int) (cleaned_symbol_7 Int) (decr Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_5)) (>= cleaned_symbol_6 3)) (not (= 0 cleaned_symbol_5)) true (cleaned_symbol_0 cleaned_symbol_7 decr)))) (=> a!1 (cleaned_symbol_1 cleaned_symbol_7 decr)))))
(constraint (forall ((cleaned_symbol_8 Int) (cleaned_symbol_9 Int) (cleaned_symbol_10 Int) (cleaned_symbol_11 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_8)) (> cleaned_symbol_9 0)) (= cleaned_symbol_10 cleaned_symbol_11) (not (= 0 cleaned_symbol_8)) true (cleaned_symbol_1 cleaned_symbol_11 cleaned_symbol_9)))) (=> a!1 (cleaned_symbol_2 cleaned_symbol_10 cleaned_symbol_9)))))
(constraint (forall ((cleaned_symbol_8 Int) (cleaned_symbol_9 Int) (cleaned_symbol_12 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_8)) (> cleaned_symbol_9 0)) (= cleaned_symbol_12 1) (not (not (= 0 cleaned_symbol_8))) true))) (=> a!1 (cleaned_symbol_2 cleaned_symbol_12 cleaned_symbol_9)))))
(constraint (forall ((cleaned_symbol_13 Int) (cleaned_symbol_14 Int) (cleaned_symbol_5 Int) (cleaned_symbol_6 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_13)) (> cleaned_symbol_14 0)) (= (not (= 0 cleaned_symbol_5)) (>= cleaned_symbol_6 3)) (not (not (= 0 cleaned_symbol_13))) (not (= 0 cleaned_symbol_5)) (cleaned_symbol_2 cleaned_symbol_14 cleaned_symbol_6)))) (=> a!1 false))))

(check-synth)

