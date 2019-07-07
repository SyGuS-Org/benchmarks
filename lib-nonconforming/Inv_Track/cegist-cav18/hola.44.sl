(set-logic BV)

(synth-inv inv-f ((x (BitVec 32))(y (BitVec 32))(i (BitVec 32))(j (BitVec 32)))
 )

(declare-primed-var x (BitVec 32))

(declare-primed-var y (BitVec 32))

(declare-primed-var i (BitVec 32))

(declare-primed-var j (BitVec 32))

(define-fun pre-f ((x (BitVec 32))(y (BitVec 32))(i (BitVec 32))(j (BitVec 32))) Bool
    (and (= j #x00000000) (and (= i #x00000000) (or (= y #x00000001) (= y #x00000002))))
)

(define-fun trans-f ((x (BitVec 32))(y (BitVec 32))(i (BitVec 32))(j (BitVec 32))(x! (BitVec 32))(y! (BitVec 32))(i! (BitVec 32))(j! (BitVec 32))) Bool
    (and (bvule i x) (and (= x! x) (and (= y! y) (and (= i! (bvadd i #x00000001)) (= j! (bvadd j y))))))
)

(define-fun post-f ((x (BitVec 32))(y (BitVec 32))(i (BitVec 32))(j (BitVec 32))) Bool
    (or (bvule i x) (or (not (= y #x00000001)) (= i j)))
)

(inv-constraint inv-f pre-f trans-f post-f) 
(check-synth)


