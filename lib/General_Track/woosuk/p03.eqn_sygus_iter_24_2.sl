(set-logic BV)

(define-fun origCir ((i26 Bool) (i25 Bool) (i24 Bool) (i27 Bool)) Bool
    (and (and (and (not i25) (not i24)) (not i26)) (not i27)))
(synth-fun skel ((i26 Bool) (i25 Bool) (i24 Bool) (i27 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i26 i25 i24 i27))))

(declare-var i26 Bool)
(declare-var i25 Bool)
(declare-var i24 Bool)
(declare-var i27 Bool)
(constraint (= (origCir i26 i25 i24 i27) (skel i26 i25 i24 i27)))

(check-synth)

