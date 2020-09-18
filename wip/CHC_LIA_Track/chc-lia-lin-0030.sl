(set-logic CHC_LIA)

(synth-fun cleaned_symbol_0 ((x_0 Int) (x_1 Int) (x_2 Int)) Bool)

(synth-fun cleaned_symbol_1 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_2 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_3 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_4 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_5 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun cleaned_symbol_6 ((x_0 Int) (x_1 Int)) Bool)

(constraint (forall ((cleaned_symbol_7 Int) (cleaned_symbol_8 Int) (cleaned_symbol_9 Int)) (=> (and (= cleaned_symbol_7 cleaned_symbol_8) true true) (cleaned_symbol_0 cleaned_symbol_7 cleaned_symbol_9 cleaned_symbol_8))))
(constraint (forall ((cleaned_symbol_10 Int) (cleaned_symbol_11 Int) (cleaned_symbol_12 Int) (cleaned_symbol_13 Int) (cleaned_symbol_14 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_10)) (>= cleaned_symbol_11 0)) (= cleaned_symbol_12 1) (not (= 0 cleaned_symbol_10)) true (cleaned_symbol_0 cleaned_symbol_13 cleaned_symbol_14 cleaned_symbol_11)))) (=> a!1 (cleaned_symbol_1 cleaned_symbol_13 cleaned_symbol_14)))))
(constraint (forall ((cleaned_symbol_15 Int) (cleaned_symbol_16 Int) (cleaned_symbol_17 Int) (cleaned_symbol_18 Int)) (=> (and (= cleaned_symbol_15 1) (= cleaned_symbol_16 (- cleaned_symbol_17)) true (cleaned_symbol_2 cleaned_symbol_17 cleaned_symbol_15)) (cleaned_symbol_3 cleaned_symbol_16 cleaned_symbol_18))))
(constraint (forall ((cleaned_symbol_19 Int) (cleaned_symbol_20 Int)) (=> (and true true (cleaned_symbol_4 cleaned_symbol_19 cleaned_symbol_20)) (cleaned_symbol_5 cleaned_symbol_19 cleaned_symbol_20))))
(constraint (forall ((cleaned_symbol_21 Int) (cleaned_symbol_22 Int) (cleaned_symbol_23 Int)) (=> (and (= cleaned_symbol_21 cleaned_symbol_22) true (cleaned_symbol_4 cleaned_symbol_22 cleaned_symbol_23)) (cleaned_symbol_6 cleaned_symbol_21 cleaned_symbol_23))))
(constraint (forall ((cleaned_symbol_24 Int) (cleaned_symbol_25 Int)) (=> (and true true (cleaned_symbol_1 cleaned_symbol_24 cleaned_symbol_25)) (cleaned_symbol_5 cleaned_symbol_24 cleaned_symbol_25))))
(constraint (forall ((cleaned_symbol_10 Int) (cleaned_symbol_11 Int) (cleaned_symbol_12 Int) (cleaned_symbol_26 Int) (cleaned_symbol_27 Int)) (let ((a!1 (and (= (not (= 0 cleaned_symbol_10)) (>= cleaned_symbol_11 0)) (= cleaned_symbol_12 1) (= (not (= 0 cleaned_symbol_26)) (>= cleaned_symbol_27 0)) (not (not (= 0 cleaned_symbol_26))) (not (= 0 cleaned_symbol_10)) (cleaned_symbol_6 cleaned_symbol_27 cleaned_symbol_12)))) (=> a!1 false))))
(constraint (forall ((cleaned_symbol_28 Int) (cleaned_symbol_29 Int) (cleaned_symbol_10 Int) (cleaned_symbol_11 Int) (cleaned_symbol_12 Int)) (let ((a!1 (and (cleaned_symbol_5 cleaned_symbol_28 cleaned_symbol_29) true (= (not (= 0 cleaned_symbol_10)) (>= cleaned_symbol_11 0)) (= cleaned_symbol_12 1) (not (= 0 cleaned_symbol_10))))) (=> a!1 (cleaned_symbol_2 cleaned_symbol_28 cleaned_symbol_29)))))
(constraint (forall ((cleaned_symbol_30 Int) (cleaned_symbol_31 Int) (cleaned_symbol_10 Int) (cleaned_symbol_11 Int) (cleaned_symbol_12 Int)) (let ((a!1 (and (cleaned_symbol_3 cleaned_symbol_30 cleaned_symbol_31) true (= (not (= 0 cleaned_symbol_10)) (>= cleaned_symbol_11 0)) (= cleaned_symbol_12 1) (not (= 0 cleaned_symbol_10))))) (=> a!1 (cleaned_symbol_4 cleaned_symbol_30 cleaned_symbol_31)))))

(check-synth)

