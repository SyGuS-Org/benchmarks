(set-logic BV)

(synth-fun f1 ((x (_ BitVec 32))) (_ BitVec 32))

(synth-fun f2 ((x (_ BitVec 32))) (_ BitVec 32))

(declare-var x1 (_ BitVec 32))
(declare-var x2 (_ BitVec 32))
(constraint (= (bvadd (f1 x1) (f2 x2)) (bvadd (bvadd x2 x2) (bvadd x1 #x00000008))))

(check-synth)

