(set-logic BV)

(define-fun origCir ((n72 Bool) (n79 Bool) (n94 Bool) (n87 Bool) (n69 Bool)) Bool
    (and (and (and n94 n87) (and n79 n72)) n69))
(synth-fun skel ((n72 Bool) (n79 Bool) (n94 Bool) (n87 Bool) (n69 Bool)) Bool
    ((Start Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1 n79 n94 n87))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0 n72 n69))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0)))))

(declare-var n72 Bool)
(declare-var n79 Bool)
(declare-var n94 Bool)
(declare-var n87 Bool)
(declare-var n69 Bool)
(constraint (= (origCir n72 n79 n94 n87 n69) (skel n72 n79 n94 n87 n69)))

(check-synth)

