(set-logic BV)

(define-fun origCir ((n28 Bool) (n43 Bool) (n32 Bool) (n24 Bool)) Bool
    (and (and (and n43 n32) n28) n24))
(synth-fun skel ((n28 Bool) (n43 Bool) (n32 Bool) (n24 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n28 n43 n24))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n32))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n28 Bool)
(declare-var n43 Bool)
(declare-var n32 Bool)
(declare-var n24 Bool)
(constraint (= (origCir n28 n43 n32 n24) (skel n28 n43 n32 n24)))

(check-synth)

