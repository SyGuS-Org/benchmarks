(set-logic BV)

(synth-inv inv-f ((x (_ BitVec 32)))
 )

(define-fun pre-f ((x (_ BitVec 32))) Bool
    (= x x)
)

(define-fun trans-f ((x (_ BitVec 32))(x! (_ BitVec 32))) Bool
    (and (bvult x #x0fffffff) (= x! (bvadd x #x00000001)))
)

(define-fun post-f ((x (_ BitVec 32))) Bool
    (bvuge x #x0fffffff)
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


