(set-logic BV)

(define-fun origCir ((i_4 Bool) (i_7 Bool) (i_5 Bool) (i_8 Bool)) Bool
    (and (not (and (and (not i_7) i_5) i_4)) i_8))
(synth-fun skel ((i_4 Bool) (i_7 Bool) (i_5 Bool) (i_8 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_4 i_7 i_5 i_8))))

(declare-var i_4 Bool)
(declare-var i_7 Bool)
(declare-var i_5 Bool)
(declare-var i_8 Bool)
(constraint (= (origCir i_4 i_7 i_5 i_8) (skel i_4 i_7 i_5 i_8)))

(check-synth)

