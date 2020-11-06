(set-logic BV)

(define-fun origCir ((i_7 Bool) (i_15 Bool) (i_9 Bool) (i_17 Bool) (i_16 Bool) (i_8 Bool)) Bool
    (and (not (xor i_15 (not i_7))) (and (and i_17 i_9) (xor i_16 i_8))))
(synth-fun skel ((i_7 Bool) (i_15 Bool) (i_9 Bool) (i_17 Bool) (i_16 Bool) (i_8 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_7 i_15 i_9 i_17 i_16 i_8))))

(declare-var i_7 Bool)
(declare-var i_15 Bool)
(declare-var i_9 Bool)
(declare-var i_17 Bool)
(declare-var i_16 Bool)
(declare-var i_8 Bool)
(constraint (= (origCir i_7 i_15 i_9 i_17 i_16 i_8) (skel i_7 i_15 i_9 i_17 i_16 i_8)))

(check-synth)

