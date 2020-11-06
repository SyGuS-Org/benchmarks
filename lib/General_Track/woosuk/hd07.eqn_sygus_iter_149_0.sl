(set-logic BV)

(define-fun origCir ((n132 Bool) (n137 Bool) (n143 Bool) (i13 Bool)) Bool
    (and (not (and (and n137 n143) n132)) i13))
(synth-fun skel ((n132 Bool) (n137 Bool) (n143 Bool) (i13 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n132))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n137 n143))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i13))))

(declare-var n132 Bool)
(declare-var n137 Bool)
(declare-var n143 Bool)
(declare-var i13 Bool)
(constraint (= (origCir n132 n137 n143 i13) (skel n132 n137 n143 i13)))

(check-synth)

