(set-logic CHC_LIA)

(synth-fun h1 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h2 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h3 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h4 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h5 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h6 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h7 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h8 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h9 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h10 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h11 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h12 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h13 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h14 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h15 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h16 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h17 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h18 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h19 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h20 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h21 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h22 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h23 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h24 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h25 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h26 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(synth-fun h27 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int)) Bool)

(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (= 1 1) (h1 A B C D A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h1 A B C D E F G H) (h2 A B C D E F G H))))
(constraint (forall ((E Int) (A Int) (B Int) (C Int) (D Int) (F Int) (G Int) (H Int)) (=> (and (>= E 0) (h2 A B C D E F G H)) (h3 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h3 A B C D E F G H) (h4 A B C D E F G H))))
(constraint (forall ((F Int) (A Int) (B Int) (C Int) (D Int) (E Int) (G Int) (H Int)) (=> (and (>= F 0) (h4 A B C D E F G H)) (h5 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h5 A B C D E F G H) (h6 A B C D E F G H))))
(constraint (forall ((E Int) (F Int) (A Int) (B Int) (C Int) (D Int) (G Int) (H Int)) (=> (and (>= (- E F) 1) (h6 A B C D E F G H)) (h7 A B C D E F G H))))
(constraint (forall ((G Int) (F Int) (H Int) (A Int) (B Int) (C Int) (D Int) (E Int) (I Int) (J Int)) (=> (and (= G 0) (= F H) (h7 A B C D E F I J)) (h8 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h8 A B C D E F G H) (h9 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h9 A B C D E F G H) (h10 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h10 A B C D E F G H) (h11 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h11 A B C D E F G H) (h12 A B C D E F G H))))
(constraint (forall ((E Int) (G Int) (A Int) (B Int) (C Int) (D Int) (F Int) (H Int)) (=> (and (>= (- E G) 1) (h12 A B C D E F G H)) (h13 A B C D E F G H))))
(constraint (forall ((I Int) (G Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (H Int)) (let ((a!1 (and (= I (+ (- 1) G)) (h13 A B C D E F I H)))) (=> a!1 (h14 A B C D E F G H)))))
(constraint (forall ((E Int) (G Int) (A Int) (B Int) (C Int) (D Int) (F Int) (H Int)) (=> (and (<= (- E G) 0) (h12 A B C D E F G H)) (h15 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h15 A B C D E F G H) (h16 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h16 A B C D E F G H) (h17 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h14 A B C D E F G H) (h18 A B C D E F G H))))
(constraint (forall ((F Int) (G Int) (A Int) (B Int) (C Int) (D Int) (E Int) (H Int)) (=> (and (<= (- F G) (- 1)) (h18 A B C D E F G H)) (h19 A B C D E F G H))))
(constraint (forall ((I Int) (H Int) (A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int)) (let ((a!1 (and (= I (+ (- 1) H)) (h19 A B C D E F G I)))) (=> a!1 (h20 A B C D E F G H)))))
(constraint (forall ((F Int) (G Int) (A Int) (B Int) (C Int) (D Int) (E Int) (H Int)) (=> (and (>= (- F G) 0) (h18 A B C D E F G H)) (h21 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h21 A B C D E F G H) (h11 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h20 A B C D E F G H) (h11 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h17 A B C D E F G H) (h22 A B C D E F G H))))
(constraint (forall ((E Int) (H Int) (A Int) (B Int) (C Int) (D Int) (F Int) (G Int)) (=> (and (>= (- E H) 1) (h22 A B C D E F G H)) (h23 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h23 A B C D E F G H) false)))
(constraint (forall ((E Int) (H Int) (A Int) (B Int) (C Int) (D Int) (F Int) (G Int)) (=> (and (<= (- E H) (- 1)) (h22 A B C D E F G H)) (h24 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h24 A B C D E F G H) false)))
(constraint (forall ((E Int) (H Int) (A Int) (B Int) (C Int) (D Int) (F Int) (G Int)) (=> (and (= E H) (h22 A B C D E F G H)) (h25 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h25 A B C D E F G H) (h26 A B C D E F G H))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (h26 A B C D E F G H) (h27 A B C D E F G H))))

(check-synth)

