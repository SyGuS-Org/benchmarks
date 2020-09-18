(set-logic CHC_LIA)

(synth-fun inv_main3 ((x_0 Int)) Bool)

(synth-fun inv_main22 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int)) Bool)

(synth-fun inv_main8 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun inv_main13 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun inv_main26 ((x_0 Int) (x_1 Int) (x_2 Int)) Bool)

(constraint (forall ((var0 Int)) (=> true (inv_main3 var0))))
(constraint (forall ((var3 Int) (var1 Int) (var4 Int) (var2 Int) (var0 Int)) (let ((a!1 (and (inv_main22 var3 var1 var4 var2 var0) (<= 0 (+ var0 (- 1)))))) (=> a!1 (inv_main22 var3 var1 var4 (+ var2 var4) (+ var0 (- 1)))))))
(constraint (forall ((var1 Int) (var3 Int) (var2 Int) (var0 Int)) (let ((a!1 (and (inv_main8 var1 var3 var2 var0) (<= 0 (+ var0 (- 1)))))) (=> a!1 (inv_main8 var1 var3 (+ var2 var3) (+ var0 (- 1)))))))
(constraint (forall ((var1 Int) (var3 Int) (var2 Int) (var0 Int)) (let ((a!1 (not (<= 0 (+ var0 (- 1)))))) (=> (and (inv_main8 var1 var3 var2 var0) a!1) (inv_main13 var1 var3 0 var3)))))
(constraint (forall ((var1 Int) (var3 Int) (var2 Int) (var0 Int)) (let ((a!1 (and (inv_main13 var1 var3 var2 var0) (<= 0 (+ var0 (- 1)))))) (=> a!1 (inv_main13 var1 var3 (+ var2 var3) (+ var0 (- 1)))))))
(constraint (forall ((var3 Int) (var1 Int) (var4 Int) (var2 Int) (var0 Int)) (let ((a!1 (not (<= 0 (+ var0 (- 1)))))) (=> (and (inv_main22 var3 var1 var4 var2 var0) a!1) (inv_main26 var3 var1 var2)))))
(constraint (forall ((var0 Int)) (=> (inv_main3 var0) (inv_main8 var0 var0 0 var0))))
(constraint (forall ((var1 Int) (var3 Int) (var2 Int) (var0 Int)) (let ((a!1 (not (<= 0 (+ var0 (- 1)))))) (=> (and (inv_main13 var1 var3 var2 var0) a!1) (inv_main22 var1 var2 var1 0 var1)))))
(constraint (forall ((var2 Int) (var1 Int) (var0 Int)) (=> (and (inv_main26 var2 var1 var0) (not (= var1 var0))) false)))

(check-synth)

