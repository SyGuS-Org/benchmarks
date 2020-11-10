(set-logic BV)

(define-fun qm ((a (_ BitVec 32)) (b (_ BitVec 32))) (_ BitVec 32)
    (ite (bvult a #x00000000) b a))
(synth-fun qm-choose ((x (_ BitVec 32))) (_ BitVec 32))

(declare-var x (_ BitVec 32))
(constraint (= (qm-choose x) (ite (bvule x #x00000000) #x00000001 #x00000000)))

(check-synth)

