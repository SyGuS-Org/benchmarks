(set-logic CHC_LIA)

(synth-fun cleaned_symbol_0 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_1 ((x_0 Int) (x_1 Int) (x_2 Int)) Bool)

(constraint (forall ((cleaned_symbol_2 Int)) (=> true (cleaned_symbol_0 cleaned_symbol_2 cleaned_symbol_2))))
(constraint (forall ((cleaned_symbol_3 Int) (cleaned_symbol_4 Int) (cleaned_symbol_5 Int) (cleaned_symbol_6 Int) (cleaned_symbol_7 Int) (cleaned_symbol_8 Int) (cleaned_symbol_9 Int)) (let ((a!1 (= (not (= 0 cleaned_symbol_3)) (not (not (= 0 cleaned_symbol_4))))) (a!2 (= (not (= 0 cleaned_symbol_4)) (and (not (= 0 cleaned_symbol_5)) (not (= 0 cleaned_symbol_6)))))) (let ((a!3 (and a!1 a!2 (= (not (= 0 cleaned_symbol_6)) (<= cleaned_symbol_7 0)) (= (not (= 0 cleaned_symbol_5)) (> cleaned_symbol_8 0)) (= cleaned_symbol_9 1) (not (= 0 cleaned_symbol_3)) (cleaned_symbol_0 cleaned_symbol_7 cleaned_symbol_8) true))) (=> a!3 (cleaned_symbol_1 cleaned_symbol_9 cleaned_symbol_7 cleaned_symbol_8))))))
(constraint (forall ((cleaned_symbol_3 Int) (cleaned_symbol_4 Int) (cleaned_symbol_5 Int) (cleaned_symbol_6 Int) (cleaned_symbol_7 Int) (cleaned_symbol_8 Int)) (let ((a!1 (= (not (= 0 cleaned_symbol_3)) (not (not (= 0 cleaned_symbol_4))))) (a!2 (= (not (= 0 cleaned_symbol_4)) (and (not (= 0 cleaned_symbol_5)) (not (= 0 cleaned_symbol_6)))))) (let ((a!3 (and a!1 a!2 (= (not (= 0 cleaned_symbol_6)) (<= cleaned_symbol_7 0)) (= (not (= 0 cleaned_symbol_5)) (> cleaned_symbol_8 0)) (not (not (= 0 cleaned_symbol_3))) (cleaned_symbol_0 cleaned_symbol_7 cleaned_symbol_8) true))) (=> a!3 false)))))

(check-synth)

