(set-logic BV)

(define-fun origCir ((n265 Bool) (n260 Bool) (n256 Bool) (n252 Bool)) Bool
    (xor (and n265 (xor (and n260 (not (xor n256 n252))) (xor n256 n252))) (xor (and n260 (not (xor n256 n252))) (xor n256 n252))))
(synth-fun skel ((n265 Bool) (n260 Bool) (n256 Bool) (n252 Bool)) Bool
    ((Start Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n256))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n265 n260 n252))))

(declare-var n265 Bool)
(declare-var n260 Bool)
(declare-var n256 Bool)
(declare-var n252 Bool)
(constraint (= (origCir n265 n260 n256 n252) (skel n265 n260 n256 n252)))

(check-synth)

