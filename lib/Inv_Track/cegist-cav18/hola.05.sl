(set-logic BV)

(synth-inv inv-f ((x (BitVec 32))(y (BitVec 32))(i (BitVec 32))(j (BitVec 32)))
 )

(declare-primed-var x (BitVec 32))

(declare-primed-var y (BitVec 32))

(declare-primed-var i (BitVec 32))

(declare-primed-var j (BitVec 32))

(define-fun pre-f ((x (BitVec 32))(y (BitVec 32))(i (BitVec 32))(j (BitVec 32))) Bool
    (and (= j #x00000000) (and (= i #x00000000) (and (= x #x00000000) (= y #x00000000))))
)

(define-fun trans-f ((x (BitVec 32))(y (BitVec 32))(i (BitVec 32))(j (BitVec 32))(x! (BitVec 32))(y! (BitVec 32))(i! (BitVec 32))(j! (BitVec 32))) Bool
    (and (= x! (bvadd x #x00000001)) (and (= y! (bvadd y #x00000001)) (and (= i! (bvadd i (bvadd x #x00000001))) (or (= j! (bvadd j (bvadd y #x00000001))) (= j! (bvadd j (bvadd y #x00000002)))))))
)

(define-fun post-f ((x (BitVec 32))(y (BitVec 32))(i (BitVec 32))(j (BitVec 32))) Bool
    (bvuge j i)
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


