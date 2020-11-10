(set-logic BV)

(define-fun origCir ((n207 Bool) (n254 Bool) (n325 Bool) (n213 Bool)) Bool
    (and (xor n325 (not (and n254 n207))) n213))
(synth-fun skel ((n207 Bool) (n254 Bool) (n325 Bool) (n213 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n207 n325))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n254))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n213))))

(declare-var n207 Bool)
(declare-var n254 Bool)
(declare-var n325 Bool)
(declare-var n213 Bool)
(constraint (= (origCir n207 n254 n325 n213) (skel n207 n254 n325 n213)))

(check-synth)

