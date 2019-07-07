(set-logic BV)

(synth-fun f1 ((x (BitVec 32))) (BitVec 32))

(synth-fun f2 ((x (BitVec 32))) (BitVec 32))

(declare-var x1 (BitVec 32))
(declare-var x2 (BitVec 32))
(constraint (= (bvadd (f1 x1) (f2 x2)) (bvadd (bvadd x2 x2) (bvadd x1 #x00000008))))

(check-synth)

