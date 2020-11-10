(set-logic BV)

(define-fun origCir ((n131 Bool) (n107 Bool) (n114 Bool) (n102 Bool) (n85 Bool)) Bool
    (and n131 (and (not (and n114 n107)) (and n102 n85))))
(synth-fun skel ((n131 Bool) (n107 Bool) (n114 Bool) (n102 Bool) (n85 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n114 n102 n85))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n131))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n107))))

(declare-var n131 Bool)
(declare-var n107 Bool)
(declare-var n114 Bool)
(declare-var n102 Bool)
(declare-var n85 Bool)
(constraint (= (origCir n131 n107 n114 n102 n85) (skel n131 n107 n114 n102 n85)))

(check-synth)

