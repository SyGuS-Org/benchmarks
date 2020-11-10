(set-logic BV)

(define-fun origCir ((n155 Bool) (n132 Bool) (n135 Bool) (n128 Bool)) Bool
    (and n155 (and (and n135 (not n132)) (not n128))))
(synth-fun skel ((n155 Bool) (n132 Bool) (n135 Bool) (n128 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n132 n128))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n135))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n155))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n155 Bool)
(declare-var n132 Bool)
(declare-var n135 Bool)
(declare-var n128 Bool)
(constraint (= (origCir n155 n132 n135 n128) (skel n155 n132 n135 n128)))

(check-synth)

