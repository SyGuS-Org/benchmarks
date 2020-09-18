(set-logic CHC_LIA)

(synth-fun INV1 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int) (x_5 Int) (x_6 Int) (x_7 Int) (x_8 Int) (x_9 Int)) Bool)

(constraint (forall ((K Int) (E Int) (L Int) (F Int) (G Int) (H Int) (A Int) (B Int) (C Int) (D Int) (M Int) (I Int) (J Int)) (let ((a!1 (not (>= (+ A (- 1)) 0)))) (let ((a!2 (and (= (+ K (- 1)) E) (= (+ L F) G) (= (+ L F) H) a!1 (>= (+ K (- 1)) 0) (INV1 A B C D K L F M I J) (= J (+ I (- 1)))))) (=> a!2 (INV1 A B C D E F G H I J))))))
(constraint (forall ((K Int) (A Int) (L Int) (B Int) (C Int) (D Int) (M Int) (E Int) (N Int) (F Int) (G Int) (H Int) (O Int) (P Int) (I Int) (J Int)) (let ((a!1 (and (= (+ K (- 1)) A) (= (+ L B) C) (= (+ L B) D) (= (+ M (- 1)) E) (= (+ N F) G) (= (+ N F) H) (>= (+ K (- 1)) 0) (>= (+ M (- 1)) 0) (INV1 K L B O M N F P I J) (= J (+ I (- 1)))))) (=> a!1 (INV1 A B C D E F G H I J)))))
(constraint (forall ((K Int) (A Int) (L Int) (B Int) (C Int) (D Int) (E Int) (M Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (let ((a!1 (not (>= (+ E (- 1)) 0)))) (let ((a!2 (and (= (+ K (- 1)) A) (= (+ L B) C) (= (+ L B) D) (>= (+ K (- 1)) 0) a!1 (INV1 K L B M E F G H I J) (= J (+ I (- 1)))))) (=> a!2 (INV1 A B C D E F G H I J))))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int) (J Int)) (let ((a!1 (not (>= (+ C (- 1)) 0))) (a!2 (not (>= (+ D (- 1)) 0)))) (let ((a!3 (and (not (= A B)) a!1 a!2 (INV1 C E A F D G B H I J) (= J (+ I (- 1)))))) (=> a!3 false)))))
(constraint (forall ((B Int) (C Int) (D Int) (F Int) (G Int) (H Int) (E Int) (A Int)) (let ((a!1 (and (= (* (- 1) B) 0) (= (* (- 1) C) (- 1)) (= (* (- 1) D) 0) (= (* (- 1) F) (- 1)) (= (* (- 1) G) (- 1)) (= (* (- 1) H) 0) (= E (+ A (- 1)))))) (=> a!1 (INV1 A B C D E F G H A E)))))

(check-synth)

