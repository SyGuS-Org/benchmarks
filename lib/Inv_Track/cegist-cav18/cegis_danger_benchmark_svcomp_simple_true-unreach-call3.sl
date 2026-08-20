(set-logic BV)

(synth-inv inv-f ((x (_ BitVec 32))(N (_ BitVec 32)))
 )

(define-fun pre-f ((x (_ BitVec 32))(N (_ BitVec 32))) Bool
    (and (= x #x00000000) (= N (bvurem N #x0000FFFF)))
)

(define-fun trans-f ((x (_ BitVec 32))(N (_ BitVec 32))(x! (_ BitVec 32))(N! (_ BitVec 32))) Bool
    (and (bvult x N) (and (= x! (bvadd x #x00000002)) (= N! N)))
)

(define-fun post-f ((x (_ BitVec 32))(N (_ BitVec 32))) Bool
    (= #x00000000 (bvurem x #x00000002))
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


