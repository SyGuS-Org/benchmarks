(set-logic BV)

(define-fun origCir ((i23 Bool) (i22 Bool) (i21 Bool) (i20 Bool)) Bool
    (and (and (and (not i22) (not i21)) (not i23)) (not i20)))
(synth-fun skel ((i23 Bool) (i22 Bool) (i21 Bool) (i20 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i23 i22 i21 i20))))

(declare-var i23 Bool)
(declare-var i22 Bool)
(declare-var i21 Bool)
(declare-var i20 Bool)
(constraint (= (origCir i23 i22 i21 i20) (skel i23 i22 i21 i20)))

(check-synth)

