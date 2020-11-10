(set-logic BV)

(define-fun origCir ((i_4 Bool) (i_3 Bool) (i_2 Bool) (i_6 Bool) (i_7 Bool)) Bool
    (and (and (not (and (not (and i_7 i_6)) (not i_3))) i_4) (not (and (and (xor (not i_2) i_6) i_3) (or (not i_6) i_7)))))
(synth-fun skel ((i_4 Bool) (i_3 Bool) (i_2 Bool) (i_6 Bool) (i_7 Bool)) Bool
    ((Start Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_4 i_3 i_2 i_6 i_7))))

(declare-var i_4 Bool)
(declare-var i_3 Bool)
(declare-var i_2 Bool)
(declare-var i_6 Bool)
(declare-var i_7 Bool)
(constraint (= (origCir i_4 i_3 i_2 i_6 i_7) (skel i_4 i_3 i_2 i_6 i_7)))

(check-synth)

