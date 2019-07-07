(set-logic BV)

(define-fun origCir ((n335 Bool) (n352 Bool) (n349 Bool) (n312 Bool)) Bool
    (and (xor (and n352 n349) n335) n312))
(synth-fun skel ((n335 Bool) (n352 Bool) (n349 Bool) (n312 Bool)) Bool
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n352))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n335 n349))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n312))))

(declare-var n335 Bool)
(declare-var n352 Bool)
(declare-var n349 Bool)
(declare-var n312 Bool)
(constraint (= (origCir n335 n352 n349 n312) (skel n335 n352 n349 n312)))

(check-synth)

