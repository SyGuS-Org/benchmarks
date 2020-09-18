(set-logic CHC_LIA)

(synth-fun inv_main3 ((x_0 Int) (x_1 Int)) Bool)

(synth-fun inv_main21 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun inv_main9 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int)) Bool)

(synth-fun inv_main32 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(constraint (forall ((var1 Int) (var0 Int)) (=> true (inv_main3 var1 var0))))
(constraint (forall ((var6 Int) (var2 Int) (var0 Int) (var3 Int) (var5 Int) (var1 Int) (var4 Int) (var7 Int)) (let ((a!1 (and (inv_main21 var6 var2 var0 var3 var5 var1) (<= 0 (+ var3 (- 1))) (not (= var4 0)) (<= 0 (+ var5 (- 1))) (not (= var7 0))))) (=> a!1 (inv_main21 var6 var2 var0 var3 (+ var5 (- 1)) (+ var1 1))))))
(constraint (forall ((var6 Int) (var2 Int) (var0 Int) (var3 Int) (var5 Int) (var1 Int) (var4 Int) (var7 Int)) (let ((a!1 (not (<= 0 (+ var3 (- 1)))))) (let ((a!2 (and (inv_main21 var6 var2 var0 var3 var5 var1) a!1 (not (= var4 0)) (<= 0 (+ var5 (- 1))) (not (= var7 0))))) (=> a!2 (inv_main21 var6 var2 var0 var3 (+ var5 (- 1)) var1))))))
(constraint (forall ((var5 Int) (var0 Int) (var4 Int) (var3 Int) (var2 Int) (var1 Int)) (let ((a!1 (and (inv_main9 var5 var0 var4 var3 var2) (not (= var1 0)) (<= 0 (+ var3 (- 1)))))) (=> a!1 (inv_main9 var5 var0 var4 (+ var3 (- 1)) (+ var2 1))))))
(constraint (forall ((var1 Int) (var0 Int)) (let ((a!1 (and (inv_main3 var1 var0) (<= 0 (+ var1 (- 1)))))) (=> a!1 (inv_main9 var1 var0 var1 var0 0)))))
(constraint (forall ((var5 Int) (var2 Int) (var0 Int) (var3 Int) (var4 Int) (var1 Int) (var6 Int)) (=> (and (inv_main21 var5 var2 var0 var3 var4 var1) (= var6 0)) (inv_main32 var5 var2 var0 var1))))
(constraint (forall ((var6 Int) (var2 Int) (var0 Int) (var3 Int) (var5 Int) (var1 Int) (var4 Int) (var7 Int)) (let ((a!1 (and (not (= var4 0)) (<= 0 (+ var5 (- 1)))))) (=> (and (inv_main21 var6 var2 var0 var3 var5 var1) (not a!1) (not (= var7 0))) (inv_main32 var6 var2 var0 var1)))))
(constraint (forall ((var5 Int) (var0 Int) (var4 Int) (var3 Int) (var2 Int) (var1 Int)) (let ((a!1 (and (not (= var1 0)) (<= 0 (+ var3 (- 1)))))) (=> (and (inv_main9 var5 var0 var4 var3 var2) (not a!1)) (inv_main21 var5 var0 var2 var5 var0 0)))))
(constraint (forall ((var1 Int) (var0 Int)) (let ((a!1 (not (<= 0 (+ var1 (- 1)))))) (=> (and (inv_main3 var1 var0) a!1) (inv_main21 var1 var0 0 var1 var0 0)))))
(constraint (forall ((var3 Int) (var1 Int) (var0 Int) (var2 Int)) (=> (and (inv_main32 var3 var1 var0 var2) (not (= var0 var2))) false)))

(check-synth)

