(set-logic BV)

(define-fun origCir ((n111 Bool) (n112 Bool) (n160 Bool) (n128 Bool) (n156 Bool)) Bool
    (and (not (and (and n160 n128) (and n112 n111))) n156))
(synth-fun skel ((n111 Bool) (n112 Bool) (n160 Bool) (n128 Bool) (n156 Bool)) Bool
    ((Start Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n111 n112 n160))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n128))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n156))))

(declare-var n111 Bool)
(declare-var n112 Bool)
(declare-var n160 Bool)
(declare-var n128 Bool)
(declare-var n156 Bool)
(constraint (= (origCir n111 n112 n160 n128 n156) (skel n111 n112 n160 n128 n156)))

(check-synth)

