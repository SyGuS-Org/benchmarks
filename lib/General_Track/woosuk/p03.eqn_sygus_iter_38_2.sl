(set-logic BV)

(define-fun origCir ((i22 Bool) (i21 Bool) (i20 Bool) (i23 Bool)) Bool
    (and (and (and (not i21) (not i20)) (not i22)) (not i23)))
(synth-fun skel ((i22 Bool) (i21 Bool) (i20 Bool) (i23 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i22 i21 i20 i23))))

(declare-var i22 Bool)
(declare-var i21 Bool)
(declare-var i20 Bool)
(declare-var i23 Bool)
(constraint (= (origCir i22 i21 i20 i23) (skel i22 i21 i20 i23)))

(check-synth)

