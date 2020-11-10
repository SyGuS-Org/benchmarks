(set-logic BV)

(define-fun origCir ((n162 Bool) (n205 Bool) (n250 Bool) (n247 Bool)) Bool
    (and (not (and n250 (and n205 n162))) n247))
(synth-fun skel ((n162 Bool) (n205 Bool) (n250 Bool) (n247 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n162 n250))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n205))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n247))))

(declare-var n162 Bool)
(declare-var n205 Bool)
(declare-var n250 Bool)
(declare-var n247 Bool)
(constraint (= (origCir n162 n205 n250 n247) (skel n162 n205 n250 n247)))

(check-synth)

