(set-logic BV)

(define-fun origCir ((i16 Bool) (i15 Bool) (i14 Bool)) Bool
    (and (not (and (not i16) i15)) (not (and (not i15) i14))))
(synth-fun skel ((i16 Bool) (i15 Bool) (i14 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i16 i15 i14))))

(declare-var i16 Bool)
(declare-var i15 Bool)
(declare-var i14 Bool)
(constraint (= (origCir i16 i15 i14) (skel i16 i15 i14)))

(check-synth)

