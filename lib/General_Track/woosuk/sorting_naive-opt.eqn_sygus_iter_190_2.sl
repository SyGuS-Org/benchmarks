(set-logic BV)

(define-fun origCir ((n273 Bool) (n313 Bool) (n216 Bool) (n192 Bool) (n322 Bool)) Bool
    (and (and (xor (xor n313 n273) (xor n216 n192)) (xor (and (xor n313 n273) (xor n216 n192)) (and (not n313) (not n273)))) n322))
(synth-fun skel ((n273 Bool) (n313 Bool) (n216 Bool) (n192 Bool) (n322 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n273 n313 n216))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2 n192))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n322))))

(declare-var n273 Bool)
(declare-var n313 Bool)
(declare-var n216 Bool)
(declare-var n192 Bool)
(declare-var n322 Bool)
(constraint (= (origCir n273 n313 n216 n192 n322) (skel n273 n313 n216 n192 n322)))

(check-synth)

