(set-logic CHC_LIA)

(synth-fun cleaned_symbol_0 ((x_0 Int) (x_1 Int) (x_2 Int)) Bool)

(constraint (forall ((cleaned_symbol_1 Int) (cleaned_symbol_2 Int) (cleaned_symbol_3 Int) (cleaned_symbol_4 Int) (cleaned_symbol_5 Int) (cleaned_symbol_6 Int) (cleaned_symbol_7 Int)) (let ((a!1 (and (= cleaned_symbol_1 (+ cleaned_symbol_2 1)) (= cleaned_symbol_3 (- cleaned_symbol_4 1)) (= (not (= 0 cleaned_symbol_5)) (= cleaned_symbol_4 0)) (= cleaned_symbol_6 cleaned_symbol_7) (not (not (= 0 cleaned_symbol_5))) (cleaned_symbol_0 cleaned_symbol_7 cleaned_symbol_1 cleaned_symbol_3) true true))) (=> a!1 (cleaned_symbol_0 cleaned_symbol_6 cleaned_symbol_2 cleaned_symbol_4)))))
(constraint (forall ((cleaned_symbol_5 Int) (cleaned_symbol_4 Int) (cleaned_symbol_8 Int) (cleaned_symbol_2 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_5)) (= cleaned_symbol_4 0)) (= cleaned_symbol_8 cleaned_symbol_2) (not (= 0 cleaned_symbol_5)) true true))) (=> a!1 (cleaned_symbol_0 cleaned_symbol_8 cleaned_symbol_2 cleaned_symbol_4)))))
(constraint (forall ((cleaned_symbol_9 Int) (cleaned_symbol_10 Int) (cleaned_symbol_11 Int) (cleaned_symbol_12 Int)) (let ((a!1 (and (= cleaned_symbol_9 0) (= (not (= 0 cleaned_symbol_10)) (>= cleaned_symbol_11 cleaned_symbol_12)) (not (not (= 0 cleaned_symbol_10))) (cleaned_symbol_0 cleaned_symbol_11 cleaned_symbol_9 cleaned_symbol_12)))) (=> a!1 false))))

(check-synth)

