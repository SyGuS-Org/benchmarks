(set-logic BV)

(synth-inv inv-f ((x (BitVec 32))(y (BitVec 32))(n (BitVec 32)))
 )

(declare-primed-var x (BitVec 32))

(declare-primed-var y (BitVec 32))

(declare-primed-var n (BitVec 32))

(define-fun pre-f ((x (BitVec 32))(y (BitVec 32))(n (BitVec 32))) Bool
    (and (bvuge n #x00000000) (and (= x n) (= y #x00000000)))
)

(define-fun trans-f ((x (BitVec 32))(y (BitVec 32))(n (BitVec 32))(x! (BitVec 32))(y! (BitVec 32))(n! (BitVec 32))) Bool
    (and (bvugt x #x00000000) (and (= n! n) (and (= y! (bvadd y #x00000001)) (= x! ( bvsub x #x00000001)))))
)

(define-fun post-f ((x (BitVec 32))(y (BitVec 32))(n (BitVec 32))) Bool
    (or (bvugt x #x00000000) (= n (bvadd x y)))
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


