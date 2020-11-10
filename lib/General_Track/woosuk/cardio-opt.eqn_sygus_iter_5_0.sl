(set-logic BV)

(define-fun origCir ((n224 Bool) (n228 Bool) (n231 Bool) (n235 Bool) (n222 Bool)) Bool
    (and (and n235 (xor n231 (and n228 n224))) n222))
(synth-fun skel ((n224 Bool) (n228 Bool) (n231 Bool) (n235 Bool) (n222 Bool)) Bool
    ((Start Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n228 n231 n222))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n224 n235))))

(declare-var n224 Bool)
(declare-var n228 Bool)
(declare-var n231 Bool)
(declare-var n235 Bool)
(declare-var n222 Bool)
(constraint (= (origCir n224 n228 n231 n235 n222) (skel n224 n228 n231 n235 n222)))

(check-synth)

