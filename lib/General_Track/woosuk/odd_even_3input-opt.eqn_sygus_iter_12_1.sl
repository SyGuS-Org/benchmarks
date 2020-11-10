(set-logic BV)

(define-fun origCir ((i_9 Bool) (n104 Bool) (n166 Bool) (n164 Bool)) Bool
    (and (xor n166 (and n104 i_9)) n164))
(synth-fun skel ((i_9 Bool) (n104 Bool) (n166 Bool) (n164 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n104 n166))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_9 n164))))

(declare-var i_9 Bool)
(declare-var n104 Bool)
(declare-var n166 Bool)
(declare-var n164 Bool)
(constraint (= (origCir i_9 n104 n166 n164) (skel i_9 n104 n166 n164)))

(check-synth)

