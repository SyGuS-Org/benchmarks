(set-logic BV)

(synth-inv inv-f ((x (_ BitVec 32))(y (_ BitVec 32)))
 )

(define-fun pre-f ((x (_ BitVec 32))(y (_ BitVec 32))) Bool
    (and (= x #x00000000) (= y #x00000001))
)

(define-fun trans-f ((x (_ BitVec 32))(y (_ BitVec 32))(x! (_ BitVec 32))(y! (_ BitVec 32))) Bool
    (and (bvult x #x00000006) (and (= x! (bvadd x #x00000001)) (= y! (bvmul y #x00000002))))
)

(define-fun post-f ((x (_ BitVec 32))(y (_ BitVec 32))) Bool
    (= #x00000006 x)
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


