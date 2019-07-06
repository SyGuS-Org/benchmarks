(set-logic BV)

(synth-inv inv-f ((x1 (BitVec 32))(x2 (BitVec 32))(x3 (BitVec 32))))

(declare-primed-var x1 (BitVec 32))

(declare-primed-var x2 (BitVec 32))

(declare-primed-var x3 (BitVec 32))

(define-fun pre-f ((x1 (BitVec 32))(x2 (BitVec 32))(x3 (BitVec 32))) Bool
    (and (= x1 #x00000000) (and (= x2 #x00000000) (= x3 #x00000000)))
)

(define-fun trans-f ((x1 (BitVec 32))(x2 (BitVec 32))(x3 (BitVec 32))(x1! (BitVec 32))(x2! (BitVec 32))(x3! (BitVec 32))) Bool
    (and (bvsle x1! x2!) (or (bvsge x2! #x00000000) (bvsle (bvsub x2! x3!) #x00000002)))
)

(define-fun post-f ((x1 (BitVec 32))(x2 (BitVec 32))(x3 (BitVec 32))) Bool
    (and (bvsle x1 x2) (or (bvsge x2 #x00000000) (bvsle (bvsub x2 x3) #x00000002)))
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


