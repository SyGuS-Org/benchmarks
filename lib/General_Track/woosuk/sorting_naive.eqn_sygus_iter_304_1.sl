(set-logic BV)

(define-fun origCir ((n218 Bool) (n220 Bool) (n168 Bool) (n441 Bool) (n225 Bool)) Bool
    (and (and n441 (xor (and n220 n168) (not n218))) n225))
(synth-fun skel ((n218 Bool) (n220 Bool) (n168 Bool) (n441 Bool) (n225 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n218))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n220 n168 n441))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n225))))

(declare-var n218 Bool)
(declare-var n220 Bool)
(declare-var n168 Bool)
(declare-var n441 Bool)
(declare-var n225 Bool)
(constraint (= (origCir n218 n220 n168 n441 n225) (skel n218 n220 n168 n441 n225)))

(check-synth)

