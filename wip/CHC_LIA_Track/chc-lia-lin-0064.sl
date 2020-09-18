(set-logic CHC_LIA)

(synth-fun h1 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h2 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h3 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h4 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h5 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h6 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h7 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h8 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h9 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h10 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h11 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h12 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h13 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h14 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h15 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h16 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h17 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h18 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h19 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h20 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h21 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h22 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(synth-fun h23 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int)) (=> (= 1 1) (h1 A B C D E A B C D E))))
(constraint (forall ((F Int) (J Int) (I Int) (H Int) (A Int) (B Int) (C Int) (D Int) (E Int) (K Int) (G Int) (L Int) (M Int)) (=> (and (= F 100) (= J 0) (= I H) (h1 A B C D E K G L I M)) (h2 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h2 A B C D E F G H I J) (h3 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h3 A B C D E F G H I J) (h4 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h4 A B C D E F G H I J) (h5 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h5 A B C D E F G H I J) (h6 A B C D E F G H I J))))
(constraint (forall ((F Int) (J Int) (A Int) (B Int) (C Int) (D Int) (E Int) (G Int) (H Int) (I Int)) (let ((a!1 (and (>= (- (* 2 F) J) 1) (h6 A B C D E F G H I J)))) (=> a!1 (h7 A B C D E F G H I J)))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h7 A B C D E F G H I J) (h8 A B C D E F G H I J))))
(constraint (forall ((F Int) (J Int) (A Int) (B Int) (C Int) (D Int) (E Int) (G Int) (H Int) (I Int)) (let ((a!1 (and (<= (- (* 2 F) J) 0) (h6 A B C D E F G H I J)))) (=> a!1 (h9 A B C D E F G H I J)))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h9 A B C D E F G H I J) (h10 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h10 A B C D E F G H I J) (h11 A B C D E F G H I J))))
(constraint (forall ((G Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int) (I Int) (J Int)) (=> (and (<= G (- 1)) (h8 A B C D E F G H I J)) (h12 A B C D E F G H I J))))
(constraint (forall ((K Int) (H Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (I Int) (J Int)) (let ((a!1 (and (= K (+ (- 1) H)) (h12 A B C D E F G K I J)))) (=> a!1 (h13 A B C D E F G H I J)))))
(constraint (forall ((G Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int) (I Int) (J Int)) (=> (and (>= G 1) (h8 A B C D E F G H I J)) (h14 A B C D E F G H I J))))
(constraint (forall ((K Int) (H Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (I Int) (J Int)) (let ((a!1 (and (= K (+ (- 1) H)) (h14 A B C D E F G K I J)))) (=> a!1 (h13 A B C D E F G H I J)))))
(constraint (forall ((G Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int) (I Int) (J Int)) (=> (and (= G 0) (h8 A B C D E F G H I J)) (h15 A B C D E F G H I J))))
(constraint (forall ((K Int) (I Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (J Int)) (let ((a!1 (and (= K (+ (- 1) I)) (h15 A B C D E F G H K J)))) (=> a!1 (h16 A B C D E F G H I J)))))
(constraint (forall ((K Int) (G Int) (L Int) (J Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int) (I Int)) (let ((a!1 (and (= K 0) (= G 1) (= L (+ (- 1) J)) (h13 A B C D E F K H I L)))) (=> a!1 (h17 A B C D E F G H I J)))))
(constraint (forall ((G Int) (K Int) (J Int) (L Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int) (I Int)) (let ((a!1 (and (= G 0) (= K (+ (- 1) J)) (>= L 1) (h13 A B C D E F L H I K)))) (=> a!1 (h17 A B C D E F G H I J)))))
(constraint (forall ((G Int) (K Int) (J Int) (L Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int) (I Int)) (let ((a!1 (and (= G 0) (= K (+ (- 1) J)) (<= L (- 1)) (h13 A B C D E F L H I K)))) (=> a!1 (h17 A B C D E F G H I J)))))
(constraint (forall ((K Int) (G Int) (L Int) (J Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int) (I Int)) (let ((a!1 (and (= K 0) (= G 1) (= L (+ (- 1) J)) (h16 A B C D E F K H I L)))) (=> a!1 (h17 A B C D E F G H I J)))))
(constraint (forall ((G Int) (K Int) (J Int) (L Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int) (I Int)) (let ((a!1 (and (= G 0) (= K (+ (- 1) J)) (>= L 1) (h16 A B C D E F L H I K)))) (=> a!1 (h17 A B C D E F G H I J)))))
(constraint (forall ((G Int) (K Int) (J Int) (L Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int) (I Int)) (let ((a!1 (and (= G 0) (= K (+ (- 1) J)) (<= L (- 1)) (h16 A B C D E F L H I K)))) (=> a!1 (h17 A B C D E F G H I J)))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h17 A B C D E F G H I J) (h5 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h11 A B C D E F G H I J) (h18 A B C D E F G H I J))))
(constraint (forall ((H Int) (I Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (J Int)) (=> (and (<= (- H I) (- 1)) (h18 A B C D E F G H I J)) (h19 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h19 A B C D E F G H I J) false)))
(constraint (forall ((H Int) (I Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (J Int)) (=> (and (>= (- H I) 1) (h18 A B C D E F G H I J)) (h20 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h20 A B C D E F G H I J) false)))
(constraint (forall ((H Int) (I Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (J Int)) (=> (and (= H I) (h18 A B C D E F G H I J)) (h21 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h21 A B C D E F G H I J) (h22 A B C D E F G H I J))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (h22 A B C D E F G H I J) (h23 A B C D E F G H I J))))

(check-synth)

