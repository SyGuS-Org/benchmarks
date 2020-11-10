(set-logic BV)

(define-fun origCir ((i38 Bool) (i6 Bool) (i5 Bool) (i37 Bool) (i36 Bool) (i4 Bool)) Bool
    (and (xor (xor i38 i6) (and i37 i5)) (and (xor i37 i5) (and i36 i4))))
(synth-fun skel ((i38 Bool) (i6 Bool) (i5 Bool) (i37 Bool) (i36 Bool) (i4 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i38 i6 i5 i37 i36 i4))))

(declare-var i38 Bool)
(declare-var i6 Bool)
(declare-var i5 Bool)
(declare-var i37 Bool)
(declare-var i36 Bool)
(declare-var i4 Bool)
(constraint (= (origCir i38 i6 i5 i37 i36 i4) (skel i38 i6 i5 i37 i36 i4)))

(check-synth)

