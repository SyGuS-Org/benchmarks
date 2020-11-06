(set-logic BV)

(define-fun origCir ((i50 Bool) (i18 Bool) (i17 Bool) (i49 Bool) (i48 Bool) (i16 Bool)) Bool
    (and (xor (xor i50 i18) (and i49 i17)) (and (xor i49 i17) (and i48 i16))))
(synth-fun skel ((i50 Bool) (i18 Bool) (i17 Bool) (i49 Bool) (i48 Bool) (i16 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i50 i18 i17 i49 i48 i16))))

(declare-var i50 Bool)
(declare-var i18 Bool)
(declare-var i17 Bool)
(declare-var i49 Bool)
(declare-var i48 Bool)
(declare-var i16 Bool)
(constraint (= (origCir i50 i18 i17 i49 i48 i16) (skel i50 i18 i17 i49 i48 i16)))

(check-synth)

