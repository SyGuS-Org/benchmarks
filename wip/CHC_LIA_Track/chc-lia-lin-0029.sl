(set-logic CHC_LIA)

(synth-fun h1 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h2 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h3 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h4 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h5 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h6 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h7 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h8 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h9 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h10 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h11 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h12 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h13 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h14 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h15 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h16 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(synth-fun h17 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int)) Bool)

(constraint (forall ((A Int) (B Int) (C Int)) (=> (= 1 1) (h1 A B C A B C))))
(constraint (forall ((D Int) (E Int) (F Int) (A Int) (B Int) (C Int) (G Int) (H Int) (I Int)) (=> (and (= D 0) (= E 0) (= F 100) (h1 A B C G H I)) (h2 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h2 A B C D E F) (h3 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h3 A B C D E F) (h4 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h4 A B C D E F) (h5 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h5 A B C D E F) (h6 A B C D E F))))
(constraint (forall ((E Int) (F Int) (A Int) (B Int) (C Int) (D Int)) (=> (and (<= (- E F) (- 1)) (h6 A B C D E F)) (h7 A B C D E F))))
(constraint (forall ((G Int) (D Int) (H Int) (E Int) (A Int) (B Int) (C Int) (F Int)) (let ((a!1 (and (= G (+ (- 2) D)) (= H (+ (- 1) E)) (h7 A B C G H F)))) (=> a!1 (h8 A B C D E F)))))
(constraint (forall ((E Int) (F Int) (A Int) (B Int) (C Int) (D Int)) (=> (and (>= (- E F) 0) (h6 A B C D E F)) (h9 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h9 A B C D E F) (h10 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h10 A B C D E F) (h11 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h8 A B C D E F) (h5 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h11 A B C D E F) (h12 A B C D E F))))
(constraint (forall ((D Int) (F Int) (A Int) (B Int) (C Int) (E Int)) (let ((a!1 (and (<= (- D (* 2 F)) (- 1)) (h12 A B C D E F)))) (=> a!1 (h13 A B C D E F)))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h13 A B C D E F) false)))
(constraint (forall ((D Int) (F Int) (A Int) (B Int) (C Int) (E Int)) (let ((a!1 (and (>= (- D (* 2 F)) 1) (h12 A B C D E F)))) (=> a!1 (h14 A B C D E F)))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h14 A B C D E F) false)))
(constraint (forall ((D Int) (F Int) (A Int) (B Int) (C Int) (E Int)) (=> (and (= D (* 2 F)) (h12 A B C D E F)) (h15 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h15 A B C D E F) (h16 A B C D E F))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (=> (h16 A B C D E F) (h17 A B C D E F))))

(check-synth)

