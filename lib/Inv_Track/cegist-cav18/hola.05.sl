(set-logic BV)

(synth-inv inv-f ((x (_ BitVec 32))(y (_ BitVec 32))(i (_ BitVec 32))(j (_ BitVec 32)))
 )

(define-fun pre-f ((x (_ BitVec 32))(y (_ BitVec 32))(i (_ BitVec 32))(j (_ BitVec 32))) Bool
    (and (= j #x00000000) (and (= i #x00000000) (and (= x #x00000000) (= y #x00000000))))
)

(define-fun trans-f ((x (_ BitVec 32))(y (_ BitVec 32))(i (_ BitVec 32))(j (_ BitVec 32))(x! (_ BitVec 32))(y! (_ BitVec 32))(i! (_ BitVec 32))(j! (_ BitVec 32))) Bool
    (and (= x! (bvadd x #x00000001)) (and (= y! (bvadd y #x00000001)) (and (= i! (bvadd i (bvadd x #x00000001))) (or (= j! (bvadd j (bvadd y #x00000001))) (= j! (bvadd j (bvadd y #x00000002)))))))
)

(define-fun post-f ((x (_ BitVec 32))(y (_ BitVec 32))(i (_ BitVec 32))(j (_ BitVec 32))) Bool
    (bvuge j i)
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


