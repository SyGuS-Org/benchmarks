(set-logic BV)

(synth-inv inv-f ((x (_ BitVec 32))(y (_ BitVec 32))(i (_ BitVec 32))(j (_ BitVec 32)))
 )

(define-fun pre-f ((x (_ BitVec 32))(y (_ BitVec 32))(i (_ BitVec 32))(j (_ BitVec 32))) Bool
    (and (= j #x00000000) (and (= i #x00000000) (or (= y #x00000001) (= y #x00000002))))
)

(define-fun trans-f ((x (_ BitVec 32))(y (_ BitVec 32))(i (_ BitVec 32))(j (_ BitVec 32))(x! (_ BitVec 32))(y! (_ BitVec 32))(i! (_ BitVec 32))(j! (_ BitVec 32))) Bool
    (and (bvule i x) (and (= x! x) (and (= y! y) (and (= i! (bvadd i #x00000001)) (= j! (bvadd j y))))))
)

(define-fun post-f ((x (_ BitVec 32))(y (_ BitVec 32))(i (_ BitVec 32))(j (_ BitVec 32))) Bool
    (or (bvule i x) (or (not (= y #x00000001)) (= i j)))
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


