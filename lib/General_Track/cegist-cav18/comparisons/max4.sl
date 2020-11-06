(set-logic BV)

(synth-fun max4 ((x (_ BitVec 32)) (y (_ BitVec 32)) (z (_ BitVec 32)) (w (_ BitVec 32))) (_ BitVec 32))

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(declare-var z (_ BitVec 32))
(declare-var w (_ BitVec 32))
(constraint (bvuge (max4 x y z w) x))
(constraint (bvuge (max4 x y z w) y))
(constraint (bvuge (max4 x y z w) z))
(constraint (bvuge (max4 x y z w) w))
(constraint (or (= x (max4 x y z w)) (or (= y (max4 x y z w)) (or (= z (max4 x y z w)) (= w (max4 x y z w))))))

(check-synth)

