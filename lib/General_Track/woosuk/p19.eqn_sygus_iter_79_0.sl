(set-logic BV)

(define-fun origCir ((i22 Bool) (i21 Bool) (i20 Bool)) Bool
    (and (not (and (not i22) i21)) (not (and (not i21) i20))))
(synth-fun skel ((i22 Bool) (i21 Bool) (i20 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i22 i21 i20))))

(declare-var i22 Bool)
(declare-var i21 Bool)
(declare-var i20 Bool)
(constraint (= (origCir i22 i21 i20) (skel i22 i21 i20)))

(check-synth)

