(set-logic BV)

(synth-inv inv-f ((x (BitVec 32))(n (BitVec 32))))

(declare-primed-var x (BitVec 32))

(declare-primed-var n (BitVec 32))

(define-fun pre-f ((x (BitVec 32))(n (BitVec 32))) Bool
    (= x n)
)

(define-fun trans-f ((x (BitVec 32))(n (BitVec 32))(x! (BitVec 32))(n! (BitVec 32))) Bool
    (and (and (bvugt x #x00000000) (= x! ( bvsub x #x00000001))) (= n! n))
)

(define-fun post-f ((x (BitVec 32))(n (BitVec 32))) Bool
    (not (and (bvule x #x00000000) (and (not (= x #x00000000)) (bvuge n #x00000000))))
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


