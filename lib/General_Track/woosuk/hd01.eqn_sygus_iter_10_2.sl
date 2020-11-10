(set-logic BV)

(define-fun origCir ((i18 Bool) (i17 Bool) (i16 Bool) (i19 Bool)) Bool
    (and (and (and (not i17) (not i16)) (not i18)) (not i19)))
(synth-fun skel ((i18 Bool) (i17 Bool) (i16 Bool) (i19 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i18 i17 i16 i19))))

(declare-var i18 Bool)
(declare-var i17 Bool)
(declare-var i16 Bool)
(declare-var i19 Bool)
(constraint (= (origCir i18 i17 i16 i19) (skel i18 i17 i16 i19)))

(check-synth)

