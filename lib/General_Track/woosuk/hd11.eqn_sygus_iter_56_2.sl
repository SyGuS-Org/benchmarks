(set-logic BV)

(define-fun origCir ((i_13 Bool) (i_16 Bool) (i_15 Bool) (i_14 Bool)) Bool
    (and (not (and (and i_14 i_13) (and i_15 i_14))) (not (and (and i_16 i_15) (and i_15 i_14)))))
(synth-fun skel ((i_13 Bool) (i_16 Bool) (i_15 Bool) (i_14 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_13 i_16 i_15 i_14))))

(declare-var i_13 Bool)
(declare-var i_16 Bool)
(declare-var i_15 Bool)
(declare-var i_14 Bool)
(constraint (= (origCir i_13 i_16 i_15 i_14) (skel i_13 i_16 i_15 i_14)))

(check-synth)

