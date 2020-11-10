(set-logic BV)

(synth-fun f1 ((p1 (_ BitVec 32)) (P1 (_ BitVec 32))) (_ BitVec 32))

(synth-fun f2 ((p1 (_ BitVec 32)) (P1 (_ BitVec 32))) (_ BitVec 32))

(synth-fun f3 ((p1 (_ BitVec 32)) (P1 (_ BitVec 32))) (_ BitVec 32))

(synth-fun f4 ((p1 (_ BitVec 32)) (P1 (_ BitVec 32))) (_ BitVec 32))

(synth-fun f5 ((p1 (_ BitVec 32)) (P1 (_ BitVec 32))) (_ BitVec 32))

(synth-fun g1 ((p1 (_ BitVec 32)) (P1 (_ BitVec 32))) (_ BitVec 32))

(synth-fun g2 ((p1 (_ BitVec 32)) (P1 (_ BitVec 32))) (_ BitVec 32))

(synth-fun g3 ((p1 (_ BitVec 32)) (P1 (_ BitVec 32))) (_ BitVec 32))

(synth-fun g4 ((p1 (_ BitVec 32)) (P1 (_ BitVec 32))) (_ BitVec 32))

(declare-var x (_ BitVec 32))
(declare-var y (_ BitVec 32))
(constraint (= (bvadd (f1 x y) (f1 x y)) (f2 x y)))
(constraint (= (bvsub (bvadd (f1 x y) (f2 x y)) y) (f3 x y)))
(constraint (= (bvadd (f2 x y) (f2 x y)) (f4 x y)))
(constraint (= (bvadd (f4 x y) (f1 x y)) (f5 x y)))
(constraint (= (bvsub (f1 x y) y) (g1 x y)))
(constraint (= (bvadd #x00000001 (g1 x y)) (g2 x y)))
(constraint (= (bvadd #x00000001 (g2 x y)) (g3 x y)))
(constraint (= (bvadd (g3 x y) (g3 x y)) (g4 x y)))

(check-synth)

