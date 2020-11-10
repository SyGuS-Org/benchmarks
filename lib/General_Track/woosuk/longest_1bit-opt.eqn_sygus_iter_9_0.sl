(set-logic BV)

(define-fun origCir ((n101 Bool) (n78 Bool) (n85 Bool) (n74 Bool)) Bool
    (and n101 (not (and (and n85 n78) n74))))
(synth-fun skel ((n101 Bool) (n78 Bool) (n85 Bool) (n74 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n101 n78 n85))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n74))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n101 Bool)
(declare-var n78 Bool)
(declare-var n85 Bool)
(declare-var n74 Bool)
(constraint (= (origCir n101 n78 n85 n74) (skel n101 n78 n85 n74)))

(check-synth)

