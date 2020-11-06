(set-logic BV)

(define-fun origCir ((n364 Bool) (n379 Bool) (n308 Bool) (n215 Bool) (n455 Bool) (i_31 Bool)) Bool
    (and (and (and n455 (xor (and n308 n215) (not (and n379 n364)))) (xor (and (not (xor (and n308 n215) (not (and n379 n364)))) (and n379 n364)) (not (and n379 n364)))) i_31))
(synth-fun skel ((n364 Bool) (n379 Bool) (n308 Bool) (n215 Bool) (n455 Bool) (i_31 Bool)) Bool
    ((Start Bool) (depth7 Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth7))
    (depth7 Bool ((and depth6 depth6) (or depth6 depth6) (xor depth7 depth7) (not depth7) depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n364 n379 n308 n215 n455))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) i_31))))

(declare-var n364 Bool)
(declare-var n379 Bool)
(declare-var n308 Bool)
(declare-var n215 Bool)
(declare-var n455 Bool)
(declare-var i_31 Bool)
(constraint (= (origCir n364 n379 n308 n215 n455 i_31) (skel n364 n379 n308 n215 n455 i_31)))

(check-synth)

