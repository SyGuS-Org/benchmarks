(set-logic BV)

(define-fun origCir ((i25 Bool) (i24 Bool) (i23 Bool)) Bool
    (and (not (and (not i25) i24)) (not (and (not i24) i23))))
(synth-fun skel ((i25 Bool) (i24 Bool) (i23 Bool)) Bool
    ((Start Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i25 i24 i23))))

(declare-var i25 Bool)
(declare-var i24 Bool)
(declare-var i23 Bool)
(constraint (= (origCir i25 i24 i23) (skel i25 i24 i23)))

(check-synth)

