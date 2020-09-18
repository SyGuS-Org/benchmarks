(set-logic CHC_LIA)

(synth-fun inv_main3 ((x_0 Int)) Bool)

(synth-fun inv_main20 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun inv_main7 ((x_0 Int) (x_1 Int) (x_2 Int)) Bool)

(synth-fun inv_main29 ((x_0 Int) (x_1 Int) (x_2 Int)) Bool)

(constraint (forall ((var0 Int)) (=> true (inv_main3 var0))))
(constraint (forall ((var0 Int) (var3 Int) (var1 Int) (var2 Int)) (let ((a!1 (= var2 (+ 10 (* (- 1) var1))))) (=> (and (inv_main20 var0 var3 var1 var2) (not a!1) (<= 0 var2)) (inv_main20 var0 var3 var1 (+ var2 (- 1)))))))
(constraint (forall ((var0 Int) (var1 Int) (var2 Int)) (let ((a!1 (<= 0 (+ 10 (* (- 1) var2))))) (=> (and (inv_main7 var0 var1 var2) (not (= var2 var1)) a!1) (inv_main7 var0 var1 (+ var2 1))))))
(constraint (forall ((var0 Int) (var3 Int) (var1 Int) (var2 Int)) (let ((a!1 (inv_main29 var0 var3 (+ 10 (* (- 1) var2))))) (=> (and (inv_main20 var0 var3 var1 var2) (not (<= 0 var2))) a!1))))
(constraint (forall ((var0 Int) (var3 Int) (var1 Int) (var2 Int)) (let ((a!1 (= var2 (+ 10 (* (- 1) var1)))) (a!2 (inv_main29 var0 var3 (+ 10 (* (- 1) var2))))) (=> (and (inv_main20 var0 var3 var1 var2) a!1 (<= 0 var2)) a!2))))
(constraint (forall ((var0 Int)) (=> (inv_main3 var0) (inv_main7 var0 var0 0))))
(constraint (forall ((var0 Int) (var1 Int) (var2 Int)) (let ((a!1 (<= 0 (+ 10 (* (- 1) var2))))) (=> (and (inv_main7 var0 var1 var2) (not a!1)) (inv_main20 var0 var2 var0 10)))))
(constraint (forall ((var0 Int) (var1 Int) (var2 Int)) (let ((a!1 (<= 0 (+ 10 (* (- 1) var2))))) (=> (and (inv_main7 var0 var1 var2) (= var2 var1) a!1) (inv_main20 var0 var2 var0 10)))))
(constraint (forall ((var0 Int) (var2 Int) (var1 Int)) (=> (and (inv_main29 var0 var2 var1) (not (= var2 var1))) false)))

(check-synth)

