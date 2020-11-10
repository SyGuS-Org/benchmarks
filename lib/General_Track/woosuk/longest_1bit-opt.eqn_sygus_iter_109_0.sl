(set-logic BV)

(define-fun origCir ((n74 Bool) (n85 Bool) (n78 Bool) (n94 Bool) (n63 Bool)) Bool
    (and (and (not n94) (not (and (and n85 n78) n74))) (not n63)))
(synth-fun skel ((n74 Bool) (n85 Bool) (n78 Bool) (n94 Bool) (n63 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n94 n63))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n74 n85 n78))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n74 Bool)
(declare-var n85 Bool)
(declare-var n78 Bool)
(declare-var n94 Bool)
(declare-var n63 Bool)
(constraint (= (origCir n74 n85 n78 n94 n63) (skel n74 n85 n78 n94 n63)))

(check-synth)

