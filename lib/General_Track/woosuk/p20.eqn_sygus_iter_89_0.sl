(set-logic BV)

(define-fun origCir ((n144 Bool) (n183 Bool) (n178 Bool) (n194 Bool)) Bool
    (and (not (and (not (and n183 n178)) n144)) n194))
(synth-fun skel ((n144 Bool) (n183 Bool) (n178 Bool) (n194 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n183 n178))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n144 n194))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n144 Bool)
(declare-var n183 Bool)
(declare-var n178 Bool)
(declare-var n194 Bool)
(constraint (= (origCir n144 n183 n178 n194) (skel n144 n183 n178 n194)))

(check-synth)

