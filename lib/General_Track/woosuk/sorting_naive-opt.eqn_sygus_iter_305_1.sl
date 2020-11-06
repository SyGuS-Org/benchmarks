(set-logic BV)

(define-fun origCir ((n120 Bool) (n168 Bool) (n217 Bool) (n226 Bool)) Bool
    (and (and (xor (not n217) (xor n168 n120)) (not (xor (and (not n217) (xor n168 n120)) (and (not n168) (not n120))))) n226))
(synth-fun skel ((n120 Bool) (n168 Bool) (n217 Bool) (n226 Bool)) Bool
    ((Start Bool) (depth6 Bool) (depth5 Bool) (depth4 Bool) (depth3 Bool) (depth2 Bool) (depth1 Bool) (depth0 Bool))
    ((Start Bool (depth6))
    (depth6 Bool ((and depth5 depth5) (or depth5 depth5) (xor depth6 depth6) (not depth6) depth5))
    (depth5 Bool ((and depth4 depth4) (or depth4 depth4) (xor depth5 depth5) (not depth5) depth4))
    (depth4 Bool ((and depth3 depth3) (or depth3 depth3) (xor depth4 depth4) (not depth4) depth3 n120 n168 n217))
    (depth3 Bool ((and depth2 depth2) (or depth2 depth2) (xor depth3 depth3) (not depth3) depth2))
    (depth2 Bool ((and depth1 depth1) (or depth1 depth1) (xor depth2 depth2) (not depth2) depth1))
    (depth1 Bool ((and depth0 depth0) (or depth0 depth0) (xor depth1 depth1) (not depth1) depth0))
    (depth0 Bool (true false (xor depth0 depth0) (not depth0) n226))))

(declare-var n120 Bool)
(declare-var n168 Bool)
(declare-var n217 Bool)
(declare-var n226 Bool)
(constraint (= (origCir n120 n168 n217 n226) (skel n120 n168 n217 n226)))

(check-synth)

