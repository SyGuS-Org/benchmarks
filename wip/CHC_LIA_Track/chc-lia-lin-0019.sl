(set-logic CHC_LIA)

(synth-fun REC_f_ ((x_0 Int) (x_1 Int)) Bool)

(synth-fun REC_f_f ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun REC__f ((x_0 Int) (x_1 Int)) Bool)

(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (let ((a!1 (and (not (= (+ A B) C)) (= (+ A (- 1)) D) (REC_f_ D B) (<= C 1) (not (<= A 1)) (= A C)))) (=> a!1 false))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int) (E Int) (F Int)) (let ((a!1 (not (= (+ A B) (+ C (- 1) C D))))) (let ((a!2 (and a!1 (= (+ A (- 1)) E) (= (+ C (- 2)) F) (REC_f_f E B F D) (not (<= C 1)) (not (<= A 1)) (= A C)))) (=> a!2 false)))))
(constraint (forall ((A Int) (B Int) (C Int) (D Int)) (let ((a!1 (not (= A (+ B (- 1) B C))))) (let ((a!2 (and a!1 (= (+ B (- 2)) D) (REC__f D C) (not (<= B 1)) (<= A 1) (= A B)))) (=> a!2 false)))))
(constraint (forall ((B Int) (D Int) (C Int) (E Int) (A Int)) (let ((a!1 (and (= (+ B (- 1) B D) C) (= (+ B (- 2)) E) (REC__f E D) (not (<= B 1)) (<= A 1)))) (=> a!1 (REC_f_f A A B C)))))
(constraint (forall ((B Int) (A Int)) (=> (and (<= B 1) (<= A 1)) (REC_f_f A A B B))))
(constraint (forall ((A Int) (E Int) (B Int) (C Int) (F Int) (D Int) (G Int) (H Int)) (let ((a!1 (and (= (+ A E) B) (= (+ C (- 1) C F) D) (= (+ A (- 1)) G) (= (+ C (- 2)) H) (REC_f_f G E H F) (not (<= C 1)) (not (<= A 1))))) (=> a!1 (REC_f_f A B C D)))))
(constraint (forall ((A Int) (D Int) (B Int) (E Int) (C Int)) (let ((a!1 (and (= (+ A D) B) (= (+ A (- 1)) E) (REC_f_ E D) (<= C 1) (not (<= A 1))))) (=> a!1 (REC_f_f A B C C)))))
(constraint (forall ((A Int)) (=> (<= A 1) (REC_f_ A A))))
(constraint (forall ((A Int) (C Int) (B Int) (D Int)) (let ((a!1 (and (= (+ A C) B) (= (+ A (- 1)) D) (REC_f_ D C) (not (<= A 1))))) (=> a!1 (REC_f_ A B)))))
(constraint (forall ((A Int)) (=> (<= A 1) (REC__f A A))))
(constraint (forall ((A Int) (C Int) (B Int) (D Int)) (let ((a!1 (and (= (+ A (- 1) A C) B) (= (+ A (- 2)) D) (REC__f D C) (not (<= A 1))))) (=> a!1 (REC__f A B)))))

(check-synth)

