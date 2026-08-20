(set-logic BV)

(synth-inv inv-f ((x (_ BitVec 32)))
 )

(define-fun pre-f ((x (_ BitVec 32))) Bool
    (= x #x0000000A)
)

(define-fun trans-f ((x (_ BitVec 32))(x! (_ BitVec 32))) Bool
    (and (bvuge x #x0000000A) (= x! (bvadd x #x00000002)))
)

(define-fun post-f ((x (_ BitVec 32))) Bool
    (= #x00000000 (bvurem x #x00000002))
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


