(set-logic CHC_LIA)

(synth-fun cleaned_symbol_0 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_1 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_2 ((x_0 Int) (x_1 Int)) Bool)

(constraint (forall ((cleaned_symbol_3 Int) (cleaned_symbol_4 Int)) (=> (and (= cleaned_symbol_3 (- cleaned_symbol_4 1)) true) (cleaned_symbol_0 cleaned_symbol_3 cleaned_symbol_4))))
(constraint (forall ((cleaned_symbol_5 Int) (cleaned_symbol_6 Int) (decr Int)) (=> (and (= cleaned_symbol_5 3) true (cleaned_symbol_0 cleaned_symbol_6 decr)) (cleaned_symbol_1 cleaned_symbol_6 decr))))
(constraint (forall ((cleaned_symbol_7 Int) (cleaned_symbol_8 Int) (cleaned_symbol_9 Int) (cleaned_symbol_10 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_7)) (> cleaned_symbol_8 0)) (= cleaned_symbol_9 cleaned_symbol_10) (not (= 0 cleaned_symbol_7)) true (cleaned_symbol_1 cleaned_symbol_10 cleaned_symbol_8)))) (=> a!1 (cleaned_symbol_2 cleaned_symbol_9 cleaned_symbol_8)))))
(constraint (forall ((cleaned_symbol_7 Int) (cleaned_symbol_8 Int) (cleaned_symbol_11 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_7)) (> cleaned_symbol_8 0)) (= cleaned_symbol_11 1) (not (not (= 0 cleaned_symbol_7))) true))) (=> a!1 (cleaned_symbol_2 cleaned_symbol_11 cleaned_symbol_8)))))
(constraint (forall ((cleaned_symbol_12 Int) (cleaned_symbol_13 Int) (cleaned_symbol_5 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_12)) (> cleaned_symbol_13 0)) (= cleaned_symbol_5 3) (not (not (= 0 cleaned_symbol_12))) (cleaned_symbol_2 cleaned_symbol_13 cleaned_symbol_5)))) (=> a!1 false))))

(check-synth)

