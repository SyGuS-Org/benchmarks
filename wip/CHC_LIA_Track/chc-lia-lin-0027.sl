(set-logic CHC_LIA)

(synth-fun h1 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h2 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h3 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h4 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h5 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h6 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h7 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h8 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h9 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h10 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h11 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h12 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h13 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h14 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h15 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h16 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h17 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h18 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h19 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun h20 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(constraint (forall ((A Int) (B Int)) (=> (= 1 1) (h1 A B A B))))
(constraint (forall ((D Int) (A Int) (B Int) (C Int) (E Int)) (=> (and (= D 0) (h1 A B C E)) (h2 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h2 A B C D) (h3 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h3 A B C D) (h4 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h4 A B C D) (h5 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h5 A B C D) (h6 A B C D))))
(constraint (forall ((C Int) (D Int) (A Int) (B Int)) (=> (and (>= (- C D) 1) (h6 A B C D)) (h7 A B C D))))
(constraint (forall ((E Int) (D Int) (A Int) (B Int) (C Int)) (let ((a!1 (and (= E (+ (- 1) D)) (h7 A B C E)))) (=> a!1 (h8 A B C D)))))
(constraint (forall ((C Int) (D Int) (A Int) (B Int)) (=> (and (<= (- C D) 0) (h6 A B C D)) (h9 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h9 A B C D) (h10 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h10 A B C D) (h11 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h8 A B C D) (h5 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h11 A B C D) (h12 A B C D))))
(constraint (forall ((C Int) (A Int) (B Int) (D Int)) (=> (and (>= C 1) (h12 A B C D)) (h13 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h13 A B C D) (h14 A B C D))))
(constraint (forall ((C Int) (A Int) (B Int) (D Int)) (=> (and (<= C 0) (h12 A B C D)) (h15 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h15 A B C D) (h16 A B C D))))
(constraint (forall ((C Int) (D Int) (A Int) (B Int)) (=> (and (>= (- C D) 1) (h14 A B C D)) (h17 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h17 A B C D) false)))
(constraint (forall ((C Int) (D Int) (A Int) (B Int)) (=> (and (<= (- C D) (- 1)) (h14 A B C D)) (h18 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h18 A B C D) false)))
(constraint (forall ((C Int) (D Int) (A Int) (B Int)) (=> (and (= C D) (h14 A B C D)) (h19 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h19 A B C D) (h16 A B C D))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (=> (h16 A B C D) (h20 A B C D))))

(check-synth)

