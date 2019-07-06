(set-logic BV)

(define-fun qm ((a (BitVec 32))(b (BitVec 32))) (BitVec 32)
    (ite (bvult a #x00000000) b a)
)

(synth-fun qm-choose ((x (BitVec 32))) (BitVec 32)
)

(declare-var x (BitVec 32))

(constraint 
(= (qm-choose x) (ite (bvule x #x00000000) #x00000001 #x00000000))
)

(check-synth)


