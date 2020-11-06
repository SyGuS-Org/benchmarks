(set-logic BV)

(synth-fun f1 ((x (_ BitVec 32))) (_ BitVec 32))

(synth-fun f2 ((x (_ BitVec 32))) (_ BitVec 32))

(declare-var x (_ BitVec 32))
(constraint (= (bvadd (f1 x) (f2 x)) (bvadd (bvadd x x) (bvadd x #x00000008))))
(constraint (= (bvsub (f2 x) (f1 x)) (bvadd x #x00000002)))

(check-synth)

