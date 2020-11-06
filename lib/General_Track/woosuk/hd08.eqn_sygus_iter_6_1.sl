(set-logic BV)

(define-fun origCir ((n253 Bool) (n48 Bool) (n182 Bool) (n177 Bool) (n85 Bool)) Bool
    (and n253 (and (and n182 n48) (and n177 n85))))
(synth-fun skel ((n253 Bool) (n48 Bool) (n182 Bool) (n177 Bool) (n85 Bool)) Bool
    ((Start Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n48 n177 n85))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n182))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n253))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n253 Bool)
(declare-var n48 Bool)
(declare-var n182 Bool)
(declare-var n177 Bool)
(declare-var n85 Bool)
(constraint (= (origCir n253 n48 n182 n177 n85) (skel n253 n48 n182 n177 n85)))

(check-synth)

