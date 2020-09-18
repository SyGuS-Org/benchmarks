(set-logic CHC_LIA)

(synth-fun main@tailrecurse.i5 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int)) Bool)

(synth-fun main@entry () Bool)

(synth-fun main@tailrecurse.outer.i ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun main@tailrecurse.i ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(synth-fun main@mult.exit6.split () Bool)

(synth-fun main@tailrecurse.outer.i3 ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int) (x_4 Int)) Bool)

(constraint (forall ((CHC_COMP_UNUSED Bool)) (=> (and true) main@entry)))
(constraint (forall ((A Bool) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (and main@entry (let ((a!1 (= A (or (not (<= G 46340)) (not (>= G 0))))) (a!2 (= B (or (not (<= H 46340)) (not (>= H 0)))))) (and a!1 (or (not E) (not D) (= F H)) (or (not E) (not D) (= C 0)) (or (not E) (not D) (= I C)) (or (not E) (not D) (= J F)) (or (not D) (and E D)) (not B) (= D true) (not A) a!2))) (main@tailrecurse.outer.i G H I J))))
(constraint (forall ((A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int)) (=> (and (main@tailrecurse.outer.i E F G A) (and (or (not C) (not B) (= H D)) (or (not B) (and C B)) (= B true) (or (not C) (not B) (= D A)))) (main@tailrecurse.i E F G H))))
(constraint (forall ((A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int)) (=> (and (main@tailrecurse.i P Q I C) (and (= A (* (- 1) C)) (or (not F) (not D) (= H E)) (or (not F) (not D) (= E C)) (or (not N) (not M) (= O K)) (or (not N) (not M) (= L J)) (or (not N) (not M) (= R L)) (or (not N) (not M) (= S O)) (or (not N) (not G) (not F)) (or (not B) (not F) (not D)) (or (not F) (= G (= H 0))) (or (not F) (and F D)) (or (not M) (and N M)) (or (not N) (= K (+ (- 1) H))) (or (not N) (= J (+ I P))) (or (not N) (and N F)) (= M true) (= B (not (<= 0 C))))) (main@tailrecurse.outer.i P Q R S))))
(constraint (forall ((A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int)) (=> (and (main@tailrecurse.i G H I A) (and (= C (* (- 1) A)) (or (not E) (not D) (= F C)) (or (not E) (not D) (= J F)) (or (not E) (not D) B) (or (not D) (and E D)) (= D true) (= B (not (<= 0 A))))) (main@tailrecurse.i G H I J))))
(constraint (forall ((A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Bool) (J Int) (K Int) (L Bool) (M Bool) (N Int) (O Int) (P Int) (Q Int) (R Int) (S Int)) (=> (and (main@tailrecurse.i P Q H C) (and (= A (* (- 1) C)) (or (not I) (not D) (= E C)) (or (not I) (not D) (= F E)) (or (not M) (not L) (= K 0)) (or (not M) (not L) (= N P)) (or (not M) (not L) (= R K)) (or (not M) (not L) (= S N)) (or (not M) (not I) (= O J)) (or (not M) (not I) (= J H)) (or G (not M) (not I)) (or (not B) (not I) (not D)) (or (not L) (and M L)) (or (not I) (= G (= F 0))) (or (not I) (and I D)) (or (not M) (and M I)) (= L true) (= B (not (<= 0 C))))) (main@tailrecurse.outer.i3 O P Q R S))))
(constraint (forall ((A Int) (B Bool) (C Bool) (D Int) (E Int) (F Int) (G Int) (H Int) (I Int)) (=> (and (main@tailrecurse.outer.i3 E F G H A) (and (or (not C) (not B) (= I D)) (or (not B) (and C B)) (= B true) (or (not C) (not B) (= D A)))) (main@tailrecurse.i5 E F G H I))))
(constraint (forall ((A Int) (B Bool) (C Int) (D Bool) (E Int) (F Bool) (G Bool) (H Int) (I Int) (J Int) (K Int) (L Int) (M Bool) (N Bool) (O Int) (P Int) (Q Int) (R Int) (S Int) (T Int)) (=> (and (main@tailrecurse.i5 P Q R I C) (and (= A (* (- 1) C)) (or (not D) (not F) (= H E)) (or (not D) (not F) (= E C)) (or (not N) (not F) (not G)) (or (not N) (not M) (= L J)) (or (not N) (not M) (= O K)) (or (not N) (not M) (= S L)) (or (not N) (not M) (= T O)) (or (not B) (not D) (not F)) (or (not F) (= G (= H 0))) (or (not F) (and D F)) (or (not M) (and N M)) (or (not N) (= J (+ I R))) (or (not N) (= K (+ (- 1) H))) (or (not N) (and N F)) (= M true) (= B (not (<= 0 C))))) (main@tailrecurse.outer.i3 P Q R S T))))
(constraint (forall ((A Int) (B Bool) (C Int) (D Bool) (E Bool) (F Int) (G Int) (H Int) (I Int) (J Int) (K Int)) (=> (and (main@tailrecurse.i5 G H I J A) (and (= C (* (- 1) A)) (or (not E) (not D) (= F C)) (or (not E) (not D) (= K F)) (or B (not E) (not D)) (or (not D) (and E D)) (= D true) (= B (not (<= 0 A))))) (main@tailrecurse.i5 G H I J K))))
(constraint (forall ((A Int) (B Bool) (C Int) (D Bool) (E Int) (F Int) (G Bool) (H Int) (I Bool) (J Int) (K Int) (L Int) (M Int) (N Bool) (O Bool) (P Int) (Q Bool) (R Bool) (S Bool) (T Bool) (U Bool)) (=> (and (main@tailrecurse.i5 K M P H C) (let ((a!1 (or (not T) (= N (not (<= M 0))))) (a!2 (or (not T) (= O (not (= K L))))) (a!3 (or (not T) (= Q (not (<= P 0)))))) (and (= A (* (- 1) C)) (or (not I) (not T) (= J H)) (or (not I) (not T) (= L J)) (or (not I) G (not T)) (or (not D) (not I) (= E C)) (or (not D) (not I) (= F E)) (or (not D) (not I) (not B)) (or (not U) (and T U)) a!1 a!2 a!3 (or (not T) (= S (and R Q))) (or (not T) (= R (and O N))) (or (not T) (and I T)) (or (not I) (= G (= F 0))) (or (not I) (and D I)) (or S (not T)) (= U true) (= B (not (<= 0 C)))))) main@mult.exit6.split)))
(constraint (forall ((CHC_COMP_UNUSED Bool)) (=> (and main@mult.exit6.split true) false)))

(check-synth)

