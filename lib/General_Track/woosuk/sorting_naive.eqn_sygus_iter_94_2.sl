(set-logic BV)

(define-fun origCir ((n119 Bool) (n216 Bool) (n215 Bool) (n167 Bool) (n226 Bool) (n225 Bool)) Bool
    (and (and (not n226) (not (xor (and (not n215) (not n167)) (not (and (not n216) (not n119)))))) n225))
(synth-fun skel ((n119 Bool) (n216 Bool) (n215 Bool) (n167 Bool) (n226 Bool) (n225 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n119 n216 n215 n167 n226))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n225))))

(declare-var n119 Bool)
(declare-var n216 Bool)
(declare-var n215 Bool)
(declare-var n167 Bool)
(declare-var n226 Bool)
(declare-var n225 Bool)
(constraint (= (origCir n119 n216 n215 n167 n226 n225) (skel n119 n216 n215 n167 n226 n225)))

(check-synth)

