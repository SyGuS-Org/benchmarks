(set-logic CHC_LIA)

(synth-fun _____I_N_V____6 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun _____I_N_V____23 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun _____I_N_V____12 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun _____I_N_V____19 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(constraint (forall ((var0 Int)) (=> true (_____I_N_V____6 var0 1 1 1))))
(constraint (forall ((var3 Int) (var4 Int) (var5 Int) (var2 Int) (var1 Int) (var0 Int)) (=> (_____I_N_V____23 var3 var4 var5 var2 var1 var0) (_____I_N_V____12 var3 var4 var5 var2 var1 var0))))
(constraint (forall ((var3 Int) (var4 Int) (var5 Int) (var2 Int) (var1 Int) (var0 Int)) (let ((a!1 (<= 0 (+ var1 (* (- 1) var3) (- 1)))) (a!2 (<= 0 (+ var0 (* (- 1) var3) (- 1))))) (=> (and (_____I_N_V____19 var3 var4 var5 var2 var1 var0) (not (and a!1 a!2))) (_____I_N_V____23 var3 var4 var5 var2 var1 var0)))))
(constraint (forall ((var3 Int) (var4 Int) (var5 Int) (var2 Int) (var1 Int) (var0 Int)) (let ((a!1 (<= 0 (+ var3 (* (- 1) var0)))) (a!2 (<= 0 (+ var3 (* (- 1) var1))))) (=> (and (_____I_N_V____12 var3 var4 var5 var2 var1 var0) a!1 a!2) (_____I_N_V____19 var3 var4 (+ var5 var1) (+ var2 var0) (+ var1 1) (+ var0 1))))))
(constraint (forall ((var1 Int) (var2 Int) (var3 Int) (var0 Int)) (let ((a!1 (<= 0 (+ var1 (* (- 1) var2))))) (=> (and (_____I_N_V____6 var1 var2 var3 var0) (not a!1)) (_____I_N_V____12 var1 var2 var3 var0 0 1)))))
(constraint (forall ((var1 Int) (var2 Int) (var3 Int) (var0 Int)) (let ((a!1 (<= 0 (+ var1 (* (- 1) var2))))) (=> (and (_____I_N_V____6 var1 var2 var3 var0) a!1) (_____I_N_V____6 var1 (+ var2 1) (* 1 var3) (* 1 var0))))))
(constraint (forall ((var3 Int) (var4 Int) (var5 Int) (var2 Int) (var1 Int) (var0 Int)) (let ((a!1 (and (_____I_N_V____23 var3 var4 var5 var2 var1 var0) (not (= var2 (+ var5 var1)))))) (=> a!1 false))))

(check-synth)

