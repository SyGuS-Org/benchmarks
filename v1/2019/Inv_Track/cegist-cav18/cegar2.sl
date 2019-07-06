(set-logic BV)

(synth-inv inv-f ((x (BitVec 32))(n (BitVec 32))(m (BitVec 32)))
 )

(declare-primed-var x (BitVec 32))

(declare-primed-var n (BitVec 32))

(declare-primed-var m (BitVec 32))

(define-fun pre-f ((x (BitVec 32))(n (BitVec 32))(m (BitVec 32))) Bool
    (and (= x #x00000000) (= m #x00000000))
)

(define-fun trans-f ((x (BitVec 32))(n (BitVec 32))(m (BitVec 32))(x! (BitVec 32))(n! (BitVec 32))(m! (BitVec 32))) Bool
    (or (and (and (and (bvult x n) (= x! (bvadd x #x00000001))) (= n! n)) (= m! m)) (and (and (and (bvult x n) (= x! (bvadd x #x00000001))) (= n! n)) (= m! x)))
)

(define-fun post-f ((x (BitVec 32))(n (BitVec 32))(m (BitVec 32))) Bool
    (not (and (and (bvuge x n) (bvugt n #x00000000)) (or (bvule n m) (bvult m #x00000000))))
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


