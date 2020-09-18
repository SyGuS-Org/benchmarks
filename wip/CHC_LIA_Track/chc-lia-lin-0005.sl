(set-logic CHC_LIA)

(synth-fun state ((x_0 Int) (x_1 Int) (x_2 Int) (x_3 Int)) Bool)

(constraint (forall ((t1.i Int) (t1.k Int) (t2.j Int) (t2.k Int)) (=> (and (= t1.i 1) (= t1.k 0) (= t2.j 1) (= t2.k 0)) (state t1.i t1.k t2.j t2.k))))
(constraint (forall ((t1.i Int) (t1.k Int) (t2.j Int) (t2.k Int) (t1.i.next Int) (t1.k.next Int) (t1.EVENT.0 Bool) (t2.EVENT.0 Bool) (t2.j.next Int) (t2.k.next Int)) (let ((a!1 (= (+ t1.i t2.j (* (- 1) t1.i.next)) 0)) (a!2 (= (+ t1.k (* (- 1) t1.k.next)) (- 1))) (a!3 (= (+ t1.i t2.j (* (- 1) t2.j.next)) 0)) (a!4 (= (+ t2.k (* (- 1) t2.k.next)) (- 1)))) (let ((a!5 (and (state t1.i t1.k t2.j t2.k) (or (not (<= 5 t1.k)) (and (= t1.i t1.i.next) (= t1.k t1.k.next)) (not t1.EVENT.0)) (or (and (= t1.i t1.i.next) (= t1.k t1.k.next)) t1.EVENT.0) (or (not t1.EVENT.0) (not t2.EVENT.0)) (or (not t1.EVENT.0) (<= 5 t1.k) (and a!1 a!2)) (or t2.EVENT.0 (and (= t2.j t2.j.next) (= t2.k t2.k.next))) (or (not t2.EVENT.0) (and a!3 a!4) (<= 5 t2.k)) (or (not t2.EVENT.0) (and (= t2.j t2.j.next) (= t2.k t2.k.next)) (not (<= 5 t2.k)))))) (=> a!5 (state t1.i.next t1.k.next t2.j.next t2.k.next))))))
(constraint (forall ((t1.i Int) (t1.k Int) (t2.j Int) (t2.k Int)) (let ((a!1 (not (or (not (<= t1.i 144)) (not (<= t2.j 144)))))) (=> (and (state t1.i t1.k t2.j t2.k) (not a!1)) false))))

(check-synth)

