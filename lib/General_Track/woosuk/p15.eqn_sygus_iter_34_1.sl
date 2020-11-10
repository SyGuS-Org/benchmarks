(set-logic BV)

(define-fun origCir ((n274 Bool) (n261 Bool) (n253 Bool) (n170 Bool)) Bool
    (and n274 (xor n261 (and n253 n170))))
(synth-fun skel ((n274 Bool) (n261 Bool) (n253 Bool) (n170 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4 n261 n170))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n253))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n274))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n274 Bool)
(declare-var n261 Bool)
(declare-var n253 Bool)
(declare-var n170 Bool)
(constraint (= (origCir n274 n261 n253 n170) (skel n274 n261 n253 n170)))

(check-synth)

