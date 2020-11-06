(set-logic BV)

(define-fun origCir ((i_9 Bool) (i_7 Bool) (i_6 Bool) (i_8 Bool)) Bool
    (and (not (and (not (and i_7 (not i_6))) (not i_9))) i_8))
(synth-fun skel ((i_9 Bool) (i_7 Bool) (i_6 Bool) (i_8 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_9 i_7 i_6 i_8))))

(declare-var i_9 Bool)
(declare-var i_7 Bool)
(declare-var i_6 Bool)
(declare-var i_8 Bool)
(constraint (= (origCir i_9 i_7 i_6 i_8) (skel i_9 i_7 i_6 i_8)))

(check-synth)

