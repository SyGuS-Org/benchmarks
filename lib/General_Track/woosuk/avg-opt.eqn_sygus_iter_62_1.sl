(set-logic BV)

(define-fun origCir ((n125 Bool) (n108 Bool) (n133 Bool) (n135 Bool) (n129 Bool) (n47 Bool)) Bool
    (not (and (and (not (and (and n135 n133) n129)) (xor n108 n125)) n47)))
(synth-fun skel ((n125 Bool) (n108 Bool) (n133 Bool) (n135 Bool) (n129 Bool) (n47 Bool)) Bool
    ((Start Bool) (depth7 Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth7))
    (depth7 Bool ((and depth6 depth6) (or depth6 depth6) (xor depth7 depth7) (not depth7) depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n108))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n133 n129 n47))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n135))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n125))))

(declare-var n125 Bool)
(declare-var n108 Bool)
(declare-var n133 Bool)
(declare-var n135 Bool)
(declare-var n129 Bool)
(declare-var n47 Bool)
(constraint (= (origCir n125 n108 n133 n135 n129 n47) (skel n125 n108 n133 n135 n129 n47)))

(check-synth)

