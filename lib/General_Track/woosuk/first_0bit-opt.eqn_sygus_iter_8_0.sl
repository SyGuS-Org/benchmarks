(set-logic BV)

(define-fun origCir ((n108 Bool) (n161 Bool) (n109 Bool) (n125 Bool)) Bool
    (and (xor (and n161 n109) n108) n125))
(synth-fun skel ((n108 Bool) (n161 Bool) (n109 Bool) (n125 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n161))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n108 n109 n125))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n108 Bool)
(declare-var n161 Bool)
(declare-var n109 Bool)
(declare-var n125 Bool)
(constraint (= (origCir n108 n161 n109 n125) (skel n108 n161 n109 n125)))

(check-synth)

