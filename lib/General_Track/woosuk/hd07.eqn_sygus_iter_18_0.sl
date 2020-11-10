(set-logic BV)

(define-fun origCir ((i18 Bool) (i17 Bool) (i16 Bool)) Bool
    (and (not (and (not i18) i17)) (not (and (not i17) i16))))
(synth-fun skel ((i18 Bool) (i17 Bool) (i16 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i18 i17 i16))))

(declare-var i18 Bool)
(declare-var i17 Bool)
(declare-var i16 Bool)
(constraint (= (origCir i18 i17 i16) (skel i18 i17 i16)))

(check-synth)

